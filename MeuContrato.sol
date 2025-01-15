// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuPrimeiroContrato {
    string public mensagem;

    constructor(string memory _mensagemInicial) {
        mensagem = _mensagemInicial;
    }

    function atualizarMensagem(string memory _novaMensagem) public {
        mensagem = _novaMensagem;
    }
}
