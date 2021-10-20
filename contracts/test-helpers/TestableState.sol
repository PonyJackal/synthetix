pragma solidity ^0.8.9;

import "../Owned.sol";
import "../State.sol";

contract TestableState is Owned, State {
    constructor(address _owner, address _associatedContract) Owned(_owner) State(_associatedContract) {}

    function testModifier() external onlyAssociatedContract {}
}
