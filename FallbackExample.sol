// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FallbackExample {
    uint256 public result;

    //triggers when u try to send eth without using normal fxns like fund. Also, this will trigger only when there's no calldata here
    receive() external payable {
        result = 1;
    } 

    //this will trigger when there is calldata available.
    fallback() external payable {
        result = 2;
    }
}

 /*

    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              /   \
            yes   no
            /       \
  receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    
*/

