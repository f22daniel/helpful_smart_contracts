// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Contract address: 0x3F2C94C1a2931AD740F193a0A5B75CE566b056A0

contract GoerliPriceFeedV3 {
    AggregatorV3Interface internal EthUsdPriceFeed;
    AggregatorV3Interface internal BtcUsdPriceFeed;
    AggregatorV3Interface internal BtcEthPriceFeed;
    AggregatorV3Interface internal CzkUsdPriceFeed;
    AggregatorV3Interface internal DaiUsdPriceFeed;
    AggregatorV3Interface internal ForthUsdPriceFeed;
    AggregatorV3Interface internal JpyUsdPriceFeed;
    AggregatorV3Interface internal LinkEthPriceFeed;
    AggregatorV3Interface internal LinkUsdPriceFeed;
    AggregatorV3Interface internal SnxUsdPriceFeed;
    AggregatorV3Interface internal UsdcUsdPriceFeed;
    AggregatorV3Interface internal XauUsdPriceFeed;

    constructor() {
        EthUsdPriceFeed = AggregatorV3Interface(0xD4a33860578De61DBAbDc8BFdb98FD742fA7028e);
        BtcUsdPriceFeed = AggregatorV3Interface(0xA39434A63A52E749F02807ae27335515BA4b07F7);
        BtcEthPriceFeed = AggregatorV3Interface(0x779877A7B0D9E8603169DdbD7836e478b4624789);
        CzkUsdPriceFeed = AggregatorV3Interface(0xAE45DCb3eB59E27f05C170752B218C6174394Df8);
        DaiUsdPriceFeed = AggregatorV3Interface(0x0d79df66BE487753B02D015Fb622DED7f0E9798d);
        ForthUsdPriceFeed = AggregatorV3Interface(0x7A65Cf6C2ACE993f09231EC1Ea7363fb29C13f2F);
        JpyUsdPriceFeed = AggregatorV3Interface(0x295b398c95cEB896aFA18F25d0c6431Fd17b1431);
        LinkEthPriceFeed = AggregatorV3Interface(0xb4c4a493AB6356497713A78FFA6c60FB53517c63);
        LinkUsdPriceFeed = AggregatorV3Interface(0x48731cF7e84dc94C5f84577882c14Be11a5B7456);
        SnxUsdPriceFeed = AggregatorV3Interface(0xdC5f59e61e51b90264b38F0202156F07956E2577);
        UsdcUsdPriceFeed = AggregatorV3Interface(0xAb5c49580294Aff77670F839ea425f5b78ab3Ae7);
        XauUsdPriceFeed = AggregatorV3Interface(0x7b219F57a8e9C7303204Af681e9fA69d17ef626f);
    }
    //Returns the latest price
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
    function getLatestBtcEth() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = BtcEthPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestCzkUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = CzkUsdPriceFeed.latestRoundData();
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
    function getLatestForthUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = ForthUsdPriceFeed.latestRoundData();
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
    function getLatestSnxUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = SnxUsdPriceFeed.latestRoundData();
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
    function getLatestXauUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = XauUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    }
