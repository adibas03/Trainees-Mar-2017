pragma solidity ^0.4.9;

contract aboutme{
    
    address public owner;
    
    struct justme{
            bytes32 dapp_choice;
            uint experience;
            bytes32 role;
            bytes32 program_language_experience;
            bytes32 asset_quality;
            bytes32 whatissuperdao;
    }
    justme mybio;
    
    
    function aboutme(){
        owner = msg.sender;
        
    }
    
    function set(bytes32 choice,uint exp, bytes32 myrole, bytes32 languages, bytes32 asset, bytes32 superdao )
        returns (bool){
        
         if(msg.sender != owner ) 
         {return;}
         
        mybio.dapp_choice = choice;
        mybio.experience = exp;
        mybio.role = myrole;
        mybio.program_language_experience = languages;
        mybio.asset_quality = asset;
        mybio.whatissuperdao = superdao;
         
        return true;
    }
    
    function get() constant returns(bytes32,uint,bytes32,bytes32,bytes32,bytes32){
        return(
            mybio.dapp_choice,
            mybio.experience,
            mybio.role,
            mybio.program_language_experience,
            mybio.asset_quality,
            mybio.whatissuperdao
            );
        
    }
    
}
