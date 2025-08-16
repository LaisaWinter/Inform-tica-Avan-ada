const operacao = 'subtracao';

const numero1 = 10;
const numero2 = 7;

switch (operacao) {
    case 'multiplicacao':
       console.log(numero1*numero2)
       break;
    case 'divisao':
        console.log(numero1/numero2)
       break;
    case 'adicao':
        console.log(numero1+numero2)
       break;
    case 'subtracao':
         console.log(numero1-numero2)
       break;
    default:
         console.error('Operação inválida')
}

===================================
const prompt = require ('prompt-sync') ({sigint: true});

const nome = prompt ('Digite o seu nome:')

console.log('O seu nome é' + nome)

=========================================
const prompt = require ('prompt-sync') ({sigint: true});

const nome = Number(prompt) ('Digite o seu nome:')

console.log(nome)
========================================
const prompt = require ('prompt-sync') ({sigint: true});

const nome = prompt ('Digite o seu nome:')
const idade = prompt ('Digite sua idade:')

//dois exemplos//
console.log('Olá, meu nome é' + nome + ' e eu tenho' + idade + ' anos')
console.log(`Olá, meu nome é ${nome} e eu tenho ${idade} anos`)
