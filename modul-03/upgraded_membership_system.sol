// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.23;

contract UpgradedMembershipSystem {
    struct Member {
        uint256 id;
        string name;
        uint256 balance;
        MembershipType membershipType;
    }

    enum MembershipType {
        Basic,
        Premium,
        VIP
    }

    uint256 private memberIdCounter = 1;

    mapping(address => Member) public members;

    function addMember(string memory _name, MembershipType _type) external {
        require(members[msg.sender].id == 0, "Address is already a member");

        Member memory newMember = Member({
            id: memberIdCounter,
            name: _name,
            balance: 0,
            membershipType: _type
        });

        memberIdCounter++;

        members[msg.sender] = newMember;
    }

    function modifyMemberInfo(string memory _newName) external {
        require(members[msg.sender].id != 0, "Address is not a member");
        members[msg.sender].name = _newName;
    }

    function isMember(address _checkAddress) external view returns (bool) {
        return members[_checkAddress].id != 0;
    }
}
