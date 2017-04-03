pragma solidity ^0.4.10;

contract Owned {

    function Owned () { owner = msg.sender; }
    address owner;
    
    uint private data;
    struct Owner {
        bytes32 choice;
        bytes32 role;
        uint experience;
        bytes32 language;
        bytes32 asset;
        bytes32 whatis;
    }
    
    function getChoice () constant returns (bytes32 choice) {
        choice = "tokenizedTorrentSystem";
        return choice;
    } 
    
    function getRole () constant returns (bytes32 role) {
        role = "superDAO Trainee";
        return role;
    }
    
    function getExperience () constant returns (uint experience) {
        experience = 1;
        return experience;
    }
    
    function getLanguage () constant returns (bytes32 language) {
        language = "JavaScript";
        return language;
    }
    
    function getAsset () constant returns (bytes32 asset) {
        asset = "Value Adding Asset";
        return asset;
    }
    
    function getWhatis () constant returns (bytes32 whatis) {
        whatis = "SuperDAO is an Ethereum DAO";
        return whatis;
    }
    
    function () {
        if (msg.sender != owner)
        throw;
    }    
}