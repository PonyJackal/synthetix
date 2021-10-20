pragma solidity ^0.8.9;

// Internal references
import "./Issuer.sol";

// https://docs.synthetix.io/contracts/source/contracts/issuerwithoutliquidations
contract IssuerWithoutLiquidations is Issuer {
    constructor(address _owner, address _resolver) Issuer(_owner, _resolver) {}

    function liquidateDelinquentAccount(
        address account,
        uint susdAmount,
        address liquidator
    ) external override onlySynthetix returns (uint totalRedeemed, uint amountToLiquidate) {}
}
