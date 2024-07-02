// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.21;

import {ERC20} from "@solmate/tokens/ERC20.sol";

contract MainnetAddresses {
    // Liquid Ecosystem
    address public deployerAddress = 0x5F2F11ad8656439d5C14d9B351f8b09cDaC2A02d;
    address public dev0Address = 0x0463E60C7cE10e57911AB7bD1667eaa21de3e79b;
    address public dev1Address = 0x2322ba43eFF1542b6A7bAeD35e66099Ea0d12Bd1;
    address public liquidV1PriceRouter = 0x693799805B502264f9365440B93C113D86a4fFF5;
    address public liquidPayoutAddress = 0xA9962a5BfBea6918E958DeE0647E99fD7863b95A;
    address public liquidMultisig = 0xCEA8039076E35a825854c5C2f85659430b06ec96;

    // DeFi Ecosystem
    address public ETH = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;
    address public uniV3Router = 0xE592427A0AEce92De3Edee1F18E0157C05861564;
    address public uniV2Router = 0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D;

    // ERC20s
    ERC20 public USDC = ERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
    ERC20 public WETH = ERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    ERC20 public WBTC = ERC20(0x2260FAC5E5542a773Aa44fBCfeDf7C193bc2C599);
    ERC20 public USDT = ERC20(0xdAC17F958D2ee523a2206206994597C13D831ec7);
    ERC20 public TUSD = ERC20(0x0000000000085d4780B73119b644AE5ecd22b376);
    ERC20 public DAI = ERC20(0x6B175474E89094C44Da98b954EedeAC495271d0F);
    ERC20 public WSTETH = ERC20(0x7f39C581F595B53c5cb19bD0b3f8dA6c935E2Ca0);
    ERC20 public STETH = ERC20(0xae7ab96520DE3A18E5e111B5EaAb095312D7fE84);
    ERC20 public FRAX = ERC20(0x853d955aCEf822Db058eb8505911ED77F175b99e);
    ERC20 public BAL = ERC20(0xba100000625a3754423978a60c9317c58a424e3D);
    ERC20 public COMP = ERC20(0xc00e94Cb662C3520282E6f5717214004A7f26888);
    ERC20 public LINK = ERC20(0x514910771AF9Ca656af840dff83E8264EcF986CA);
    ERC20 public rETH = ERC20(0xae78736Cd615f374D3085123A210448E74Fc6393);
    ERC20 public RETH = ERC20(0xae78736Cd615f374D3085123A210448E74Fc6393);
    ERC20 public cbETH = ERC20(0xBe9895146f7AF43049ca1c1AE358B0541Ea49704);
    ERC20 public RPL = ERC20(0xD33526068D116cE69F19A9ee46F0bd304F21A51f);
    ERC20 public BOND = ERC20(0x0391D2021f89DC339F60Fff84546EA23E337750f);
    ERC20 public SWETH = ERC20(0xf951E335afb289353dc249e82926178EaC7DEd78);
    ERC20 public AURA = ERC20(0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF);
    ERC20 public GHO = ERC20(0x40D16FC0246aD3160Ccc09B8D0D3A2cD28aE6C2f);
    ERC20 public LUSD = ERC20(0x5f98805A4E8be255a32880FDeC7F6728C6568bA0);
    ERC20 public OHM = ERC20(0x64aa3364F17a4D01c6f1751Fd97C2BD3D7e7f1D5);
    ERC20 public MKR = ERC20(0x9f8F72aA9304c8B593d555F12eF6589cC3A579A2);
    ERC20 public APE = ERC20(0x4d224452801ACEd8B2F0aebE155379bb5D594381);
    ERC20 public UNI = ERC20(0x1f9840a85d5aF5bf1D1762F925BDADdC4201F984);
    ERC20 public CRV = ERC20(0xD533a949740bb3306d119CC777fa900bA034cd52);
    ERC20 public CVX = ERC20(0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B);
    ERC20 public FRXETH = ERC20(0x5E8422345238F34275888049021821E8E08CAa1f);
    ERC20 public CRVUSD = ERC20(0xf939E0A03FB07F59A73314E73794Be0E57ac1b4E);
    ERC20 public OETH = ERC20(0x856c4Efb76C1D1AE02e20CEB03A2A6a08b0b8dC3);
    ERC20 public MKUSD = ERC20(0x4591DBfF62656E7859Afe5e45f6f47D3669fBB28);
    ERC20 public YETH = ERC20(0x1BED97CBC3c24A4fb5C069C6E311a967386131f7);
    ERC20 public ETHX = ERC20(0xA35b1B31Ce002FBF2058D22F30f95D405200A15b);
    ERC20 public weETH = ERC20(0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee);
    ERC20 public WEETH = ERC20(0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee);
    ERC20 public EETH = ERC20(0x35fA164735182de50811E8e2E824cFb9B6118ac2);
    ERC20 public EZETH = ERC20(0xbf5495Efe5DB9ce00f80364C8B423567e58d2110);
    ERC20 public RSETH = ERC20(0xA1290d69c65A6Fe4DF752f95823fae25cB99e5A7);
    ERC20 public OSETH = ERC20(0xf1C9acDc66974dFB6dEcB12aA385b9cD01190E38);
    ERC20 public RSWETH = ERC20(0xFAe103DC9cf190eD75350761e95403b7b8aFa6c0);
    ERC20 public PENDLE = ERC20(0x808507121B80c02388fAd14726482e061B8da827);
    ERC20 public SUSDE = ERC20(0x9D39A5DE30e57443BfF2A8307A4256c8797A3497);
    ERC20 public USDE = ERC20(0x4c9EDD5852cd905f086C759E8383e09bff1E68B3);
    ERC20 public GEAR = ERC20(0xBa3335588D9403515223F109EdC4eB7269a9Ab5D);
    ERC20 public SDAI = ERC20(0x83F20F44975D03b1b09e64809B757c47f942BEeA);
    ERC20 public PYUSD = ERC20(0x6c3ea9036406852006290770BEdFcAbA0e23A0e8);
    ERC20 public METH = ERC20(0xd5F7838F5C461fefF7FE49ea5ebaF7728bB0ADfa);
    ERC20 public TBTC = ERC20(0x18084fbA666a33d37592fA2633fD49a74DD93a88);
    ERC20 public INST = ERC20(0x6f40d4A6237C257fff2dB00FA0510DeEECd303eb);
    ERC20 public LBTC = ERC20(0x8236a87084f8B84306f72007F36F2618A5634494);
    ERC20 public RSR = ERC20(0x320623b8E4fF03373931769A31Fc52A4E78B5d70);
    ERC20 public SFRXETH = ERC20(0xac3E018457B222d93114458476f3E3416Abbe38F);
    ERC20 public WBETH = ERC20(0xa2E3356610840701BDf5611a53974510Ae27E2e1);
    ERC20 public UNIETH = ERC20(0xF1376bceF0f78459C0Ed0ba5ddce976F1ddF51F4);

    // Rate providers
    address public WEETH_RATE_PROVIDER = 0xCd5fE23C85820F7B72D0926FC9b05b43E359b7ee;
    address public ETHX_RATE_PROVIDER = 0xAAE054B9b822554dd1D9d1F48f892B4585D3bbf0;
    address public UNIETH_RATE_PROVIDER = 0x2c3b8c5e98A6e89AAAF21Deebf5FF9d08c4A9FF7;

    // Chainlink Datafeeds
    address public WETH_USD_FEED = 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419;
    address public USDC_USD_FEED = 0x8fFfFfd4AfB6115b954Bd326cbe7B4BA576818f6;
    address public WBTC_USD_FEED = 0xF4030086522a5bEEa4988F8cA5B36dbC97BeE88c;
    address public TUSD_USD_FEED = 0xec746eCF986E2927Abd291a2A1716c940100f8Ba;
    address public STETH_USD_FEED = 0xCfE54B5cD566aB89272946F602D76Ea879CAb4a8;
    address public DAI_USD_FEED = 0xAed0c38402a5d19df6E4c03F4E2DceD6e29c1ee9;
    address public USDT_USD_FEED = 0x3E7d1eAB13ad0104d2750B8863b489D65364e32D;
    address public COMP_USD_FEED = 0xdbd020CAeF83eFd542f4De03e3cF0C28A4428bd5;
    address public fastGasFeed = 0x169E633A2D1E6c10dD91238Ba11c4A708dfEF37C;
    address public FRAX_USD_FEED = 0xB9E1E3A9feFf48998E45Fa90847ed4D467E8BcfD;
    address public RETH_ETH_FEED = 0x536218f9E9Eb48863970252233c8F271f554C2d0;
    address public BOND_ETH_FEED = 0xdd22A54e05410D8d1007c38b5c7A3eD74b855281;
    address public CBETH_ETH_FEED = 0xF017fcB346A1885194689bA23Eff2fE6fA5C483b;
    address public STETH_ETH_FEED = 0x86392dC19c0b719886221c78AB11eb8Cf5c52812;
    address public BAL_USD_FEED = 0xdF2917806E30300537aEB49A7663062F4d1F2b5F;
    address public GHO_USD_FEED = 0x3f12643D3f6f874d39C2a4c9f2Cd6f2DbAC877FC;
    address public LUSD_USD_FEED = 0x3D7aE7E594f2f2091Ad8798313450130d0Aba3a0;
    address public OHM_ETH_FEED = 0x9a72298ae3886221820B1c878d12D872087D3a23;
    address public MKR_USD_FEED = 0xec1D1B3b0443256cc3860e24a46F108e699484Aa;
    address public UNI_ETH_FEED = 0xD6aA3D25116d8dA79Ea0246c4826EB951872e02e;
    address public APE_USD_FEED = 0xD10aBbC76679a20055E167BB80A24ac851b37056;
    address public CRV_USD_FEED = 0xCd627aA160A6fA45Eb793D19Ef54f5062F20f33f;
    address public CVX_USD_FEED = 0xd962fC30A72A84cE50161031391756Bf2876Af5D;
    address public CVX_ETH_FEED = 0xC9CbF687f43176B302F03f5e58470b77D07c61c6;
    address public CRVUSD_USD_FEED = 0xEEf0C605546958c1f899b6fB336C20671f9cD49F;
    address public LINK_USD_FEED = 0x2c1d072e956AFFC0D435Cb7AC38EF18d24d9127c;

    // Aave V2 Tokens
    ERC20 public aV2WETH = ERC20(0x030bA81f1c18d280636F32af80b9AAd02Cf0854e);
    ERC20 public aV2USDC = ERC20(0xBcca60bB61934080951369a648Fb03DF4F96263C);
    ERC20 public dV2USDC = ERC20(0x619beb58998eD2278e08620f97007e1116D5D25b);
    ERC20 public dV2WETH = ERC20(0xF63B34710400CAd3e044cFfDcAb00a0f32E33eCf);
    ERC20 public aV2WBTC = ERC20(0x9ff58f4fFB29fA2266Ab25e75e2A8b3503311656);
    ERC20 public aV2TUSD = ERC20(0x101cc05f4A51C0319f570d5E146a8C625198e636);
    ERC20 public aV2STETH = ERC20(0x1982b2F5814301d4e9a8b0201555376e62F82428);
    ERC20 public aV2DAI = ERC20(0x028171bCA77440897B824Ca71D1c56caC55b68A3);
    ERC20 public dV2DAI = ERC20(0x6C3c78838c761c6Ac7bE9F59fe808ea2A6E4379d);
    ERC20 public aV2USDT = ERC20(0x3Ed3B47Dd13EC9a98b44e6204A523E766B225811);
    ERC20 public dV2USDT = ERC20(0x531842cEbbdD378f8ee36D171d6cC9C4fcf475Ec);

    // Aave V3 Tokens
    ERC20 public aV3WETH = ERC20(0x4d5F47FA6A74757f35C14fD3a6Ef8E3C9BC514E8);
    ERC20 public aV3USDC = ERC20(0x98C23E9d8f34FEFb1B7BD6a91B7FF122F4e16F5c);
    ERC20 public dV3USDC = ERC20(0x72E95b8931767C79bA4EeE721354d6E99a61D004);
    ERC20 public aV3DAI = ERC20(0x018008bfb33d285247A21d44E50697654f754e63);
    ERC20 public dV3DAI = ERC20(0xcF8d0c70c850859266f5C338b38F9D663181C314);
    ERC20 public dV3WETH = ERC20(0xeA51d7853EEFb32b6ee06b1C12E6dcCA88Be0fFE);
    ERC20 public aV3WBTC = ERC20(0x5Ee5bf7ae06D1Be5997A1A72006FE6C607eC6DE8);
    ERC20 public aV3USDT = ERC20(0x23878914EFE38d27C4D67Ab83ed1b93A74D4086a);
    ERC20 public dV3USDT = ERC20(0x6df1C1E379bC5a00a7b4C6e67A203333772f45A8);
    ERC20 public aV3sDAI = ERC20(0x4C612E3B15b96Ff9A6faED838F8d07d479a8dD4c);
    ERC20 public aV3CrvUsd = ERC20(0xb82fa9f31612989525992FCfBB09AB22Eff5c85A);
    ERC20 public dV3CrvUsd = ERC20(0x028f7886F3e937f8479efaD64f31B3fE1119857a);
    ERC20 public aV3WeETH = ERC20(0xBdfa7b7893081B35Fb54027489e2Bc7A38275129);

    // Balancer V2 Addresses
    ERC20 public BB_A_USD = ERC20(0xfeBb0bbf162E64fb9D0dfe186E517d84C395f016);
    ERC20 public BB_A_USD_V3 = ERC20(0xc443C15033FCB6Cf72cC24f1BDA0Db070DdD9786);
    ERC20 public vanillaUsdcDaiUsdt = ERC20(0x79c58f70905F734641735BC61e45c19dD9Ad60bC);
    ERC20 public BB_A_WETH = ERC20(0x60D604890feaa0b5460B28A424407c24fe89374a);
    ERC20 public wstETH_bbaWETH = ERC20(0xE0fCBf4d98F0aD982DB260f86cf28b49845403C5);
    ERC20 public new_wstETH_bbaWETH = ERC20(0x41503C9D499ddbd1dCdf818a1b05e9774203Bf46);
    ERC20 public GHO_LUSD_BPT = ERC20(0x3FA8C89704e5d07565444009e5d9e624B40Be813);
    ERC20 public swETH_bbaWETH = ERC20(0xaE8535c23afeDdA9304B03c68a3563B75fc8f92b);
    ERC20 public swETH_wETH = ERC20(0x02D928E68D8F10C0358566152677Db51E1e2Dc8C);

    bytes32 public rETH_weETH_id = 0x05ff47afada98a98982113758878f9a8b9fdda0a000000000000000000000645;
    ERC20 public rETH_weETH = ERC20(0x05ff47AFADa98a98982113758878F9A8B9FddA0a);
    address public rETH_weETH_gauge = 0xC859BF9d7B8C557bBd229565124c2C09269F3aEF;
    address public aura_reth_weeth = 0x07A319A023859BbD49CC9C38ee891c3EA9283Cc5;

    ERC20 public ezETH_wETH = ERC20(0x596192bB6e41802428Ac943D2f1476C1Af25CC0E);
    address public ezETH_wETH_gauge = 0xa8B309a75f0D64ED632d45A003c68A30e59A1D8b;
    address public aura_ezETH_wETH = 0x95eC73Baa0eCF8159b4EE897D973E41f51978E50;

    ERC20 public rsETH_ETHx = ERC20(0x7761b6E0Daa04E70637D81f1Da7d186C205C2aDE);
    address public rsETH_ETHx_gauge = 0x0BcDb6d9b27Bd62d3De605393902C7d1a2c71Aab;
    address public aura_rsETH_ETHx = 0xf618102462Ff3cf7edbA4c067316F1C3AbdbA193;

    bytes32 public rETH_wETH_id = 0x1e19cf2d73a72ef1332c882f20534b6519be0276000200000000000000000112;
    ERC20 public rETH_wETH = ERC20(0x1E19CF2D73a72Ef1332C882F20534B6519Be0276);
    address public rETH_wETH_gauge = 0x79eF6103A513951a3b25743DB509E267685726B7;
    address public aura_reth_weth = 0xDd1fE5AD401D4777cE89959b7fa587e569Bf125D;

    ERC20 public ezETH_weETH_rswETH = ERC20(0x848a5564158d84b8A8fb68ab5D004Fae11619A54);
    address public ezETH_weETH_rswETH_gauge = 0x253ED65fff980AEE7E94a0dC57BE304426048b35;
    address public aura_ezETH_weETH_rswETH = 0xce98eb8b2Fb98049b3F2dB0A212Ba7ca3Efd63b0;

    ERC20 public BAL_wETH = ERC20(0x5c6Ee304399DBdB9C8Ef030aB642B10820DB8F56);
    ERC20 public PENDLE_wETH = ERC20(0xFD1Cf6FD41F229Ca86ada0584c63C49C3d66BbC9);
    ERC20 public wETH_AURA = ERC20(0xCfCA23cA9CA720B6E98E3Eb9B6aa0fFC4a5C08B9);

    // ERC20 public ezETH_wETH = ERC20(0x596192bB6e41802428Ac943D2f1476C1Af25CC0E);
    // address public ezETH_wETH_gauge = 0xa8B309a75f0D64ED632d45A003c68A30e59A1D8b;
    // address public aura_ezETH_wETH = 0x95eC73Baa0eCF8159b4EE897D973E41f51978E50;

    // Linear Pools.
    ERC20 public bb_a_dai = ERC20(0x6667c6fa9f2b3Fc1Cc8D85320b62703d938E4385);
    ERC20 public bb_a_usdt = ERC20(0xA1697F9Af0875B63DdC472d6EeBADa8C1fAB8568);
    ERC20 public bb_a_usdc = ERC20(0xcbFA4532D8B2ade2C261D3DD5ef2A2284f792692);

    ERC20 public BB_A_USD_GAUGE = ERC20(0x0052688295413b32626D226a205b95cDB337DE86); // query subgraph for gauges wrt to poolId: https://docs.balancer.fi/reference/vebal-and-gauges/gauges.html#query-gauge-by-l2-sidechain-pool:~:text=%23-,Query%20Pending%20Tokens%20for%20a%20Given%20Pool,-The%20process%20differs
    address public BB_A_USD_GAUGE_ADDRESS = 0x0052688295413b32626D226a205b95cDB337DE86;
    address public wstETH_bbaWETH_GAUGE_ADDRESS = 0x5f838591A5A8048F0E4C4c7fCca8fD9A25BF0590;

    // Mainnet Balancer Specific Addresses
    address public vault = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
    address public balancerVault = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
    address public relayer = 0xfeA793Aa415061C483D2390414275AD314B3F621;
    address public minter = 0x239e55F427D44C3cc793f49bFB507ebe76638a2b;
    ERC20 public USDC_DAI_USDT_BPT = ERC20(0x79c58f70905F734641735BC61e45c19dD9Ad60bC);
    ERC20 public rETH_wETH_BPT = ERC20(0x1E19CF2D73a72Ef1332C882F20534B6519Be0276);
    ERC20 public wstETH_wETH_BPT = ERC20(0x32296969Ef14EB0c6d29669C550D4a0449130230);
    ERC20 public wstETH_cbETH_BPT = ERC20(0x9c6d47Ff73e0F5E51BE5FD53236e3F595C5793F2);
    ERC20 public bb_a_USD_BPT = ERC20(0xfeBb0bbf162E64fb9D0dfe186E517d84C395f016);
    ERC20 public bb_a_USDC_BPT = ERC20(0xcbFA4532D8B2ade2C261D3DD5ef2A2284f792692);
    ERC20 public bb_a_DAI_BPT = ERC20(0x6667c6fa9f2b3Fc1Cc8D85320b62703d938E4385);
    ERC20 public bb_a_USDT_BPT = ERC20(0xA1697F9Af0875B63DdC472d6EeBADa8C1fAB8568);
    ERC20 public aura_rETH_wETH_BPT = ERC20(0xDd1fE5AD401D4777cE89959b7fa587e569Bf125D);
    ERC20 public GHO_bb_a_USD_BPT = ERC20(0xc2B021133D1b0cF07dba696fd5DD89338428225B);

    // Rate Providers
    address public cbethRateProvider = 0x7311E4BB8a72e7B300c5B8BDE4de6CdaA822a5b1;
    address public rethRateProvider = 0x1a8F81c256aee9C640e14bB0453ce247ea0DFE6F;
    address public sDaiRateProvider = 0xc7177B6E18c1Abd725F5b75792e5F7A3bA5DBC2c;

    // Compound V2
    // CErc20 public cDAI = CErc20(0x5d3a536E4D6DbD6114cc1Ead35777bAB948E3643);
    // CErc20 public cUSDC = CErc20(0x39AA39c021dfbaE8faC545936693aC917d5E7563);
    // CErc20 public cTUSD = CErc20(0x12392F67bdf24faE0AF363c24aC620a2f67DAd86);

    // Chainlink Automation Registry
    address public automationRegistry = 0x02777053d6764996e594c3E88AF1D58D5363a2e6;
    address public automationRegistryV2 = 0x6593c7De001fC8542bB1703532EE1E5aA0D458fD;
    address public automationRegistrarV2 = 0x6B0B234fB2f380309D47A7E9391E29E9a179395a;

    // FraxLend Pairs
    address public FXS_FRAX_PAIR = 0xDbe88DBAc39263c47629ebbA02b3eF4cf0752A72;
    address public FPI_FRAX_PAIR = 0x74F82Bd9D0390A4180DaaEc92D64cf0708751759;
    address public SFRXETH_FRAX_PAIR = 0x78bB3aEC3d855431bd9289fD98dA13F9ebB7ef15;
    address public CRV_FRAX_PAIR = 0x3835a58CA93Cdb5f912519ad366826aC9a752510; // FraxlendV1
    address public WBTC_FRAX_PAIR = 0x32467a5fc2d72D21E8DCe990906547A2b012f382; // FraxlendV1
    address public WETH_FRAX_PAIR = 0x794F6B13FBd7EB7ef10d1ED205c9a416910207Ff; // FraxlendV1
    address public CVX_FRAX_PAIR = 0xa1D100a5bf6BFd2736837c97248853D989a9ED84; // FraxlendV1
    address public MKR_FRAX_PAIR = 0x82Ec28636B77661a95f021090F6bE0C8d379DD5D; // FraxlendV2
    address public APE_FRAX_PAIR = 0x3a25B9aB8c07FfEFEe614531C75905E810d8A239; // FraxlendV2
    address public UNI_FRAX_PAIR = 0xc6CadA314389430d396C7b0C70c6281e99ca7fe8; // FraxlendV2

    /// From Crispy's curve tests

    // Curve Pools and Tokens
    address public TriCryptoPool = 0xD51a44d3FaE010294C616388b506AcdA1bfAAE46;
    ERC20 public CRV_3_CRYPTO = ERC20(0xc4AD29ba4B3c580e6D59105FFf484999997675Ff);
    address public daiUsdcUsdtPool = 0xbEbc44782C7dB0a1A60Cb6fe97d0b483032FF1C7;
    ERC20 public CRV_DAI_USDC_USDT = ERC20(0x6c3F90f043a72FA612cbac8115EE7e52BDe6E490);
    address public frax3CrvPool = 0xd632f22692FaC7611d2AA1C0D552930D43CAEd3B;
    ERC20 public CRV_FRAX_3CRV = ERC20(0xd632f22692FaC7611d2AA1C0D552930D43CAEd3B);
    address public wethCrvPool = 0x8301AE4fc9c624d1D396cbDAa1ed877821D7C511;
    ERC20 public CRV_WETH_CRV = ERC20(0xEd4064f376cB8d68F770FB1Ff088a3d0F3FF5c4d);
    address public aave3Pool = 0xDeBF20617708857ebe4F679508E7b7863a8A8EeE;
    ERC20 public CRV_AAVE_3CRV = ERC20(0xFd2a8fA60Abd58Efe3EeE34dd494cD491dC14900);
    address public stETHWethNg = 0x21E27a5E5513D6e65C4f830167390997aA84843a;
    address public EthFrxEthCurvePool = 0xa1F8A6807c402E4A15ef4EBa36528A3FED24E577;
    address public triCrypto2 = 0xD51a44d3FaE010294C616388b506AcdA1bfAAE46;
    address public weETH_wETH_ng = 0xDB74dfDD3BB46bE8Ce6C33dC9D82777BCFc3dEd5;
    address public weETH_wETH_ng_gauge = 0x053df3e4D0CeD9a3Bf0494F97E83CE1f13BdC0E2;

    address public UsdcCrvUsdPool = 0x4DEcE678ceceb27446b35C672dC7d61F30bAD69E;
    address public UsdcCrvUsdToken = 0x4DEcE678ceceb27446b35C672dC7d61F30bAD69E;
    address public UsdcCrvUsdGauge = 0x95f00391cB5EebCd190EB58728B4CE23DbFa6ac1;
    address public WethRethPool = 0x0f3159811670c117c372428D4E69AC32325e4D0F;
    address public WethRethToken = 0x6c38cE8984a890F5e46e6dF6117C26b3F1EcfC9C;
    address public WethRethGauge = 0x9d4D981d8a9066f5db8532A5816543dE8819d4A8;
    address public UsdtCrvUsdPool = 0x390f3595bCa2Df7d23783dFd126427CCeb997BF4;
    address public UsdtCrvUsdToken = 0x390f3595bCa2Df7d23783dFd126427CCeb997BF4;
    address public UsdtCrvUsdGauge = 0x4e6bB6B7447B7B2Aa268C16AB87F4Bb48BF57939;
    address public EthStethPool = 0xDC24316b9AE028F1497c275EB9192a3Ea0f67022;
    address public EthStethToken = 0x06325440D014e39736583c165C2963BA99fAf14E;
    address public EthStethGauge = 0x182B723a58739a9c974cFDB385ceaDb237453c28;
    address public FraxUsdcPool = 0xDcEF968d416a41Cdac0ED8702fAC8128A64241A2;
    address public FraxUsdcToken = 0x3175Df0976dFA876431C2E9eE6Bc45b65d3473CC;
    address public FraxUsdcGauge = 0xCFc25170633581Bf896CB6CDeE170e3E3Aa59503;
    address public WethFrxethPool = 0x9c3B46C0Ceb5B9e304FCd6D88Fc50f7DD24B31Bc;
    address public WethFrxethToken = 0x9c3B46C0Ceb5B9e304FCd6D88Fc50f7DD24B31Bc;
    address public WethFrxethGauge = 0x4E21418095d32d15c6e2B96A9910772613A50d50;
    address public EthFrxethPool = 0xa1F8A6807c402E4A15ef4EBa36528A3FED24E577;
    address public EthFrxethToken = 0xf43211935C781D5ca1a41d2041F397B8A7366C7A;
    address public EthFrxethGauge = 0x2932a86df44Fe8D2A706d8e9c5d51c24883423F5;
    address public StethFrxethPool = 0x4d9f9D15101EEC665F77210cB999639f760F831E;
    address public StethFrxethToken = 0x4d9f9D15101EEC665F77210cB999639f760F831E;
    address public StethFrxethGauge = 0x821529Bb07c83803C9CC7763e5974386e9eFEdC7;
    address public WethCvxPool = 0xB576491F1E6e5E62f1d8F26062Ee822B40B0E0d4;
    address public WethCvxToken = 0x3A283D9c08E8b55966afb64C515f5143cf907611;
    address public WethCvxGauge = 0x7E1444BA99dcdFfE8fBdb42C02F0005D14f13BE1;
    address public EthStethNgPool = 0x21E27a5E5513D6e65C4f830167390997aA84843a;
    address public EthStethNgToken = 0x21E27a5E5513D6e65C4f830167390997aA84843a;
    address public EthStethNgGauge = 0x79F21BC30632cd40d2aF8134B469a0EB4C9574AA;
    address public EthOethPool = 0x94B17476A93b3262d87B9a326965D1E91f9c13E7;
    address public EthOethToken = 0x94B17476A93b3262d87B9a326965D1E91f9c13E7;
    address public EthOethGauge = 0xd03BE91b1932715709e18021734fcB91BB431715;
    address public FraxCrvUsdPool = 0x0CD6f267b2086bea681E922E19D40512511BE538;
    address public FraxCrvUsdToken = 0x0CD6f267b2086bea681E922E19D40512511BE538;
    address public FraxCrvUsdGauge = 0x96424E6b5eaafe0c3B36CA82068d574D44BE4e3c;
    address public mkUsdFraxUsdcPool = 0x0CFe5C777A7438C9Dd8Add53ed671cEc7A5FAeE5;
    address public mkUsdFraxUsdcToken = 0x0CFe5C777A7438C9Dd8Add53ed671cEc7A5FAeE5;
    address public mkUsdFraxUsdcGauge = 0xF184d80915Ba7d835D941BA70cDdf93DE36517ee;
    address public WethYethPool = 0x69ACcb968B19a53790f43e57558F5E443A91aF22;
    address public WethYethToken = 0x69ACcb968B19a53790f43e57558F5E443A91aF22;
    address public WethYethGauge = 0x138cC21D15b7A06F929Fc6CFC88d2b830796F4f1;
    address public EthEthxPool = 0x59Ab5a5b5d617E478a2479B0cAD80DA7e2831492;
    address public EthEthxToken = 0x59Ab5a5b5d617E478a2479B0cAD80DA7e2831492;
    address public EthEthxGauge = 0x7671299eA7B4bbE4f3fD305A994e6443b4be680E;
    address public CrvUsdSdaiPool = 0x1539c2461d7432cc114b0903f1824079BfCA2C92;
    address public CrvUsdSdaiToken = 0x1539c2461d7432cc114b0903f1824079BfCA2C92;
    address public CrvUsdSdaiGauge = 0x2B5a5e182768a18C70EDd265240578a72Ca475ae;
    address public CrvUsdSfraxPool = 0xfEF79304C80A694dFd9e603D624567D470e1a0e7;
    address public CrvUsdSfraxToken = 0xfEF79304C80A694dFd9e603D624567D470e1a0e7;
    address public CrvUsdSfraxGauge = 0x62B8DA8f1546a092500c457452fC2d45fa1777c4;
    address public LusdCrvUsdPool = 0x9978c6B08d28d3B74437c917c5dD7C026df9d55C;
    address public LusdCrvUsdToken = 0x9978c6B08d28d3B74437c917c5dD7C026df9d55C;
    address public LusdCrvUsdGauge = 0x66F65323bdE835B109A92045Aa7c655559dbf863;
    address public WstethEthXPool = 0x14756A5eD229265F86990e749285bDD39Fe0334F;
    address public WstethEthXToken = 0xfffAE954601cFF1195a8E20342db7EE66d56436B;
    address public WstethEthXGauge = 0xc1394d6c89cf8F553da8c8256674C778ccFf3E80;
    address public EthEthXPool = 0x59Ab5a5b5d617E478a2479B0cAD80DA7e2831492;
    address public EthEthXToken = 0x59Ab5a5b5d617E478a2479B0cAD80DA7e2831492;
    address public EthEthXGauge = 0x7671299eA7B4bbE4f3fD305A994e6443b4be680E;
    address public weETH_wETH_Curve_LP = 0x13947303F63b363876868D070F14dc865C36463b;
    address public weETH_wETH_Curve_Gauge = 0x1CAC1a0Ed47E2e0A313c712b2dcF85994021a365;
    address public weETH_wETH_Convex_Reward = 0x2D159E01A5cEe7498F84Be68276a5266b3cb3774;

    address public weETH_wETH_Pool = 0x13947303F63b363876868D070F14dc865C36463b;
    address public weETH_wETH_NG_Pool = 0xDB74dfDD3BB46bE8Ce6C33dC9D82777BCFc3dEd5;
    address public weETH_wETH_NG_Convex_Reward = 0x5411CC583f0b51104fA523eEF9FC77A29DF80F58;

    address public pyUsd_Usdc_Curve_Pool = 0x383E6b4437b59fff47B619CBA855CA29342A8559;
    address public pyUsd_Usdc_Convex_Id = address(270);
    address public frax_Usdc_Curve_Pool = 0xDcEF968d416a41Cdac0ED8702fAC8128A64241A2;
    address public frax_Usdc_Convex_Id = address(100);
    address public usdc_CrvUsd_Curve_Pool = 0x4DEcE678ceceb27446b35C672dC7d61F30bAD69E;
    address public usdc_CrvUsd_Convex_Id = address(182);
    address public sDai_sUsde_Curve_Pool = 0x167478921b907422F8E88B43C4Af2B8BEa278d3A;
    address public sDai_sUsde_Curve_Gauge = 0x330Cfd12e0E97B0aDF46158D2A81E8Bd2985c6cB;

    address public ezETH_wETH_Curve_Pool = 0x85dE3ADd465a219EE25E04d22c39aB027cF5C12E;
    address public weETH_rswETH_Curve_Pool = 0x278cfB6f06B1EFc09d34fC7127d6060C61d629Db;
    address public rswETH_wETH_Curve_Pool = 0xeE04382c4cA6c450213923fE0f0daB19b0ff3939;
    address public USDe_USDC_Curve_Pool = 0x02950460E2b9529D0E00284A5fA2d7bDF3fA4d72;
    address public USDe_DAI_Curve_Pool = 0xF36a4BA50C603204c3FC6d2dA8b78A7b69CBC67d;
    address public sDAI_sUSDe_Curve_Pool = 0x167478921b907422F8E88B43C4Af2B8BEa278d3A;

    address public WethMkUsdPool = 0xc89570207c5BA1B0E3cD372172cCaEFB173DB270;

    // Convex-Curve Platform Specifics
    address public convexCurveMainnetBooster = 0xF403C135812408BFbE8713b5A23a04b3D48AAE31;

    address public ethFrxethBaseRewardPool = 0xbD5445402B0a287cbC77cb67B2a52e2FC635dce4;
    address public ethStethNgBaseRewardPool = 0x6B27D7BC63F1999D14fF9bA900069ee516669ee8;
    address public fraxCrvUsdBaseRewardPool = 0x3CfB4B26dc96B124D15A6f360503d028cF2a3c00;
    address public mkUsdFraxUsdcBaseRewardPool = 0x35FbE5520E70768DCD6E3215Ed54E14CBccA10D2;
    address public wethYethBaseRewardPool = 0xB0867ADE998641Ab1Ff04cF5cA5e5773fA92AaE3;
    address public ethEthxBaseRewardPool = 0x399e111c7209a741B06F8F86Ef0Fdd88fC198D20;
    address public crvUsdSFraxBaseRewardPool = 0x73eA73C3a191bd05F3266eB2414609dC5Fe777a2;
    address public usdtCrvUsdBaseRewardPool = 0xD1DdB0a0815fD28932fBb194C84003683AF8a824;
    address public lusdCrvUsdBaseRewardPool = 0x633D3B227696B3FacF628a197f982eF68d26c7b5;
    address public wstethEthxBaseRewardPool = 0x85b118e0Fa5706d99b270be43d782FBE429aD409;

    // Uniswap V3
    address public WSTETH_WETH_100 = 0x109830a1AAaD605BbF02a9dFA7B0B92EC2FB7dAa;
    address public WSTETH_WETH_500 = 0xD340B57AAcDD10F96FC1CF10e15921936F41E29c;
    address public DAI_USDC_100 = 0x5777d92f208679DB4b9778590Fa3CAB3aC9e2168;
    address public uniswapV3NonFungiblePositionManager = 0xC36442b4a4522E871399CD717aBDD847Ab11FE88;

    // Redstone
    address public swEthAdapter = 0x68ba9602B2AeE30847412109D2eE89063bf08Ec2;
    bytes32 public swEthDataFeedId = 0x5357455448000000000000000000000000000000000000000000000000000000;
    bytes32 public swEthEthDataFeedId = 0x53574554482f4554480000000000000000000000000000000000000000000000;

    address public ethXEthAdapter = 0xc799194cAa24E2874Efa89b4Bf5c92a530B047FF;
    bytes32 public ethXEthDataFeedId = 0x455448782f455448000000000000000000000000000000000000000000000000;

    address public ethXAdapter = 0xF3eB387Ac1317fBc7E2EFD82214eE1E148f0Fe00;
    bytes32 public ethXUsdDataFeedId = 0x4554487800000000000000000000000000000000000000000000000000000000;

    address public weEthEthAdapter = 0x8751F736E94F6CD167e8C5B97E245680FbD9CC36;
    bytes32 public weEthDataFeedId = 0x77654554482f4554480000000000000000000000000000000000000000000000;
    address public weethAdapter = 0xdDb6F90fFb4d3257dd666b69178e5B3c5Bf41136;
    bytes32 public weethUsdDataFeedId = 0x7765455448000000000000000000000000000000000000000000000000000000;

    address public osEthEthAdapter = 0x66ac817f997Efd114EDFcccdce99F3268557B32C;
    bytes32 public osEthEthDataFeedId = 0x6f734554482f4554480000000000000000000000000000000000000000000000;

    address public rsEthEthAdapter = 0xA736eAe8805dDeFFba40cAB8c99bCB309dEaBd9B;
    bytes32 public rsEthEthDataFeedId = 0x72734554482f4554480000000000000000000000000000000000000000000000;

    address public ezEthEthAdapter = 0xF4a3e183F59D2599ee3DF213ff78b1B3b1923696;
    bytes32 public ezEthEthDataFeedId = 0x657a4554482f4554480000000000000000000000000000000000000000000000;

    // Maker
    address public dsrManager = 0x373238337Bfe1146fb49989fc222523f83081dDb;

    // Current Active Cellars
    address public ryusdCellar = 0x97e6E0a40a3D02F12d1cEC30ebfbAE04e37C119E;

    // Maker
    address public savingsDaiAddress = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;
    address public sDAI = 0x83F20F44975D03b1b09e64809B757c47f942BEeA;

    // Frax
    address public sFRAX = 0xA663B02CF0a4b149d2aD41910CB81e23e1c41c32;

    // Lido
    address public unstETH = 0x889edC2eDab5f40e902b864aD4d7AdE8E412F9B1;

    // Stader
    address public stakePoolManagerAddress = 0xcf5EA1b38380f6aF39068375516Daf40Ed70D299;
    address public userWithdrawManagerAddress = 0x9F0491B32DBce587c50c4C43AB303b06478193A7;
    address public staderConfig = 0x4ABEF2263d5A5ED582FC9A9789a41D85b68d69DB;

    // Etherfi
    address public EETH_LIQUIDITY_POOL = 0x308861A430be4cce5502d0A12724771Fc6DaF216;
    address public withdrawalRequestNft = 0x7d5706f6ef3F89B3951E23e557CDFBC3239D4E2c;

    // Renzo
    address public restakeManager = 0x74a09653A083691711cF8215a6ab074BB4e99ef5;

    // Kelp DAO
    address public lrtDepositPool = 0x036676389e48133B63a802f8635AD39E752D375D;
    // Compound V3
    address public cUSDCV3 = 0xc3d688B66703497DAA19211EEdff47f25384cdc3;
    address public cWETHV3 = 0xA17581A9E3356d9A858b789D68B4d866e593aE94;
    address public cometRewards = 0x1B0e765F6224C21223AeA2af16c1C46E38885a40;
    // Morpho Blue
    address public morphoBlue = 0xBBBBBbbBBb9cC5e90e3b3Af64bdAF62C37EEFFCb;
    address public ezEthOracle = 0x61025e2B0122ac8bE4e37365A4003d87ad888Cc3;
    address public ezEthIrm = 0x870aC11D48B15DB9a138Cf899d20F13F79Ba00BC;

    address public uniswapV3PositionManager = 0xC36442b4a4522E871399CD717aBDD847Ab11FE88;

    // 1Inch
    address public aggregationRouterV5 = 0x1111111254EEB25477B68fb85Ed929f73A960582;
    address public oneInchExecutor = 0xE37e799D5077682FA0a244D46E5649F71457BD09;
    address public wETHweETH5bps = 0x7A415B19932c0105c82FDB6b720bb01B0CC2CAe3;

    // Gearbox
    address public dWETHV3 = 0xda0002859B2d05F66a753d8241fCDE8623f26F4f;
    address public sdWETHV3 = 0x0418fEB7d0B25C411EB77cD654305d29FcbFf685;
    address public dUSDCV3 = 0xda00000035fef4082F78dEF6A8903bee419FbF8E;
    address public sdUSDCV3 = 0x9ef444a6d7F4A5adcd68FD5329aA5240C90E14d2;
    address public dDAIV3 = 0xe7146F53dBcae9D6Fa3555FE502648deb0B2F823;
    address public sdDAIV3 = 0xC853E4DA38d9Bd1d01675355b8c8f3BBC1451973;
    address public dUSDTV3 = 0x05A811275fE9b4DE503B3311F51edF6A856D936e;
    address public sdUSDTV3 = 0x16adAb68bDEcE3089D4f1626Bb5AEDD0d02471aD;

    // Pendle
    address public pendleMarketFactory = 0x1A6fCc85557BC4fB7B534ed835a03EF056552D52;
    address public pendleRouter = 0x00000000005BBB0EF59571E58418F9a4357b68A0;
    address public pendleOracle = 0x66a1096C6366b2529274dF4f5D8247827fe4CEA8;

    address public pendleWeETHMarket = 0xF32e58F92e60f4b0A37A69b95d642A471365EAe8;
    address public pendleWeethSy = 0xAC0047886a985071476a1186bE89222659970d65;
    address public pendleEethPt = 0xc69Ad9baB1dEE23F4605a82b3354F8E40d1E5966;
    address public pendleEethYt = 0xfb35Fd0095dD1096b1Ca49AD44d8C5812A201677;

    address public pendleZircuitWeETHMarket = 0xe26D7f9409581f606242300fbFE63f56789F2169;
    address public pendleZircuitWeethSy = 0xD7DF7E085214743530afF339aFC420c7c720BFa7;
    address public pendleZircuitEethPt = 0x4AE5411F3863CdB640309e84CEDf4B08B8b33FfF;
    address public pendleZircuitEethYt = 0x7C2D26182adeEf96976035986cF56474feC03bDa;

    address public pendleUSDeMarket = 0x19588F29f9402Bb508007FeADd415c875Ee3f19F;
    address public pendleUSDeSy = 0x42862F48eAdE25661558AFE0A630b132038553D0;
    address public pendleUSDePt = 0xa0021EF8970104c2d008F38D92f115ad56a9B8e1;
    address public pendleUSDeYt = 0x1e3d13932C31d7355fCb3FEc680b0cD159dC1A07;

    address public pendleZircuitUSDeMarket = 0x90c98ab215498B72Abfec04c651e2e496bA364C0;
    address public pendleZircuitUSDeSy = 0x293C6937D8D82e05B01335F7B33FBA0c8e256E30;
    address public pendleZircuitUSDePt = 0x3d4F535539A33FEAd4D76D7b3B7A9cB5B21C73f1;
    address public pendleZircuitUSDeYt = 0x40357b9f22B4DfF0Bf56A90661b8eC106C259d29;

    address public pendleSUSDeMarketSeptember = 0xd1D7D99764f8a52Aff007b7831cc02748b2013b5;
    address public pendleSUSDeMarketJuly = 0x107a2e3cD2BB9a32B9eE2E4d51143149F8367eBa;
    address public pendleKarakSUSDeMarket = 0xB1f587B354a4a363f5332e88effbbC2E4961250A;
    address public pendleKarakUSDeMarket = 0x1BCBDB8c8652345A5ACF04e6E74f70086c68FEfC;

    address public pendleWeETHMarketSeptember = 0xC8eDd52D0502Aa8b4D5C77361D4B3D300e8fC81c;
    address public pendleWeethSySeptember = 0xAC0047886a985071476a1186bE89222659970d65;
    address public pendleEethPtSeptember = 0x1c085195437738d73d75DC64bC5A3E098b7f93b1;
    address public pendleEethYtSeptember = 0xA54Df645A042D24121a737dAA89a57EbF8E0b71c;

    address public pendleWeETHMarketDecember = 0x7d372819240D14fB477f17b964f95F33BeB4c704;
    address public pendleWeethSyDecember = 0xAC0047886a985071476a1186bE89222659970d65;
    address public pendleEethPtDecember = 0x6ee2b5E19ECBa773a352E5B21415Dc419A700d1d;
    address public pendleEethYtDecember = 0x129e6B5DBC0Ecc12F9e486C5BC9cDF1a6A80bc6A;

    address public pendleUSDeZircuitMarketAugust = 0xF148a0B15712f5BfeefAdb4E6eF9739239F88b07;
    address public pendleKarakWeETHMarketSeptember = 0x18bAFcaBf2d5898956AE6AC31543d9657a604165;

    address public pendleSwethMarket = 0x0e1C5509B503358eA1Dac119C1D413e28Cc4b303;

    // Aave V3
    address public v3Pool = 0x87870Bca3F3fD6335C3F4ce8392D69350B4fA4E2;

    // SparkLend
    address public sparkLendPool = 0xC13e21B648A5Ee794902342038FF3aDAB66BE987;

    // Uniswap V3 Pools
    address public wETH_weETH_05 = 0x7A415B19932c0105c82FDB6b720bb01B0CC2CAe3;
    address public wstETH_wETH_01 = 0x109830a1AAaD605BbF02a9dFA7B0B92EC2FB7dAa;
    address public rETH_wETH_01 = 0x553e9C493678d8606d6a5ba284643dB2110Df823;
    address public rETH_wETH_05 = 0xa4e0faA58465A2D369aa21B3e42d43374c6F9613;
    address public wstETH_rETH_05 = 0x18319135E02Aa6E02D412C98cCb16af3a0a9CB57;
    address public wETH_rswETH_05 = 0xC410573Af188f56062Ee744cC3D6F2843f5bC13b;
    address public wETH_rswETH_30 = 0xE62627326d7794E20bB7261B24985294de1579FE;
    address public ezETH_wETH_01 = 0xBE80225f09645f172B079394312220637C440A63;
    address public PENDLE_wETH_30 = 0x57aF956d3E2cCa3B86f3D8C6772C03ddca3eAacB;
    address public USDe_USDT_01 = 0x435664008F38B0650fBC1C9fc971D0A3Bc2f1e47;
    address public USDe_USDC_01 = 0xE6D7EbB9f1a9519dc06D557e03C522d53520e76A;
    address public USDe_DAI_01 = 0x5B3a0f1acBE8594a079FaFeB1c84DEA9372A5Aad;
    address public sUSDe_USDT_05 = 0x867B321132B18B5BF3775c0D9040D1872979422E;
    address public GEAR_wETH_100 = 0xaEf52f72583E6c4478B220Da82321a6a023eEE50;
    address public GEAR_USDT_30 = 0x349eE001D80f896F24571616932f54cBD66B18C9;
    address public DAI_USDC_01 = 0x5777d92f208679DB4b9778590Fa3CAB3aC9e2168;
    address public DAI_USDC_05 = 0x6c6Bc977E13Df9b0de53b251522280BB72383700;
    address public USDC_USDT_01 = 0x3416cF6C708Da44DB2624D63ea0AAef7113527C6;
    address public USDC_USDT_05 = 0x7858E59e0C01EA06Df3aF3D20aC7B0003275D4Bf;
    address public USDC_wETH_05 = 0x88e6A0c2dDD26FEEb64F039a2c41296FcB3f5640;
    address public FRAX_USDC_05 = 0xc63B0708E2F7e69CB8A1df0e1389A98C35A76D52;
    address public FRAX_USDC_01 = 0x9A834b70C07C81a9fcD6F22E842BF002fBfFbe4D;
    address public DAI_FRAX_05 = 0x97e7d56A0408570bA1a7852De36350f7713906ec;
    address public FRAX_USDT_05 = 0xc2A856c3afF2110c1171B8f942256d40E980C726;
    address public PYUSD_USDC_01 = 0x13394005C1012e708fCe1EB974F1130fDc73a5Ce;

    // EigenLayer
    address public strategyManager = 0x858646372CC42E1A627fcE94aa7A7033e7CF075A;
    address public delegationManager = 0x39053D51B77DC0d36036Fc1fCc8Cb819df8Ef37A;
    address public mETHStrategy = 0x298aFB19A105D59E74658C4C334Ff360BadE6dd2;

    // Swell
    address public swellSimpleStaking = 0x38D43a6Cb8DA0E855A42fB6b0733A0498531d774;
    address public swEXIT = 0x48C11b86807627AF70a34662D4865cF854251663;
    address public accessControlManager = 0x625087d72c762254a72CB22cC2ECa40da6b95EAC;
    address public depositManager = 0xb3D9cf8E163bbc840195a97E81F8A34E295B8f39;

    // Zircuit
    address public zircuitSimpleStaking = 0xF047ab4c75cebf0eB9ed34Ae2c186f3611aEAfa6;

    // Mantle
    address public mantleLspStaking = 0xe3cBd06D7dadB3F4e6557bAb7EdD924CD1489E8f;

    // Fluid
    address public fUSDT = 0x5C20B550819128074FD538Edf79791733ccEdd18;
    address public fUSDTStakingRewards = 0x490681095ed277B45377d28cA15Ac41d64583048;
    address public fUSDC = 0x9Fb7b4477576Fe5B32be4C1843aFB1e55F251B33;
    address public fWETH = 0x90551c1795392094FE6D29B758EcCD233cFAa260;
    address public fWSTETH = 0x2411802D8BEA09be0aF8fD8D08314a63e706b29C;

    // Symbiotic
    address public wstETHDefaultCollateral = 0xC329400492c6ff2438472D4651Ad17389fCb843a;
    address public cbETHDefaultCollateral = 0xB26ff591F44b04E78de18f43B46f8b70C6676984;
    address public wBETHDefaultCollateral = 0x422F5acCC812C396600010f224b320a743695f85;
    address public rETHDefaultCollateral = 0x03Bf48b8A1B37FBeAd1EcAbcF15B98B924ffA5AC;
    address public mETHDefaultCollateral = 0x475D3Eb031d250070B63Fa145F0fCFC5D97c304a;
    address public swETHDefaultCollateral = 0x38B86004842D3FA4596f0b7A0b53DE90745Ab654;
    address public sfrxETHDefaultCollateral = 0x5198CB44D7B2E993ebDDa9cAd3b9a0eAa32769D2;
    address public ETHxDefaultCollateral = 0xBdea8e677F9f7C294A4556005c640Ee505bE6925;
    address public uniETHDefaultCollateral = 0x1C57ea879dd3e8C9fefa8224fdD1fa20dd54211E;
    address public sUSDeDefaultCollateral = 0x19d0D8e6294B7a04a2733FE433444704B791939A;

    // Karak
    address public vaultSupervisor = 0x54e44DbB92dBA848ACe27F44c0CB4268981eF1CC;

    address public kmETH = 0x7C22725d1E0871f0043397c9761AD99A86ffD498;
    address public kweETH = 0x2DABcea55a12d73191AeCe59F508b191Fb68AdaC;
    address public kwstETH = 0xa3726beDFD1a8AA696b9B4581277240028c4314b;
    address public krETH = 0x8E475A4F7820A4b6c0FF229f74fB4762f0813C47;
    address public kcbETH = 0xbD32b8aA6ff34BEDc447e503195Fb2524c72658f;
    address public kwBETH = 0x04BB50329A1B7D943E7fD2368288b674c8180d5E;
    address public kswETH = 0xc585DF3a8C9ca0c614D023A812624bE36161502B;
    address public kETHx = 0x989Ab830C6e2BdF3f28214fF54C9B7415C349a3F;
    address public ksfrxETH = 0x1751e1e4d2c9Fa99479C0c5574136F0dbD8f3EB8;
}
