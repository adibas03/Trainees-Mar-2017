pragma solidity ^0.4.10;


//Michael Aigboeghian
//Corrected code for SuperDAO test 03 April, 2017

contract myValues{
    
    address owner;
    function myValues(){
        owner = msg.sender;
    }

    struct MyInfo{
        bytes32 DappChoice;//Pokereum or tokenizedTorrent
	      bytes32 roleOrg; //Role in organization
	      uint experience; //Years of experience
	      bytes32 langOfExperience; //Programming language of experience
	      bytes32 assetQuality; //Most valuable asset quality to SuperDAO
	      bytes32 SuperDAO; //About SuperDAO
    }
    
    MyInfo myn;
    
    modifier justMe () { //Check if msg.sender is owner else throw
        if(owner != msg.sender)
        throw;
        _;
    }
    
    function setValues(bytes32 choice, bytes32 role, uint expr, bytes32 lng, bytes32 qual, bytes32 dao) justMe { //
        myn.DappChoice = choice;
	      myn.roleOrg = role; 
	      myn.experience = expr; 
	      myn.langOfExperience = lng;
	      myn.assetQuality = qual; 
	      myn.SuperDAO = dao; 
        
        
        
    }
    
    
    function getValues() returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32) {
        return(
        myn.DappChoice,
	      myn.roleOrg,
	      myn.experience, 
	      myn.langOfExperience,
	      myn.assetQuality,
	      myn.SuperDAO) ;
    }
    
    function (){
        throw;
    }
}
