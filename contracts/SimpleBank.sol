
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16 <0.9.0;

contract SimpleBank {
  // state variables, visibility keywords
    mapping(address => uint) internal balances ; // 'internal'
    mapping(address => bool) public enrolled; // 'public'
    address public owner = msg.sender; // 'public'
  // events, arguments
    event LogEnrolled(address accountAddress); // 'address accountAddress'
    event LogDepositMade(address accountAddress, uint depositAmount); // 'accountAddress', 'depositAmount'
    event LogWithdrawal(address accountAddress, uint withdrawAmount, uint newBalance); // 'accountAddress', 'withdrawAmount', 'newBalance'

  // fallback function
    function() external payable {
        revert();
    }
    // fallback() external payable {
    //     revert();
    // }
    // receive() external payable {
    //     revert();
    // }

    function getBalance() public returns(uint) { /// @notice get balance
      return balances[msg.sender]; /// @return the balance of the user
    }
    function enroll() public returns(bool) {
      enrolled[msg.sender] = true; /// @notice enroll customer with bank
      emit LogEnrolled(msg.sender); // emit appropriate event
      return enrolled[msg.sender]; /// @return users enrolled status
    }
    function deposit() public payable returns(uint) {
      require(enrolled[msg.sender] == true, "User is not enrolled."); /// @notice deposit ether into bank
      balances[msg.sender] += msg.value;
      emit LogDepositMade(msg.sender, msg.value);
      return balances[msg.sender]; /// @return the balance of the user after the deposit is made
    }
    function withdraw(uint withdrawAmount) public returns(uint) {
      require(balances[msg.sender] >= withdrawAmount, "Insufficient balance."); /// @notice withdraw ether from bank
      msg.sender.transfer(withdrawAmount); /// @param withdrawAmount amount you want to withdraw
      balances[msg.sender] -= withdrawAmount; /// @dev this does not return any excess ether sent to it
      emit LogWithdrawal(msg.sender, withdrawAmount, balances[msg.sender]); 
      return balances[msg.sender]; /// @return the balance remaining for the user
    }
}
