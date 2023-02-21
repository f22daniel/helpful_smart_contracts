// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

// Contract address: 0x212B30E972ABc4c0b9e24dB44E99D84C40c59731

contract MumbaiPriceFeedV1 {
    AggregatorV3Interface internal EthUsdPriceFeed;
    AggregatorV3Interface internal BtcUsdPriceFeed;
    AggregatorV3Interface internal EurUsdPriceFeed;
    AggregatorV3Interface internal DaiUsdPriceFeed;
    AggregatorV3Interface internal LinkMaticPriceFeed;
    AggregatorV3Interface internal MaticUsdPriceFeed;
    AggregatorV3Interface internal LinkUsdPriceFeed;
    AggregatorV3Interface internal SandUsdPriceFeed;
    AggregatorV3Interface internal SolUsdPriceFeed;
    AggregatorV3Interface internal UsdcUsdPriceFeed;
    AggregatorV3Interface internal UsdtUsdPriceFeed;

    constructor() {
        EthUsdPriceFeed = AggregatorV3Interface(0x0715A7794a1dc8e42615F059dD6e406A6594651A);
        BtcUsdPriceFeed = AggregatorV3Interface(0x007A22900a3B98143368Bd5906f8E17e9867581b);
        DaiUsdPriceFeed = AggregatorV3Interface(0x0FCAa9c899EC5A91eBc3D5Dd869De833b06fB046);
        EurUsdPriceFeed = AggregatorV3Interface(0x7d7356bF6Ee5CDeC22B216581E48eCC700D0497A);

        LinkMaticPriceFeed = AggregatorV3Interface(0x12162c3E810393dEC01362aBf156D7ecf6159528);
        MaticUsdPriceFeed = AggregatorV3Interface(0xd0D5e3DB44DE05E9F294BB0a3bEEaF030DE24Ada);
        LinkUsdPriceFeed = AggregatorV3Interface(0x1C2252aeeD50e0c9B64bDfF2735Ee3C932F5C408);
        SandUsdPriceFeed = AggregatorV3Interface(0x9dd18534b8f456557d11B9DDB14dA89b2e52e308);
        SolUsdPriceFeed = AggregatorV3Interface(0xEB0fb293f368cE65595BeD03af3D3f27B7f0BD36);
        UsdcUsdPriceFeed = AggregatorV3Interface(0x572dDec9087154dC5dfBB1546Bb62713147e0Ab0);
        UsdtUsdPriceFeed = AggregatorV3Interface(0x92C09849638959196E976289418e5973CC96d645);
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
    function getLatestDaiUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = DaiUsdPriceFeed.latestRoundData();
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
    function getLatestLinkMatic() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = LinkMaticPriceFeed.latestRoundData();
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
    function getLatestLinkUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = LinkUsdPriceFeed.latestRoundData();
        uint uintPrice;
        if (price < 0) {uintPrice = uint(-price);}
        else {uintPrice = uint(price);}
        return (uintPrice, timeStamp);
    }
    function getLatestSandUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = SandUsdPriceFeed.latestRoundData();
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
    function getLatestUsdcUsd() public view returns (uint, uint) {
        ( /*uint80 roundID*/, int price, /*uint startedAt*/, uint timeStamp, /*uint80 answeredInRound*/) = UsdcUsdPriceFeed.latestRoundData();
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
    }
