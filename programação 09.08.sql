var;
let;
const;

const idade = 20;

if (idade < 18) {
  console.log ('Menor de idade');
} else {
  console.log('Maior de idade');
}

----------------------------------------------
const precoCombustivel = 5.8;
const valorAbastecido =200;

const qtdLitros = valorAbastecido / precoCombustivel

console.log(`A quantidade de litros abastecidos foi de ${qtdLitros.toFixed(2)}`)

R: A quantidade de litros abastecidos foi de 34.48
  
//*Para rodar comando: node index -> Tab -> Enter*//
------------------------------------------------------

const operacao = 'X'

  const valor1= 1;
  const valor2 = 2;

  let resultado = 0

  if (operacao == 'X') {
    resultado = valor1 * valor2
    console.log(resultado)
  } else {
    console.error ('Operação inválida')
  }

R: 2
----------------------------------------

Dividir

const operacao = '/'

  const valor1= 1;
  const valor2 = 2;

  let resultado = 0

  if (operacao == 'X') {
    resultado = valor1 * valor2
    console.log(resultado)
  } else if (operacao == '/'{
    resultado = valor1 / valor2
    console.log (resultado)
  } else {
    console.erro ('Operação inválida')
  }
----------------------------------------
    EXERCÍCIO
// Criar um algoritmo para fazer a MULTIPLICAÇÃO de 3 números

const operacao = 'X'

const valor1 = 1;
const valor2 = 2;
const valor3 = 3;

let resultado = 0

if ( operacao == 'X') {
resultado = valor1 * valor2 * valor3
console.log(resultado)
} else {
  console.error ('Operação Inválida')
}


  EXERCÍCIO
// Criar um algoritmo para fazer a SOMA de 3 números
  
const operacao = '+'

const valor1 = 1;
const valor2 = 2;
const valor3 = 3;

let resultado = 0

if ( operacao == 'X') {
resultado = valor1 * valor2 * valor3
console.log(resultado)
} else if (operacao == '+'){
  resultado = valor1 + valor2 + valor3
  console.log (resultado)
} else {
  console.error ('Operação Inválida')
}


// Criar um algoritmo para fazer a DIVISÃO de 3 números

const operacao = '/'

const valor1 = 1;
const valor2 = 2;
const valor3 = 3;

let resultado = 0

if ( operacao == 'X') {
resultado = valor1 * valor2 * valor3
console.log(resultado)
} else if (operacao == '/'){
  resultado = valor1 / valor2 / valor3
  console.log (resultado)
} else {
  console.error ('Operação Inválida')
}

