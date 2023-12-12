//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8; //Hey its my first contract
contract SimpleStorage {
    //Data Types bool,uint,int,address,bytes
    // bool hasFavoiteNumber = true;
    // uint256 favnumber = 123;
    // string favnumtxt = "Five";
    // //address myadress = addressfrom metamask;
    // bytes32 favBytes = "cat";

    //Fuctions or Methods execute a subset of code when called
    //Functions has 4 visibility specifiers public,private,external,internal
    //
    uint256 public favnumber;
    mapping(string => uint256) public nameTofavNumber;
    People[] public people;
    struct People{
        uint256 favnumber;
        string name;
    }
    function  store(uint256 _favnumber) public {
      favnumber = _favnumber;
    }
    //View{read statement} & Pure{disallow to read frm blockchain} fuctions in solidity dont spend gas
    function retrieve() public view returns(uint256){
        return favnumber;
    } 
    //So to store multiple peoples info use an ARRAY DS
   // uint256[]  public favnumber;
    function addPerson(string memory _name,uint256 _favnumber) public {
        people.push(People(_favnumber,_name));
        nameTofavNumber[_name] = _favnumber;
    }
    //EVM can access and store info in six places : Stack,Memory,Storage,Calldata,Code,Logs
    //Calldata and Memory are temprory variables that can be modified but storage is permanent variable that cannot be modified
    //int doesnt need memory to assign ,string is secretly an array so need to call memory

    //Mapping in sol is a DS where a key is mapped to single value
}

