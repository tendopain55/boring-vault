// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import {MainnetAddresses} from "test/resources/MainnetAddresses.sol";
import {BoringVault} from "src/base/BoringVault.sol";
import {ManagerWithMerkleVerification} from "src/base/Roles/ManagerWithMerkleVerification.sol";
import {SafeTransferLib} from "@solmate/utils/SafeTransferLib.sol";
import {FixedPointMathLib} from "@solmate/utils/FixedPointMathLib.sol";
import {ERC20} from "@solmate/tokens/ERC20.sol";
import {ERC4626} from "@solmate/tokens/ERC4626.sol";
import {BaseDecoderAndSanitizer} from "src/base/DecodersAndSanitizers/BaseDecoderAndSanitizer.sol";
import {ResolvDecoderAndSanitizer} from "src/base/DecodersAndSanitizers/Protocols/ResolvDecoderAndSanitizer.sol";
import {DecoderCustomTypes} from "src/interfaces/DecoderCustomTypes.sol";
import {RolesAuthority, Authority} from "@solmate/auth/authorities/RolesAuthority.sol";
import {MerkleTreeHelper} from "test/resources/MerkleTreeHelper/MerkleTreeHelper.sol";

import {Test, stdStorage, StdStorage, stdError, console} from "@forge-std/Test.sol";

contract ResolvIntegrationTest is Test, MerkleTreeHelper {
    using SafeTransferLib for ERC20;
    using FixedPointMathLib for uint256;
    using stdStorage for StdStorage;

    ManagerWithMerkleVerification public manager;
    BoringVault public boringVault;
    address public rawDataDecoderAndSanitizer;
    RolesAuthority public rolesAuthority;

    uint8 public constant MANAGER_ROLE = 1;
    uint8 public constant STRATEGIST_ROLE = 2;
    uint8 public constant MANGER_INTERNAL_ROLE = 3;
    uint8 public constant ADMIN_ROLE = 4;
    uint8 public constant BORING_VAULT_ROLE = 5;
    uint8 public constant BALANCER_VAULT_ROLE = 6;

    function setUp() external {
        setSourceChainName("mainnet");
        // Setup forked environment.
        string memory rpcKey = "MAINNET_RPC_URL";
        uint256 blockNumber = 21840275;

        _startFork(rpcKey, blockNumber);

        boringVault = new BoringVault(address(this), "Boring Vault", "BV", 18);

        manager =
            new ManagerWithMerkleVerification(address(this), address(boringVault), getAddress(sourceChain, "vault"));

        rawDataDecoderAndSanitizer = address(new FullResolvDecoderAndSanitizer());

        setAddress(false, sourceChain, "boringVault", address(boringVault));
        setAddress(false, sourceChain, "rawDataDecoderAndSanitizer", rawDataDecoderAndSanitizer);
        setAddress(false, sourceChain, "manager", address(manager));
        setAddress(false, sourceChain, "managerAddress", address(manager));
        setAddress(false, sourceChain, "accountantAddress", address(1));

        rolesAuthority = new RolesAuthority(address(this), Authority(address(0)));
        boringVault.setAuthority(rolesAuthority);
        manager.setAuthority(rolesAuthority);

        // Setup roles authority.
        rolesAuthority.setRoleCapability(
            MANAGER_ROLE,
            address(boringVault),
            bytes4(keccak256(abi.encodePacked("manage(address,bytes,uint256)"))),
            true
        );
        rolesAuthority.setRoleCapability(
            MANAGER_ROLE,
            address(boringVault),
            bytes4(keccak256(abi.encodePacked("manage(address[],bytes[],uint256[])"))),
            true
        );

        rolesAuthority.setRoleCapability(
            STRATEGIST_ROLE,
            address(manager),
            ManagerWithMerkleVerification.manageVaultWithMerkleVerification.selector,
            true
        );
        rolesAuthority.setRoleCapability(
            MANGER_INTERNAL_ROLE,
            address(manager),
            ManagerWithMerkleVerification.manageVaultWithMerkleVerification.selector,
            true
        );
        rolesAuthority.setRoleCapability(
            ADMIN_ROLE, address(manager), ManagerWithMerkleVerification.setManageRoot.selector, true
        );
        rolesAuthority.setRoleCapability(
            BORING_VAULT_ROLE, address(manager), ManagerWithMerkleVerification.flashLoan.selector, true
        );
        rolesAuthority.setRoleCapability(
            BALANCER_VAULT_ROLE, address(manager), ManagerWithMerkleVerification.receiveFlashLoan.selector, true
        );

        // Grant roles
        rolesAuthority.setUserRole(address(this), STRATEGIST_ROLE, true);
        rolesAuthority.setUserRole(address(manager), MANGER_INTERNAL_ROLE, true);
        rolesAuthority.setUserRole(address(this), ADMIN_ROLE, true);
        rolesAuthority.setUserRole(address(manager), MANAGER_ROLE, true);
        rolesAuthority.setUserRole(address(boringVault), BORING_VAULT_ROLE, true);
        rolesAuthority.setUserRole(getAddress(sourceChain, "vault"), BALANCER_VAULT_ROLE, true);

        // Allow the boring vault to receive ETH.
        rolesAuthority.setPublicCapability(address(boringVault), bytes4(0), true);
    }

    function testResolvIntegration() external {
        vm.prank(0xD6889F307BE1b83Bb355d5DA7d4478FB0d2Af547);
        IAddressesWhitelist(0x5943026E21E3936538620ba27e01525bBA311255).addAccount(address(boringVault));
        deal(getAddress(sourceChain, "USDC"), address(boringVault), 100_000e6);
        deal(getAddress(sourceChain, "USDT"), address(boringVault), 100_000e6);
        deal(getAddress(sourceChain, "USR"), address(boringVault), 100_000e18);
        //deal(getAddress(sourceChain, "stUSR"), address(boringVault), 100_000e18); deal doesnt work well for this token
        vm.prank(0x00B8dF76c223eb4b05123389330b4afD157152b8);
        IStUSR(getAddress(sourceChain,"stUSR")).transferShares(address(boringVault), 100_000e18);
        deal(getAddress(sourceChain, "wstUSR"), address(boringVault), 100_000e18);

        ManageLeaf[] memory leafs = new ManageLeaf[](16);
        _addAllResolvLeafs(leafs);

        //string memory filePath = "./TestTEST.json";

        bytes32[][] memory manageTree = _generateMerkleTree(leafs);

        //_generateLeafs(filePath, leafs, manageTree[manageTree.length - 1][0], manageTree);

        manager.setManageRoot(address(this), manageTree[manageTree.length - 1][0]);

        ManageLeaf[] memory manageLeafs = new ManageLeaf[](15);
        manageLeafs[0] = leafs[0]; //approve USDC
        manageLeafs[1] = leafs[1]; //approve USDT
        manageLeafs[2] = leafs[2]; //approve USR
        manageLeafs[3] = leafs[3]; //requestMint USDC -> USR
        manageLeafs[4] = leafs[4]; //requestBurn USR -> USDC
        manageLeafs[5] = leafs[5]; //requestMint USDT -> USR
        manageLeafs[6] = leafs[6]; //requestBurn USR -> USDT
        manageLeafs[7] = leafs[7]; //approve USR
        manageLeafs[8] = leafs[8]; //approve stUSR
        manageLeafs[9] = leafs[9]; //deposit USR -> stUSR
        manageLeafs[10] = leafs[10]; //withdraw stUSR -> USR
        manageLeafs[11] = leafs[11]; //approve stUSR
        manageLeafs[12] = leafs[12]; //approve wstUSR
        manageLeafs[13] = leafs[13]; //wrap stUSR -> wstUSR
        manageLeafs[14] = leafs[14]; //unwrap wstUSR -> stUSR

        (bytes32[][] memory manageProofs) = _getProofsUsingTree(manageLeafs, manageTree);

        address[] memory targets = new address[](15);
        targets[0] = getAddress(sourceChain, "USDC"); //approve UsrExternalRequestsManager
        targets[1] = getAddress(sourceChain, "USDT"); //approve UsrExternalRequestsManager
        targets[2] = getAddress(sourceChain, "USR"); //approve UsrExternalRequestsManager
        targets[3] = getAddress(sourceChain, "UsrExternalRequestsManager"); //swap USDC to USR
        targets[4] = getAddress(sourceChain, "UsrExternalRequestsManager"); //swap USR to USDC
        targets[5] = getAddress(sourceChain, "UsrExternalRequestsManager"); //swap USDT to USR
        targets[6] = getAddress(sourceChain, "UsrExternalRequestsManager"); //swap USR to USDT
        targets[7] = getAddress(sourceChain, "USR"); //approve
        targets[8] = getAddress(sourceChain, "stUSR"); //approve
        targets[9] = getAddress(sourceChain, "stUSR"); //convert USR to stUSR
        targets[10] = getAddress(sourceChain, "stUSR"); //convert stUSR to USR
        targets[11] = getAddress(sourceChain, "stUSR"); //approve
        targets[12] = getAddress(sourceChain, "wstUSR"); //approve
        targets[13] = getAddress(sourceChain, "wstUSR"); //wrap stUSR to wstUSR
        targets[14] = getAddress(sourceChain, "wstUSR"); //unwrap wstUSR to stUSR

        bytes[] memory targetData = new bytes[](15);
        targetData[0] =
            abi.encodeWithSelector(ERC20.approve.selector, getAddress(sourceChain, "UsrExternalRequestsManager"), type(uint256).max);
        targetData[1] =
            abi.encodeWithSelector(ERC20.approve.selector, getAddress(sourceChain, "UsrExternalRequestsManager"), type(uint256).max);
        targetData[2] =
            abi.encodeWithSelector(ERC20.approve.selector, getAddress(sourceChain, "UsrExternalRequestsManager"), type(uint256).max);
        targetData[3] =
            abi.encodeWithSignature("requestMint(address,uint256,uint256)", getAddress(sourceChain, "USDC"), 100e6, 99e18);
        targetData[4] =
            abi.encodeWithSignature("requestBurn(uint256,address,uint256)", 100e18 ,getAddress(sourceChain, "USDC"), 99e6);
        targetData[5] =
            abi.encodeWithSignature("requestMint(address,uint256,uint256)", getAddress(sourceChain, "USDT"), 100e6, 99e18);
        targetData[6] =
            abi.encodeWithSignature("requestBurn(uint256,address,uint256)", 100e18, getAddress(sourceChain, "USDT"), 99e6);
        targetData[7] = abi.encodeWithSignature(
            "approve(address,uint256)", getAddress(sourceChain, "stUSR"), type(uint256).max
        );
        targetData[8] = abi.encodeWithSignature(
            "approve(address,uint256)", getAddress(sourceChain, "stUSR"), type(uint256).max
        );
        targetData[9] =
            abi.encodeWithSignature("deposit(uint256)", 100e18);
        targetData[10] =
            abi.encodeWithSignature("withdraw(uint256)", 100e18);
        targetData[11] = abi.encodeWithSignature(
            "approve(address,uint256)", getAddress(sourceChain, "wstUSR"), type(uint256).max
        );
        targetData[12] = abi.encodeWithSignature(
            "approve(address,uint256)", getAddress(sourceChain, "wstUSR"), type(uint256).max
        );
        targetData[13] =
            abi.encodeWithSignature("wrap(uint256)", 100e18);
        targetData[14] =
            abi.encodeWithSignature("unwrap(uint256)", 100e18);

        uint256[] memory values = new uint256[](15);

        address[] memory decodersAndSanitizers = new address[](15);
        for (uint256 i = 0; i < decodersAndSanitizers.length; i++) {
            decodersAndSanitizers[i] = rawDataDecoderAndSanitizer;
        }

        manager.manageVaultWithMerkleVerification(manageProofs, decodersAndSanitizers, targets, targetData, values);
    }

    // ========================================= HELPER FUNCTIONS =========================================

    function _startFork(string memory rpcKey, uint256 blockNumber) internal returns (uint256 forkId) {
        forkId = vm.createFork(vm.envString(rpcKey), blockNumber);
        vm.selectFork(forkId);
    }
}

contract FullResolvDecoderAndSanitizer is ResolvDecoderAndSanitizer {}

interface IAddressesWhitelist {
    function addAccount(address _account) external;
}

interface IStUSR {
    function transferShares(address _to, uint256 _shares) external;
}
