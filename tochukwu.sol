pragma solidity 0.4.10;
    contract Danielexam {
        function Danielexam () {
            owner = msg.sender;
            uint  creationTime = now;
        }
    address owner;
    
     struct Details {
         bytes32 dappChoice;
         bytes32 role;
         uint experience;
         bytes32 languageofuse;
         bytes32 accessQuality;
         bytes32 whatisSuperdao;
     }
     
     mapping (uint => Details) list;
     Details d = list[0];
     
     function check (){
         if(msg.sender != owner) throw;
     }
     
    function setDetails (bytes32 dappChoice, bytes32 role, uint experience, bytes32 langaugeofuse, bytes32 accessQuality, bytes32 whatisSuperdao){
     check();
     d.dappChoice = dappChoice;
     d.role = role;
     d.experience = experience;
     d.accessQuality = accessQuality;
     d.languageofuse;
     d.whatisSuperdao = whatisSuperdao;
    }
    function getDetails ()constant returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32){
        return(
            d.dappChoice,
            d.role,
            d.experience,
            d.accessQuality,
            d.languageofuse,
            d.whatisSuperdao);
    }
    }
     
