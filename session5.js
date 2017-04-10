

var initweb3content = function() {
  Web3 = require('web3');
      this.address = "0x09a004a0920ce602F3B1bEa10B427cEf1A2A9eA4",
      this.abi = [{"constant":false,"inputs":[{"name":"sessionid","type":"uint256"},{"name":"attendeeid","type":"uint256"}],"name":"feesPaid","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"weekDay","type":"uint256"},{"name":"sessionStart","type":"uint256"},{"name":"sessionName","type":"bytes32"}],"name":"newAttendance","outputs":[{"name":"attendanceID","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"sessionid","type":"uint256"}],"name":"getSessionFeesPaid","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"AttendanceID","type":"uint256"},{"name":"name","type":"bytes32"},{"name":"tfare","type":"uint256"},{"name":"paid","type":"bool"}],"name":"fillAttendance","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getHour","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getWeekday","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint16"},{"name":"month","type":"uint8"},{"name":"day","type":"uint8"},{"name":"hour","type":"uint8"},{"name":"minute","type":"uint8"}],"name":"toTimestamp","outputs":[{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getDay","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint16"},{"name":"month","type":"uint8"},{"name":"day","type":"uint8"},{"name":"hour","type":"uint8"}],"name":"toTimestamp","outputs":[{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getSecond","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint16"},{"name":"month","type":"uint8"},{"name":"day","type":"uint8"}],"name":"toTimestamp","outputs":[{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"sessionid","type":"uint256"},{"name":"attendeeId","type":"uint256"}],"name":"attendanceList","outputs":[{"name":"","type":"bytes32"},{"name":"","type":"uint256"},{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint16"},{"name":"month","type":"uint8"},{"name":"day","type":"uint8"},{"name":"hour","type":"uint8"},{"name":"minute","type":"uint8"},{"name":"second","type":"uint8"}],"name":"toTimestamp","outputs":[{"name":"timestamp","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"sessionend","type":"uint256"},{"name":"sessionid","type":"uint256"}],"name":"setSessionEnd","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getYear","outputs":[{"name":"","type":"uint16"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getMonth","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint16"}],"name":"isLeapYear","outputs":[{"name":"","type":"bool"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"year","type":"uint256"}],"name":"leapYearsBefore","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"month","type":"uint8"},{"name":"year","type":"uint16"}],"name":"getDaysInMonth","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"attendanceID","type":"uint256"}],"name":"getAttendance","outputs":[{"name":"","type":"uint256"},{"name":"","type":"string"},{"name":"","type":"uint256"},{"name":"","type":"uint256"},{"name":"","type":"bytes32"},{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"setSessionStart","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[{"name":"timestamp","type":"uint256"}],"name":"getMinute","outputs":[{"name":"","type":"uint8"}],"payable":false,"type":"function"},{"inputs":[],"payable":false,"type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"name":"sessionName","type":"bytes32"},{"indexed":false,"name":"day","type":"string"},{"indexed":false,"name":"date","type":"uint256"}],"name":"sessionStarted","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"","type":"bytes32"},{"indexed":false,"name":"","type":"bytes32"}],"name":"newAttendee","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"sessionName","type":"bytes32"},{"indexed":false,"name":"sessionStop","type":"uint256"}],"name":"sessionEnded","type":"event"}],
      this.contract;

    if(typeof web3 != "undefined")
    this.web3 = new Web3(web3.currentProvider);
     else {
    this.web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
     }

     this.web3.eth.defaultAccount = this.web3.eth.accounts[0];
     this.contract = this.web3.eth.contract(this.abi);
     this.contract = this.contract.at(this.address);
 }


initweb3.prototype = {
setTest:  function (){
    contract.setTest(callbackFx);
  },

 getTest: function (){
   contract.getTest(callbackFx);
 },

 setTrainee: function (dapp,role,eyears,language,assetQuality,whatISSuperDAO){

   function resFunc(res){
     getTrainee();
   }

   function compFunc(err,res){
     callbackFx(err,res,anyError,resFunc)
   }

   contract.setTrainee(compFunc);
 },

getTrainee: function (){

   function resFunc(res){
     for(i=0;i<res.length;i++){
       if(i==2)
       console.log(Number(res[i]));
       else
       console.log(web3.toAscii(res[i]));
     }
   }

   function compFunc(err,res){
     callbackFx(err,res,anyError,resFunc)
   }

   this.contract.getTrainee(compFunc);
 },

callbackFx: function (err,res,errFunc,resFunc){
   if(err){
     console.log('Err:',err);
     if(errFunc)errFunc(err)
   }
   else{
     console.log('Resp:',res);
     if(resFunc)resFunc(res)
   }
 },

 anyError: function (err){
   if(typeof err != 'string')
    console.log("Do something more")
  else
    console.log("All actions completed")
 }
}

var initweb3 = new initweb3();



//setTest();
//getTest();
//setTrainee("Pokereum","Developer","4","Java","Innovative","The Best DAO ever");
getTrainee();
