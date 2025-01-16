// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuPrimeiroContrato {
    string public mensagem;
    // boolean, unit, int address, byte
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 5;
    // string favoriteNumberInText = "five";
    // int256 favoriteInt = -5;
    // address myAddress = 0x87769876987569876871232112312311236;
    //endereço_da_carteira
    // bytes32 favoriteBytes = "cat";
    // favorite number initialize zero 0
    uint256 public favoriteNumber;

    //FUNCTIONS
    //public(getter functions) private external internal: visible only the contract
    //call function cost transaction unit gas
    //more stuff in your function the more gas it cost
    // View and pure function ,when called alone, don´t spend gas

    constructor(string memory _mensagemInicial) {
        mensagem = _mensagemInicial;
    }

    function atualizarMensagem(string memory _novaMensagem) public {
        mensagem = _novaMensagem;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // function something() public {
    //     testVar = 6; //?? not work
    // }

    // View ,Pure disallow modification on state, additionally disallow you read from blockchain
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}
