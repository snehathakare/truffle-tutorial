// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract SimpleStorage {
    uint256 data;

    function setData(uint256 _data) public {
        data = _data;
    }

    function displayData() public view returns (uint256) {
        return data;
    }
}
