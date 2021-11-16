pragma soldiity ^0.8.4;

contract InterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _value) external {
        balances[_key] = _value;

        if (!inserted[_key]) {
        inserted[_key] = true;
        keys.push(_key);
       }
    }

    function getsize() external view returns (uint) {
        return balances[keys[0]];
    }

    function get (uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }
}
