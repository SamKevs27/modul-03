// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

contract MembershipSystem {
    mapping(address => bool) public members;

    function addMember(address _newMember) external {
        require(!members[_newMember], "Address is already a member");
        members[_newMember] = true;
    }

    function removeMember(address _existingMember) external {
        require(members[_existingMember], "Address is not a member");
        members[_existingMember] = false;
    }

    function isMember(address _checkAddress) external view returns (bool) {
        return members[_checkAddress];
    }
}
