// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

 //Inheritance
//Factories
//Inreractionism

    

contract Ownable{
    address owner;
    modifier onlyOwner(){
        require(msg.sender == owner,"Must be the owner");
        _;
    }

    constructor()  {
        owner = msg.sender;

    }



}

contract SecretVault{
    string secret;
    constructor(string memory _secret)  {
        secret = _secret;
    }

    function getSecret() public view returns  (string memory){
        return secret;
    }


}

contract MyContract is Ownable{

   


    address secretVault;

    
    constructor(string memory _secret)  {
        SecretVault _secretvault = new SecretVault(_secret);
        secretVault = address(_secretvault);
        super; //calls the parent constructor
        
    }

    function getSecret() public view onlyOwner returns  (string memory){
        return SecretVault(secretVault).getSecret();

    }

    
}

