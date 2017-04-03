pragma solidity ^0.4.9;

contract aboutme{
    
    address public owner;
    uint count;
    
    struct justme{
            bytes32 dapp_choice;
            uint experience;
            bytes32 role;
            bytes32 program_language_experience;
            bytes32 asset_quality;
            bytes32 whatissuperdao;
    }
    justme[] mybio;
    
    
    function aboutme(){
        owner = msg.sender;
        count = 0;
    }
    
    function set(bytes32 choice,uint exp, bytes32 myrole, bytes32 languages, bytes32 asset, bytes32 superdao )
        returns (bool){
        
         if(msg.sender != owner ) 
         {return;}
         
        mybio[count].dapp_choice = choice;
        mybio[count].experience = exp;
        mybio[count].role = myrole;
        mybio[count].program_language_experience = languages;
        mybio[count].asset_quality = asset;
        mybio[count].whatissuperdao = superdao;
         
        return true;
    }
    
    function get(uint sn) constant returns(bytes32,uint,bytes32,bytes32,bytes32,bytes32){
        return(
            mybio[sn].dapp_choice,
            mybio[sn].experience,
            mybio[sn].role,
            mybio[sn].program_language_experience,
            mybio[sn].asset_quality,
            mybio[sn].whatissuperdao
            );
        
    }
    
}
