// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract GoerliPriceConsumerV3 {
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
    function getLatestEthPrice() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = EthUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestBtcPrice() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = BtcUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestBtcEth() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = BtcEthPriceFeed.latestRoundData();
        return price;
    }
    function getLatestCzkUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = CzkUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestDaiUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = DaiUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestForthUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = ForthUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestJpyUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = JpyUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestLinkEth() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = LinkEthPriceFeed.latestRoundData();
        return price;
    }
    function getLatestLinkUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = LinkUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestSnxUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = SnxUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestUsdcUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = UsdcUsdPriceFeed.latestRoundData();
        return price;
    }
    function getLatestXauUsd() public view returns (int) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, /*uint timeStamp*/, /*uint80 answeredInRound*/) = XauUsdPriceFeed.latestRoundData();
        return price;
    }
    // Int to Uint conversion
    function UintEthUsd() public view returns(uint) {
        if (getLatestEthPrice() < 0){
            return uint(-getLatestEthPrice());
            }
        else {
            return uint(getLatestEthPrice());
        }
    }
    function UintCzkUsd() public view returns(uint) {
        if (getLatestCzkUsd() < 0){
            return uint(-getLatestCzkUsd());
        }
        else {
            return uint(getLatestCzkUsd());
        }
    }
    function UintJpyUsd() public view returns(uint) {
        if (getLatestJpyUsd() < 0){
            return uint(-getLatestJpyUsd());
        }
        else {
            return uint(getLatestJpyUsd());
        }
    }
    function UintBtcUsd() public view returns(uint) {
        if (getLatestBtcPrice() < 0){
            return uint(-getLatestBtcPrice());
        }
        else {
            return uint(getLatestBtcPrice());
        }
    }
    function UintBtcEth() public view returns(uint) {
        if (getLatestBtcEth() < 0){
            return uint(-getLatestBtcEth());
        }
        else {
            return uint(getLatestBtcEth());
        }
    }
    function UintDaiUsd() public view returns(uint) {
        if (getLatestDaiUsd() < 0){
            return uint(-getLatestDaiUsd());
        }
        else {
            return uint(getLatestDaiUsd());
        }
    }
    function UintForthUsd() public view returns(uint) {
        if (getLatestForthUsd() < 0){
            return uint(-getLatestForthUsd());
        }
        else {
            return uint(getLatestForthUsd());
        }
    }
    function UintLinkEth() public view returns(uint) {
        if (getLatestLinkEth() < 0){
            return uint(-getLatestLinkEth());
        }
        else {
            return uint(getLatestLinkEth());
        }
    }
    function UintLinkUsd() public view returns(uint) {
        if (getLatestLinkUsd() < 0){
            return uint(-getLatestLinkUsd());
        }
        else {
            return uint(getLatestLinkUsd());
        }
    }
    function UintSnxUsd() public view returns(uint) {
        if (getLatestSnxUsd() < 0){
            return uint(-getLatestSnxUsd());
        }
        else {
            return uint(getLatestSnxUsd());
        }
    }
    function UintUsdcUsd() public view returns(uint) {
        if (getLatestUsdcUsd() < 0){
            return uint(-getLatestUsdcUsd());
        }
        else {
            return uint(getLatestUsdcUsd());
        }
    }
    function UintXauUsd() public view returns(uint) {
        if (getLatestXauUsd() < 0){
            return uint(-getLatestXauUsd());
        }
        else {
            return uint(getLatestXauUsd());
        }
    }
}
