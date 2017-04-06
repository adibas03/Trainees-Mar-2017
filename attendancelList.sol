pragma solidity ^0.4.10;

contract Attendance {
    address owner;
    
    struct attList{
        string dayName;
        string sessionName;
        bytes32 attendList;
        uint date;  //dd
        uint month; //mm
        uint year;  //yyyy
    }
    
    struct attDetails{
        string trnName;
        uint tFare;
        bool farePaid;
    }
    
    mapping (uint => attList) attlst;
    mapping (uint => attDetails) attD;
    uint attNo;
    
    
  
    function Attendance(){
        owner = msg.sender;        
        if (attNo < 1) attNo = 0;
    }
    
    modifier access {
        if(msg.sender != owner)
        throw;
        _;
    }

    function createAtt(string attname, uint fare, bool fareStatus) access returns (uint attNo) {
        attNo++;
       attD[attNo] = attDetails({
            trnName: attname,
            tFare: fare,
            farePaid: fareStatus
            });
            return attNo;
    }
    
    function getAtt (uint attNo) returns (string n, uint f, bool fp){
        n = attD[attNo].trnName;
        f = attD[attNo].tFare;
        fp = attD[attNo].farePaid;
    }
    
    function addSession(string dayName, string sessionName, bytes32 attendList, uint date, uint month, uint year) access {
        
    }
    
    function(){
        throw;
    }

}
