
// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.18;

contract DogCoin {

    uint totalSupply = 2000000;
    address owner ;

    struct Payment {
        uint amount;
        address recipient;
    }

    mapping (address => uint) balances;
    mapping (address => Payment[]) payments;

    constructor() {
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "sorry but you are not the owner");
        _;
    }

    event updateSupply(uint supplyUpdate, string message);
    event transferTaken(uint _amount, address _recipient);

    function getTotalSupply() public view returns(uint) {
        return totalSupply;
    }

    function upTotalSupply() public onlyOwner {
        totalSupply += 1000;
        emit updateSupply(totalSupply, "the total supply has been updated");
    }

    function getBalances(address _address) public view returns(uint) {
        return balances[_address];
    }

    function transfer(uint _amount, address _recipient) public {
        require(balances[msg.sender] >= _amount, "insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_recipient] += _amount;
        payments[msg.sender].push(Payment({amount: _amount, recipient: _recipient}));
        emit transferTaken(_amount, _recipient);
    }

    function getPayments(address _user) public view returns(Payment[] memory) {
        return payments[_user];
    }
}