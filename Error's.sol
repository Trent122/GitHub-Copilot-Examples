pragma solidity ^0.8.3;

contract Error {
    function testRequire(uint _i) public pure {
        //require(_i > 0);
        //-Inputs
        //Conditions before execution
        //Retunrs values from called other contract functions 
        require( _i > 0); "Input must be great than 10;)
}

function restRevert (uint _i) public pure {
    //revert useful when the condition to check the complex
    //this code does the same as the example above
    if (i > 0) {
        revert("Input must be great than 10;)");
    }
}

uint public num;

function testRequire() public {
    num = testRequire(10);
    assert(num == 0);
}

error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if (bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}
