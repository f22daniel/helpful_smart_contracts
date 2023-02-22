// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Contract address: 0x133a627adA668fFA08f0B28e0254369CE735D13B

contract PolygonPriceConsumerV1 {
    // Crypto On Chain Data
    AggregatorV3Interface internal TotalMarketCap;
    // Crypto Prices
    AggregatorV3Interface internal OneInchUsdPriceFeed;
    AggregatorV3Interface internal EthUsdPriceFeed;
    AggregatorV3Interface internal BtcUsdPriceFeed;
    AggregatorV3Interface internal BtcEthPriceFeed;
    AggregatorV3Interface internal CadUsdPriceFeed;
    AggregatorV3Interface internal EurUsdPriceFeed;
    AggregatorV3Interface internal JpyUsdPriceFeed;
    AggregatorV3Interface internal InrUsdPriceFeed;
    AggregatorV3Interface internal AaveUsdPriceFeed;
    AggregatorV3Interface internal AaveEthPriceFeed;
    AggregatorV3Interface internal AdaUsdPriceFeed;
    AggregatorV3Interface internal AudUsdPriceFeed;
    AggregatorV3Interface internal AlcxUsdPriceFeed;
    AggregatorV3Interface internal AvaxUsdPriceFeed;
    AggregatorV3Interface internal BadgerUsdPriceFeed;
    AggregatorV3Interface internal BadgerEthPriceFeed;
    AggregatorV3Interface internal BalUsdPriceFeed;
    AggregatorV3Interface internal BalEthPriceFeed;
    AggregatorV3Interface internal BnbUsdPriceFeed;
    AggregatorV3Interface internal CrvUsdPriceFeed;
    AggregatorV3Interface internal CrvEthPriceFeed;
    AggregatorV3Interface internal DotUsdPriceFeed;
    AggregatorV3Interface internal DogeUsdPriceFeed;
    AggregatorV3Interface internal EnjUsdPriceFeed;
    AggregatorV3Interface internal FilUsdPriceFeed;
    AggregatorV3Interface internal GbpUsdPriceFeed;
    AggregatorV3Interface internal KavaUsdPriceFeed;
    AggregatorV3Interface internal LinkEthPriceFeed;
    AggregatorV3Interface internal LinkUsdPriceFeed;
    AggregatorV3Interface internal LinkMaticPriceFeed;
    AggregatorV3Interface internal LtcUsdPriceFeed;
    AggregatorV3Interface internal MaticUsdPriceFeed;
    AggregatorV3Interface internal ManaUsdPriceFeed;
    AggregatorV3Interface internal MaticEthPriceFeed;
    AggregatorV3Interface internal MakerUsdPriceFeed;
    AggregatorV3Interface internal MakerEthPriceFeed;
    AggregatorV3Interface internal OceanUsdPriceFeed;
    AggregatorV3Interface internal SolUsdPriceFeed;
    AggregatorV3Interface internal SushiUsdPriceFeed;
    AggregatorV3Interface internal SushiEthPriceFeed;
    AggregatorV3Interface internal UniUsdPriceFeed;
    AggregatorV3Interface internal UniEthPriceFeed;
    AggregatorV3Interface internal XmrUsdPriceFeed;
    AggregatorV3Interface internal XrpUsdPriceFeed;
    AggregatorV3Interface internal YfiUsdPriceFeed;
    AggregatorV3Interface internal YfiEthPriceFeed;
    // Stablecoins
    AggregatorV3Interface internal UsdtUsdPriceFeed;
    AggregatorV3Interface internal UsdcUsdPriceFeed;
    AggregatorV3Interface internal BusdUsdPriceFeed;
    AggregatorV3Interface internal DaiUsdPriceFeed;

    constructor() {
        // Crypto On Chain Data
        TotalMarketCap = AggregatorV3Interface(0xBb9749B5AD68574C106AC4F9cd5E1c400dbb88C3);
        // Crypto Prices
        OneInchUsdPriceFeed = AggregatorV3Interface(0x443C5116CdF663Eb387e72C688D276e702135C87);
        EthUsdPriceFeed = AggregatorV3Interface(0xF9680D99D6C9589e2a93a78A04A279e509205945);
        BtcUsdPriceFeed = AggregatorV3Interface(0xc907E116054Ad103354f2D350FD2514433D57F6f);
        BtcEthPriceFeed = AggregatorV3Interface(0x19b0F0833C78c0848109E3842D34d2fDF2cA69BA);
        EurUsdPriceFeed = AggregatorV3Interface(0x73366Fe0AA0Ded304479862808e02506FE556a98);
        CadUsdPriceFeed = AggregatorV3Interface(0xACA44ABb8B04D07D883202F99FA5E3c53ed57Fb5);
        JpyUsdPriceFeed = AggregatorV3Interface(0xD647a6fC9BC6402301583C91decC5989d8Bc382D);
        InrUsdPriceFeed = AggregatorV3Interface(0x605D5c2fBCeDb217D7987FC0951B5753069bC360);
        AaveUsdPriceFeed = AggregatorV3Interface(0x72484B12719E23115761D5DA1646945632979bB6);
        AaveEthPriceFeed = AggregatorV3Interface(0xbE23a3AA13038CfC28aFd0ECe4FdE379fE7fBfc4);
        AdaUsdPriceFeed = AggregatorV3Interface(0x882554df528115a743c4537828DA8D5B58e52544);
        AudUsdPriceFeed = AggregatorV3Interface(0x062Df9C4efd2030e243ffCc398b652e8b8F95C6f);
        AlcxUsdPriceFeed = AggregatorV3Interface(0x5DB6e61B6159B20F068dc15A47dF2E5931b14f29);
        AvaxUsdPriceFeed = AggregatorV3Interface(0xe01eA2fbd8D76ee323FbEd03eB9a8625EC981A10);
        BadgerUsdPriceFeed = AggregatorV3Interface(0xF626964Ba5e81405f47e8004F0b276Bb974742B5);
        BadgerEthPriceFeed = AggregatorV3Interface(0x82C9d4E88862f194C2bd874a106a90dDD0D35AAB);
        BalUsdPriceFeed = AggregatorV3Interface(0xD106B538F2A868c28Ca1Ec7E298C3325E0251d66);
        BalEthPriceFeed = AggregatorV3Interface(0x03CD157746c61F44597dD54C6f6702105258C722);
        BnbUsdPriceFeed = AggregatorV3Interface(0x82a6c4AF830caa6c97bb504425f6A66165C2c26e);
        CrvUsdPriceFeed = AggregatorV3Interface(0x336584C8E6Dc19637A5b36206B1c79923111b405);
        CrvEthPriceFeed = AggregatorV3Interface(0x1CF68C76803c9A415bE301f50E82e44c64B7F1D4);
        DotUsdPriceFeed = AggregatorV3Interface(0xacb51F1a83922632ca02B25a8164c10748001BdE);
        DogeUsdPriceFeed = AggregatorV3Interface(0xbaf9327b6564454F4a3364C33eFeEf032b4b4444);
        EnjUsdPriceFeed = AggregatorV3Interface(0x440A341bbC9FA86aA60A195e2409a547e48d4C0C);
        FilUsdPriceFeed = AggregatorV3Interface(0xa07703E5C2eD1516107c7c72A494493Dcb99C676);
        GbpUsdPriceFeed = AggregatorV3Interface(0x099a2540848573e94fb1Ca0Fa420b00acbBc845a);
        KavaUsdPriceFeed = AggregatorV3Interface(0x7899dd75C329eFe63e35b02bC7d60D3739FB23c5);
        LtcUsdPriceFeed = AggregatorV3Interface(0xEB99F173cf7d9a6dC4D889C2Ad7103e8383b6Efa);
        LinkEthPriceFeed = AggregatorV3Interface(0xb77fa460604b9C6435A235D057F7D319AC83cb53);
        LinkUsdPriceFeed = AggregatorV3Interface(0xd9FFdb71EbE7496cC440152d43986Aae0AB76665);
        LinkMaticPriceFeed = AggregatorV3Interface(0x5787BefDc0ECd210Dfa948264631CD53E68F7802);
        MaticUsdPriceFeed = AggregatorV3Interface(0xAB594600376Ec9fD91F8e885dADF0CE036862dE0); 
        ManaUsdPriceFeed = AggregatorV3Interface(0xA1CbF3Fe43BC3501e3Fc4b573e822c70e76A7512);
        MaticEthPriceFeed = AggregatorV3Interface(0x327e23A4855b6F663a28c5161541d69Af8973302); 
        MakerUsdPriceFeed = AggregatorV3Interface(0xa070427bF5bA5709f70e98b94Cb2F435a242C46C); 
        MakerEthPriceFeed = AggregatorV3Interface(0x807b59d12520830D1864286FA0271c27baa94197); 
        OceanUsdPriceFeed = AggregatorV3Interface(0xdcda79097C44353Dee65684328793695bd34A629); 
        SolUsdPriceFeed = AggregatorV3Interface(0x10C8264C0935b3B9870013e057f330Ff3e9C56dC); 
        SushiUsdPriceFeed = AggregatorV3Interface(0x49B0c695039243BBfEb8EcD054EB70061fd54aa0); 
        SushiEthPriceFeed = AggregatorV3Interface(0x17414Eb5159A082e8d41D243C1601c2944401431);
        UniUsdPriceFeed = AggregatorV3Interface(0xdf0Fb4e4F928d2dCB76f438575fDD8682386e13C); 
        UniEthPriceFeed = AggregatorV3Interface(0x162d8c5bF15eB6BEe003a1ffc4049C92114bc931); 
        XmrUsdPriceFeed = AggregatorV3Interface(0xBE6FB0AB6302B693368D0E9001fAF77ecc6571db); 
        XrpUsdPriceFeed = AggregatorV3Interface(0x785ba89291f676b5386652eB12b30cF361020694); 
        YfiUsdPriceFeed = AggregatorV3Interface(0x9d3A43c111E7b2C6601705D9fcF7a70c95b1dc55);
        YfiEthPriceFeed = AggregatorV3Interface(0x9896A1eA7A00F5f32Ab131eBbeE07487B0af31D0);
        // Stablecoins
        UsdtUsdPriceFeed = AggregatorV3Interface(0x0A6513e40db6EB1b165753AD52E80663aeA50545);
        UsdcUsdPriceFeed = AggregatorV3Interface(0xfE4A8cc5b5B2366C1B58Bea3858e81843581b2F7);
        BusdUsdPriceFeed = AggregatorV3Interface(0xE0dC07D5ED74741CeeDA61284eE56a2A0f7A4Cc9);
        DaiUsdPriceFeed = AggregatorV3Interface(0x4746DeC9e833A82EC7C2C1356372CcF2cfcD2F3D);
    }
    //Returns the latest price
    function TotalMarketCapUsd() public view returns(uint, uint) {
        (/*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = TotalMarketCap.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatest1inchUsd() public view returns(uint, uint) {
        (/*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = OneInchUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestEthUsd() public view returns(uint, uint) {
        (/*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = EthUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBtcUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BtcUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestCadUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = CadUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBtcEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BtcEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestEurUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = EurUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestJpyUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = JpyUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }

    function getLatestInrUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = InrUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }

    function getLatestAaveUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AaveUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestAaveEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AaveUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestAdaUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AdaUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestAudUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AudUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestAlcxUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AlcxUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }

    function getLatestAvaxUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = AvaxUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBadgerUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BadgerUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBadgerEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BadgerEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBalUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BalUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBalEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BalEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBnbUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BnbUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }

    function getLatestCrvUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = CrvUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestCrvEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = CrvEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestDotUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = DotUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestDogeUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = DogeUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestEnjUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = EnjUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }

    function getLatestFilUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = FilUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestGbpUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = GbpUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestKavaUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = KavaUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestLtcUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = LtcUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestLinkEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = LinkEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestLinkUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = LinkUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestMaticUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = MaticUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestManaUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = ManaUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestMaticEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = MaticEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestMakerEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = MakerEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestMakerUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = MakerUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestOceanUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = OceanUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestSolUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = SolUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestSushiUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = SushiUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestSushiEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = SushiEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestUniUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = UniUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestUniEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = UniEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestXmrUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = XmrUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestXrpUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = XrpUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestYfiUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = YfiUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestUsdtUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = UsdtUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestUsdcUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = UsdcUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestBusdUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BusdUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestDaiUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = DaiUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
}
