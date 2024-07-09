// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

contract Exercise2 {
    struct Box {
        uint256 width;
        uint256 length;
        uint256 height;
    }

    Box[] public boxes;

    function addBox(uint256 _width, uint256 _length, uint256 _height) public {
        Box memory newBox = Box(_width, _length, _height);
        boxes.push(newBox);
    }
}
