pragma solidity ^0.4.10;

contract application {


    function application () {
        owner = msg.sender;
    }

    address owner;

    struct Details {
        bytes32 dappChoice;
        bytes32 role;
        uint experience;
        bytes32 languageOfExperience;
        bytes32 assetQuality;
        bytes32 whatIsSuperDAO;
    }

    mapping (uint => Details) list;

    modifier check () {
        if (msg.sender != owner) throw;
        _;
    }


    function setDetails (bytes32 dappChoice, bytes32 role, uint experience, bytes32 language, bytes32 assetQuality, bytes32 whatIsSuperDAO) check {
        list[0].dappChoice = dappChoice;
        list[0].role = role;
        list[0].experience = experience;
        list[0].languageOfExperience = language;
        list[0].assetQuality = assetQuality;
        list[0].whatIsSuperDAO = whatIsSuperDAO;
    }

    function getDetails () constant returns (bytes32, bytes32, uint, bytes32, bytes32, bytes32) {
        return(
            list[0].dappChoice,
            list[0].role,
            list[0].experience,
            list[0].languageOfExperience,
            list[0].assetQuality,
            list[0].whatIsSuperDAO
            );
    }


}
