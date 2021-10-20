pragma solidity ^0.8.9;

interface IFuturesMarketSettings {
    struct Parameters {
        uint takerFee;
        uint makerFee;
        uint closureFee;
        uint maxLeverage;
        uint maxMarketValue;
        uint maxFundingRate;
        uint minSkewScale;
        uint maxFundingRateDelta;
    }

    function takerFee(bytes32 _baseAsset) external view returns (uint);

    function makerFee(bytes32 _baseAsset) external view returns (uint);

    function closureFee(bytes32 _baseAsset) external view returns (uint);

    function maxLeverage(bytes32 _baseAsset) external view returns (uint);

    function maxMarketValue(bytes32 _baseAsset) external view returns (uint);

    function maxFundingRate(bytes32 _baseAsset) external view returns (uint);

    function minSkewScale(bytes32 _baseAsset) external view returns (uint);

    function maxFundingRateDelta(bytes32 _baseAsset) external view returns (uint);

    function parameters(bytes32 _baseAsset)
        external
        view
        returns (
            uint _takerFee,
            uint _makerFee,
            uint _closureFee,
            uint _maxLeverage,
            uint _maxMarketValue,
            uint _maxFundingRate,
            uint _minSkewScale,
            uint _maxFundingRateDelta
        );

    function liquidationFee() external view returns (uint);

    function minInitialMargin() external view returns (uint);
}
