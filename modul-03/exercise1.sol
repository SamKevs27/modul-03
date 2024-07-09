// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

contract Exercise1 {
    uint256 number;

    function calculateSum(int256 a, int256 b) public pure returns (uint256) {
        require(a + b >= 0, "Sum must be non-negative");
        return uint256(a + b);
    }

    function retrieve() public view returns (uint256) {
        return number;
    }

    function store(uint256 num) public {
        int256 a = int256(number);
        int256 b = int256(num);
        number = calculateSum(a, b);
    }
}
