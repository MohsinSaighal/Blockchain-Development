// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

error NotTokenOwner();
error Lockedfor10Minutes();
contract IEC is ERC20, Ownable {
    constructor() ERC20("IEC", "IC") {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    struct UserDetail{
        address owner;
        bool isReceived;
        
    }
    
    uint256 private value;
    uint256 public remainingvalue;
    uint public currenttime;
    uint256 public  endtime;

    mapping (address => UserDetail)User;

    /*
     * @notice Method to  Mint Token 
     * @param to Address of Receiver
     * @param amount of Token
     */

    function mint(address to, uint256 amount) public onlyOwner {
        User[to] = UserDetail(to,false);
        value = (amount /100)*7;
        remainingvalue = (amount /100)*3;
        _mint(to, value);
        timestamp();
    }

    /*
     * @notice Method to  Claim 30% Locked Token
     * @notice Only Locked Token Owner Can Claim Token
     * @notice Token Can Claim Only After 10 Minutes of Mint
     */

    function claim()public{
     require(User[msg.sender].isReceived != true,"You Already Withdraw Your Token");
     if(User[msg.sender].owner != msg.sender){
         revert NotTokenOwner();
     }

     if(block.timestamp >= endtime){

      _mint(msg.sender,remainingvalue);
      
    }else{
        revert Lockedfor10Minutes();
    }
    }

    function timestamp()internal{
       currenttime = block.timestamp;
        endtime = currenttime + (10 *1 minutes);
    }


}
