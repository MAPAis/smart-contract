pragma solidity ^0.4.0;
// This tells the compiler that the contract is written for solidity compiler 0.4.0 or greater

/*
Simple contract that returns a greeting
*/

 contract Hodor{
   address creator; // store address of accounts
   string greeting;

   // Constructor for contract Hodor, involked only once when the contract is deployed in ethereum blockchain
   function Hodor(string _greeting){
     greeting = _greeting;
     creator = msg.sender;  //msg is a global variable that provide a information such as the address of the account sending it
   }


   //returns the current greeting
   function greet() constant returns (string){
     return greeting;
   }

   // changes the current greeting
   function setGreeting(string _greeting){
     greeting = _greeting;
   }
 }
