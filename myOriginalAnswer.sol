ragma solidity ^0.4.10;


contract DaoValue {
    
	bytes32 DappChoice;//Pokereum or tokenizedTorrent
	bytes32 roleOrg; //Role in organization
	uint experience; //Years of experience
	bytes32 langOfExperience; //Programming language of experience
	bytes32 assetQuality; //Most valuable asset quality to SuperDAO
	bytes32 SuperDAO; //About SuperDAO
	
	function setValues(bytes32 _choice, bytes32 _role, uint _expr, bytes32 _lang, bytes32 _qual, bytes32 _dao) {
	        DappChoice  = _choice;
            roleOrg = _role;
            experience = _expr;
            langOfExperience = _lang;
            assetQuality = _qual;
            SuperDAO = _dao;
    }
    
       
    function get() public returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32) {
            return (DappChoice, roleOrg, experience, langOfExperience, assetQuality, SuperDAO);
        
    }
    
    function (){
        throw;
    }
}
