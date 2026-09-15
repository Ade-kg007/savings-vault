// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {SavingsVault} from "../src/SavingsVault.sol";

contract SavingsVaultTest is Test {
    SavingsVault public savingsVault;

    address public user = address(1);

    function setUp() public {
        savingsVault = new SavingsVault();

        vm.deal(user, 10 ether);
    }

    function test_Deposit() public {
    vm.startPrank(user);

    savingsVault.deposit{value: 1 ether}();

    assertEq(savingsVault.getBalance(), 1 ether);

    vm.stopPrank();
}

function test_Withdraw() public {
    vm.startPrank(user);

    savingsVault.deposit{value: 1 ether}();
    savingsVault.withdraw(0.5 ether);

    assertEq(savingsVault.getBalance(), 0.5 ether);

    vm.stopPrank();
}

    function test_CannotWithdrawMoreThanBalance() public {
        vm.startPrank(user);

        savingsVault.deposit{value: 1 ether}();

        vm.expectRevert("Insufficient balance");
        savingsVault.withdraw(2 ether);

        vm.stopPrank();
    }
}