// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract IterableMapping {

    mapping(uint => string) iMap;
    uint[] keyStore;

    function set(uint _index, string calldata _data) public {
        keyStore.push(_index);
        iMap[_index] = _data;
    }

    function iterateOverMapping() public view returns(string memory _value) {
        for(uint i=0; i<keyStore.length; i++) {
            if(i == 2) {
                _value = iMap[i];
                return _value;
            }
        }
    }



    // contract end
}