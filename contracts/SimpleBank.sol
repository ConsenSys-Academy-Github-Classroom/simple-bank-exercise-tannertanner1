
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.16 <0.9.0;

contract SimpleBank {

  // state variables, visibility keywords
    mapping (address => uint) internal balances ; // 'internal'
    mapping (address => bool) public enrolled; // 'public'
    address public owner = msg.sender; // 'public'

  // events, arguments
    event LogEnrolled(address accountAddress); // argument = 'address accountAddress'

    // Add 2 arguments for this event, an accountAddress and an amount
    event LogDepositMade();

    // Create an event called LogWithdrawal
    // Hint: it should take 3 arguments: an accountAddress, withdrawAmount and a newBalance 
    event LogWithdrawal();

    /* Functions
     */

    // Fallback function - Called if other functions don't match call or
    // sent ether without data
    // Typically, called when invalid data is sent
    // Added so ether sent to this contract is reverted if the contract fails
    // otherwise, the sender's money is transferred to contract
    
    // Expected a state variable declaration. If you intended this as a fallback function or a function to handle plain ether transactions, use the "fallback" keyword or the "receive" keyword instead.
    // fallback() external payable {}
    // receive() external payable {}
    function () external payable {
        revert();
    }

    /// @notice Get balance
    /// @return The balance of the user
    function getBalance() public returns(uint) {
      // 1. A SPECIAL KEYWORD prevents function from editing state variables;
      //    allows function to run locally/off blockchain
      // 2. Get the balance of the sender of this transaction
    }

    function enroll() public returns(bool) {
      enrolled[msg.sender] = true; /// @notice enroll customer with bank
      emit LogEnrolled(msg.sender); // emit appropriate event
      return enrolled[msg.sender]; /// @return users enrolled status
    }

    /// @notice Deposit ether into bank
    /// @return The balance of the user after the deposit is made
    function deposit() public returns(uint) {
      // 1. Add the appropriate keyword so that this function can receive ether
    
      // 2. Users should be enrolled before they can make deposits

      // 3. Add the amount to the user's balance. Hint: the amount can be
      //    accessed from of the global variable `msg`

      // 4. Emit the appropriate event associated with this function

      // 5. return the balance of sndr of this transaction
    }

    /// @notice Withdraw ether from bank
    /// @dev This does not return any excess ether sent to it
    /// @param withdrawAmount amount you want to withdraw
    /// @return The balance remaining for the user
    function withdraw(uint withdrawAmount) public returns(uint) {
      // If the sender's balance is at least the amount they want to withdraw,
      // Subtract the amount from the sender's balance, and try to send that amount of ether
      // to the user attempting to withdraw. 
      // return the user's balance.

      // 1. Use a require expression to guard/ensure sender has enough funds

      // 2. Transfer Eth to the sender and decrement the withdrawal amount from
      //    sender's balance

      // 3. Emit the appropriate event for this message
    }
}
