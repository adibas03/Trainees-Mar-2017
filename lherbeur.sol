pragma solidity ^0.4.10;
contract Lherbeur {
    
    address public owner;
    
    struct Info
    {
    bytes32 dapChoice;
    bytes32 expectedRole;
    uint yearsOfExperience;
    bytes32 progLang;
    bytes32 assetQuality;
    bytes32 whatIsSuperDAO;
    }
    
    Info info;
    
    function LherbeurContract()
    {
        owner = msg.sender;
    }
   
    modifier accessGrant(address _executor)
    {
        if (_executor != owner)
            throw;
        
        _;
    }
    
    function setInfo(bytes32 dap, bytes32 role, uint yearsExp, bytes32 lang, bytes32 quality, bytes32 superDAOWhat) 
      accessGrant (owner)
    { 
        info.dapChoice = dap; 
        info.expectedRole = role; 
        info.yearsOfExperience = yearsExp; 
        info.progLang = lang; 
        info.assetQuality = quality; 
        info.whatIsSuperDAO = superDAOWhat; 
    }
   
   function getInfo() public constant 
   accessGrant (owner)
   returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32) 
    { 
        return (info.dapChoice, info.expectedRole, info.yearsOfExperience, info.progLang, info.assetQuality, info.whatIsSuperDAO); 
    }
    
    
}
