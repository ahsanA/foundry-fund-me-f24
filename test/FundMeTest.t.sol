//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        fundMe = new FundMe();
    }

    function testTestMinimumDollarIsFive() public {
        // Arrange
        // Act
        uint256 minimum_usd = fundMe.MINIMUM_USD();
        // Assert
        console.log(minimum_usd);
        assertEq(minimum_usd, 5e18);
    }

    function testTestOwnerIsSender() public {
        // Arrange
        // Act
        address owner = fundMe.i_owner();
        // Assert
        console.log(owner);
        assertEq(owner, address(this));
    }
}
