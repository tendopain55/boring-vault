// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.21;

import {ERC20} from "@solmate/tokens/ERC20.sol";
import {RolesAuthority, Authority, Auth} from "@solmate/auth/authorities/RolesAuthority.sol";
import {MerkleTreeHelper} from "test/resources/MerkleTreeHelper/MerkleTreeHelper.sol";
import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";
import {
    LayerZeroTellerWithRateLimiting,
    CrossChainTellerWithGenericBridge,
    PairwiseRateLimiter
} from "src/base/Roles/CrossChain/Bridges/LayerZero/LayerZeroTellerWithRateLimiting.sol";
import {TellerWithMultiAssetSupport} from "src/base/Roles/TellerWithMultiAssetSupport.sol";
import {BoringVault} from "src/base/BoringVault.sol";

import {Test, stdStorage, StdStorage, stdError, console} from "@forge-std/Test.sol";

contract CreateTimelockTxTest is Test, MerkleTreeHelper {
    using stdStorage for StdStorage;

    TimelockController public timelock = TimelockController(payable(0x70a64840A353c58f63333570f53dba0948bEcE3d));
    RolesAuthority public rolesAuthority = RolesAuthority(0x6889E57BcA038C28520C0B047a75e567502ea5F6);
    LayerZeroTellerWithRateLimiting public teller =
        LayerZeroTellerWithRateLimiting(0x6Ee3aaCcf9f2321E49063C4F8da775DdBd407268);
    address public safe = 0xCEA8039076E35a825854c5C2f85659430b06ec96;
    address public eBTC = 0x657e8C867D8B37dCC18fA4Caead9C45EB088C642;
    address public LBTCv = 0x5401b8620E5FB570064CA9114fd1e135fd77D57c;
    address public solver = 0x989468982b08AEfA46E37CD0086142A86fa466D7;
    address public oldTeller = 0xe19a43B1b8af6CeE71749Af2332627338B3242D1;
    address public delayedWithdrawer = 0x75E3f26Ceff44258CE8cB451D7d2cC8966Ef3554;

    uint8 public constant MINTER_ROLE = 2;
    uint8 public constant BURNER_ROLE = 3;
    uint8 public constant OWNER_ROLE = 8;
    uint8 public constant MULTISIG_ROLE = 9;
    uint8 public constant STRATEGIST_MULTISIG_ROLE = 10;
    uint8 public constant SOLVER_ROLE = 12;

    ERC20 public LBTC;
    ERC20 public wBTC;
    ERC20 public cbBTC;

    function setUp() external {
        setSourceChainName("mainnet");
        // Setup forked environment.
        string memory rpcKey = "MAINNET_RPC_URL";
        uint256 blockNumber = 21374350;
        _startFork(rpcKey, blockNumber);

        LBTC = getERC20("mainnet", "LBTC");
        wBTC = getERC20("mainnet", "WBTC");
        cbBTC = getERC20("mainnet", "cbBTC");
    }

    function testProposeAndExecuteTimelock() external {
        uint256 actionCount = 64;
        address[] memory targets = new address[](actionCount);
        targets[0] = address(rolesAuthority);
        targets[1] = address(rolesAuthority);
        targets[2] = address(rolesAuthority);
        targets[3] = address(rolesAuthority);
        targets[4] = address(rolesAuthority);
        targets[5] = address(rolesAuthority);
        targets[6] = address(rolesAuthority);
        targets[7] = address(rolesAuthority);
        targets[8] = address(rolesAuthority);
        targets[9] = address(rolesAuthority);
        targets[10] = address(rolesAuthority);
        targets[11] = address(rolesAuthority);
        targets[12] = address(rolesAuthority);
        targets[13] = address(rolesAuthority);
        targets[14] = address(rolesAuthority);
        targets[15] = address(rolesAuthority);
        targets[16] = address(rolesAuthority);
        targets[17] = address(rolesAuthority);
        targets[18] = address(rolesAuthority);
        targets[19] = address(rolesAuthority);
        targets[20] = address(rolesAuthority);
        targets[21] = address(rolesAuthority);
        targets[22] = address(rolesAuthority);
        targets[23] = address(rolesAuthority);
        targets[24] = address(rolesAuthority);
        targets[25] = address(rolesAuthority);
        targets[26] = address(rolesAuthority);
        targets[27] = address(rolesAuthority);
        targets[28] = address(rolesAuthority);
        targets[29] = address(rolesAuthority);
        targets[30] = address(rolesAuthority);
        targets[31] = address(rolesAuthority);
        targets[32] = address(rolesAuthority);
        targets[33] = address(rolesAuthority);
        targets[34] = address(rolesAuthority);
        targets[35] = address(rolesAuthority);
        targets[36] = address(rolesAuthority);
        targets[37] = address(rolesAuthority);
        targets[38] = address(rolesAuthority);
        targets[39] = address(rolesAuthority);
        targets[40] = address(rolesAuthority);
        targets[41] = address(rolesAuthority);
        targets[42] = address(rolesAuthority);
        targets[43] = address(rolesAuthority);
        targets[44] = address(rolesAuthority);
        targets[45] = address(rolesAuthority);
        targets[46] = address(rolesAuthority);
        targets[47] = address(rolesAuthority);
        targets[48] = address(rolesAuthority);
        targets[49] = address(rolesAuthority);
        targets[50] = address(rolesAuthority);
        targets[51] = address(rolesAuthority);
        targets[52] = address(rolesAuthority);
        targets[53] = address(rolesAuthority);
        targets[54] = address(eBTC);
        targets[55] = address(teller);
        targets[56] = address(teller);
        targets[57] = address(teller);
        targets[58] = address(teller);
        targets[59] = address(teller);
        targets[60] = address(teller);
        targets[61] = address(teller);
        targets[62] = address(teller);
        targets[63] = address(rolesAuthority);
        uint256[] memory values = new uint256[](actionCount);
        bytes[] memory payloads = new bytes[](actionCount);
        uint256 i = 0;
        // Set role capabilities to true
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.addChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            MULTISIG_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.removeChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.allowMessagesFromChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.allowMessagesToChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            MULTISIG_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.stopMessagesFromChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            MULTISIG_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.stopMessagesToChain.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.setOutboundRateLimits.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.setInboundRateLimits.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            LayerZeroTellerWithRateLimiting.setChainGasLimit.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            MULTISIG_ROLE,
            teller,
            TellerWithMultiAssetSupport.pause.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            TellerWithMultiAssetSupport.unpause.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            TellerWithMultiAssetSupport.updateAssetData.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            teller,
            TellerWithMultiAssetSupport.setShareLockPeriod.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            SOLVER_ROLE,
            teller,
            TellerWithMultiAssetSupport.bulkDeposit.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            SOLVER_ROLE,
            teller,
            TellerWithMultiAssetSupport.bulkWithdraw.selector,
            true
        );

        // Add public functions
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setPublicCapability.selector,
            OWNER_ROLE,
            teller,
            TellerWithMultiAssetSupport.deposit.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setPublicCapability.selector,
            OWNER_ROLE,
            teller,
            TellerWithMultiAssetSupport.depositWithPermit.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setPublicCapability.selector,
            OWNER_ROLE,
            teller,
            CrossChainTellerWithGenericBridge.depositAndBridge.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setPublicCapability.selector,
            OWNER_ROLE,
            teller,
            CrossChainTellerWithGenericBridge.depositAndBridgeWithPermit.selector,
            true
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setPublicCapability.selector,
            OWNER_ROLE,
            teller,
            CrossChainTellerWithGenericBridge.bridge.selector,
            true
        );

        // Grant roles
        payloads[i++] = abi.encodeWithSelector(RolesAuthority.setUserRole.selector, LBTCv, SOLVER_ROLE, true); // TODO this is technically already done
        payloads[i++] = abi.encodeWithSelector(RolesAuthority.setUserRole.selector, teller, MINTER_ROLE, true);
        payloads[i++] = abi.encodeWithSelector(RolesAuthority.setUserRole.selector, teller, BURNER_ROLE, true);
        payloads[i++] = abi.encodeWithSelector(RolesAuthority.setUserRole.selector, solver, SOLVER_ROLE, true);

        // Set role capabilities to false
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, oldTeller, Auth.setAuthority.selector, false
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, oldTeller, Auth.transferOwnership.selector, false
        );
        // Remove addAsset
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, oldTeller, bytes4(0x298410e5), false
        );
        // Remove removeAsset
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, oldTeller, bytes4(0x4a5e42b1), false
        );
        // Remove setShareLockPeriod
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, oldTeller, bytes4(0x12056e2d), false
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, delayedWithdrawer, Auth.setAuthority.selector, false
        );
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            OWNER_ROLE,
            delayedWithdrawer,
            Auth.transferOwnership.selector,
            false
        );
        // Remove changeWithdrawFee
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, delayedWithdrawer, bytes4(0x13cc759e), false
        );
        // Remove setupWithdrawAsset
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, delayedWithdrawer, bytes4(0x582f2eb6), false
        );
        // Remove changeMaxLoss
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, OWNER_ROLE, delayedWithdrawer, bytes4(0xb16944de), false
        );
        // Remove pause
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, oldTeller, bytes4(0x8456cb59), false
        );
        // Remove unpause
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, oldTeller, bytes4(0x3f4ba83a), false
        );
        // Remove pause
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0x8456cb59), false
        );
        // Remove unpause
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0x3f4ba83a), false
        );
        // Remove stopWithdrawsInAsset
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0x692be6f1), false
        );
        // Remove changeWithdrawDelay
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0xd82bf6d6), false
        );
        // Remove changeCompletionWindow
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0xbafc3dd6), false
        );
        // Remove cancelUserWithdraw
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0x2f13a2f1), false
        );
        // Remove completeUserWithdraw
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, MULTISIG_ROLE, delayedWithdrawer, bytes4(0x7e6bf61f), false
        );
        // Remove refundDeposit
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, STRATEGIST_MULTISIG_ROLE, oldTeller, bytes4(0x46b563f4), false
        );
        // Remove completeUserWithdraw
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            STRATEGIST_MULTISIG_ROLE,
            delayedWithdrawer,
            bytes4(0x7e6bf61f),
            false
        );
        // Remove cancelUserWithdraw
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            STRATEGIST_MULTISIG_ROLE,
            delayedWithdrawer,
            bytes4(0x2f13a2f1),
            false
        );
        // Remove setFeeAddress
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector,
            STRATEGIST_MULTISIG_ROLE,
            delayedWithdrawer,
            bytes4(0x8705fcd4),
            false
        );
        // Remove bulkDeposit
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, SOLVER_ROLE, oldTeller, bytes4(0x9d574420), false
        );
        // Remove bulkWithdraw
        payloads[i++] = abi.encodeWithSelector(
            RolesAuthority.setRoleCapability.selector, SOLVER_ROLE, oldTeller, bytes4(0x3e64ce99), false
        );
        // Remove addAsset
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setRoleCapability.selector, 14, oldTeller, bytes4(0x298410e5), false);
        // Remove removeAsset
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setRoleCapability.selector, 15, oldTeller, bytes4(0x4a5e42b1), false);
        // Remove bulkDeposit
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setRoleCapability.selector, 100, oldTeller, bytes4(0x9d574420), false);
        // Remove public capabilities, deposit and depositWithPermit
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setPublicCapability.selector, oldTeller, bytes4(0x0efe6a8b), false);
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setPublicCapability.selector, oldTeller, bytes4(0x3d935d9e), false);

        // Set before transfer hook
        payloads[i++] = abi.encodeWithSelector(BoringVault.setBeforeTransferHook.selector, teller);

        // Add Layer Zero chains
        payloads[i++] = abi.encodeWithSelector(
            LayerZeroTellerWithRateLimiting.addChain.selector, layerZeroBaseEndpointId, true, true, teller, 1_000_000
        );
        payloads[i++] = abi.encodeWithSelector(
            LayerZeroTellerWithRateLimiting.addChain.selector,
            layerZeroArbitrumEndpointId,
            true,
            true,
            teller,
            1_000_000
        );
        payloads[i++] = abi.encodeWithSelector(
            LayerZeroTellerWithRateLimiting.addChain.selector, layerZeroCornEndpointId, true, true, teller, 1_000_000
        );
        // Add Teller assets cbBTC, wBTC(40 bps premium), LBTC
        payloads[i++] =
            abi.encodeWithSelector(TellerWithMultiAssetSupport.updateAssetData.selector, address(cbBTC), true, true, 0);
        payloads[i++] =
            abi.encodeWithSelector(TellerWithMultiAssetSupport.updateAssetData.selector, address(wBTC), true, true, 40);
        payloads[i++] =
            abi.encodeWithSelector(TellerWithMultiAssetSupport.updateAssetData.selector, address(LBTC), true, true, 0);

        // Add rate limits
        PairwiseRateLimiter.RateLimitConfig[] memory rateLimitConfigs = new PairwiseRateLimiter.RateLimitConfig[](3);
        rateLimitConfigs[0] =
            PairwiseRateLimiter.RateLimitConfig({peerEid: layerZeroBaseEndpointId, limit: 20e8, window: 4 hours});
        rateLimitConfigs[1] =
            PairwiseRateLimiter.RateLimitConfig({peerEid: layerZeroArbitrumEndpointId, limit: 20e8, window: 4 hours});
        rateLimitConfigs[2] =
            PairwiseRateLimiter.RateLimitConfig({peerEid: layerZeroCornEndpointId, limit: 20e8, window: 4 hours});
        payloads[i++] =
            abi.encodeWithSelector(LayerZeroTellerWithRateLimiting.setOutboundRateLimits.selector, rateLimitConfigs);
        payloads[i++] =
            abi.encodeWithSelector(LayerZeroTellerWithRateLimiting.setInboundRateLimits.selector, rateLimitConfigs);

        // Revoke burner role from delayed withdrawer
        payloads[i++] =
            abi.encodeWithSelector(RolesAuthority.setUserRole.selector, BURNER_ROLE, delayedWithdrawer, false);

        bytes32 predecessor = bytes32(0);
        bytes32 salt = bytes32(0);
        uint256 delay = 300;

        vm.prank(safe);
        timelock.scheduleBatch(targets, values, payloads, predecessor, salt, delay);

        skip(delay);

        // This will fail until previous gnosis tx goes through.
        // vm.prank(safe);
        // timelock.executeBatch(targets, values, payloads, predecessor, salt);

        _saveTimelockTx("ebtc-timelock-tx-1.json", targets, values, payloads, predecessor, salt, delay);
    }

    // ========================================= HELPER FUNCTIONS =========================================

    function _startFork(string memory rpcKey, uint256 blockNumber) internal returns (uint256 forkId) {
        forkId = vm.createFork(vm.envString(rpcKey), blockNumber);
        vm.selectFork(forkId);
    }

    function _saveTimelockTx(
        string memory outputFileName,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory payloads,
        bytes32 predecessor,
        bytes32 salt,
        uint256 delay
    ) internal {
        // Save deployment details.
        string memory filePath = string.concat("./TimelockTxs/", outputFileName);
        if (vm.exists(filePath)) {
            // Need to delete it
            vm.removeFile(filePath);
        }

        string memory coreOutput;
        string memory finalJson;

        string memory coreContracts = "core contracts key";
        vm.serializeAddress(coreContracts, "targets", targets);
        vm.serializeBytes(coreContracts, "payloads", payloads);
        vm.serializeBytes32(coreContracts, "predecessor", predecessor);
        vm.serializeBytes32(coreContracts, "salt", salt);
        vm.serializeUint(coreContracts, "delay", delay);
        bytes32 id = timelock.hashOperationBatch(targets, values, payloads, predecessor, salt);
        vm.serializeBytes32(coreContracts, "id", id);
        coreOutput = vm.serializeUint(coreContracts, "values", values);

        finalJson = vm.serializeString(finalJson, "arguments", coreOutput);

        vm.writeJson(finalJson, filePath);
    }
}
