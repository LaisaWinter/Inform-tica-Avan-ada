/*W3 SCHOOLS*/

/*Exemplos de pesquisas na tabela (CUSTOMERS)*/

/*1:*/
SELECT * FROM Customers WHERE city = "Rio de Janeiro";  /*(tudo)*/

/*2:*/ 
SELECT * FROM Customers WHERE city LIKE "México D.F%"; /*(com a cidade México, buscando de outra forma)*/

/*3:*/
SELECT CustomerName, ContactName FROM Customers WHERE city = "Rio de Janeiro"; /*(título das coluna que desejo observar)*/

/*4:*/
SELECT * FROM Customers WHERE city IN ("Berlin", "Rio de Janeiro", "México D.F.") /*(outra forma de realizar a pesquisa das cidades)*/
----------------------------------------------------------------------------------------------------------

/*COMO ORDENAR EM ORDEM ALFABÉTICA?*/
SELECT * FROM Customers WHERE city IN ("Berlin", "Rio de Janeiro", "México D.F.") ORDER BY city ASC

/*Segundo exemplo de como ordenar coluna:*/
SELECT * FROM Customers WHERE city IN ("Berlin", "Rio de Janeiro", "México D.F.") ORDER BY CustomerName ASC
----------------------------------------------------------------------------------------------------------

/*EXEMPLO DE COMO ALTERAR O NOME (TÚTULO) DE UMA COLUNA:*/
SELECT 
      CustomerName AS cliente,
      ContactName AS contato,
      Address AS endereco
FROM
     Customers
WHERE city = "Rio de Janeiro";

/*ATIVIDADE 1:*/
/*Buscar na tabela nome, código postal, cidade e endereço (traduzindo para o português)*/


/*MODO QUE REALIZEI*/
SELECT 
      CustomerName AS Nome,  
      City AS Cidade,       
      PostalCode AS 'Código Postal', 
      Address AS 'Endereço'  
FROM 
     Customers (Tabela que vamos buscar os dados)
     
WHERE 
     city IN ("Torino", "Lisboa", "Nantes") 
     
ORDER BY 
        city, CustomerName ASC; 



/*MODO COMPLEXO:*/
SELECT /*(Busca)*/
      CustomerName AS Nome,  /*(Colunas)*/
      City AS Cidade,        /*(Colunas)*/
      PostalCode AS 'Código Postal',  /*(Colunas)*/
      Address AS 'Endereço'  /*(Colunas)*/
FROM /*(Qual tabela?)*/
     Customers /*(Tabela que vamos buscar os dados)*/
     
WHERE /*(Onde, Verificação)*/
     city IN /*("Torino", "Lisboa", "Nantes") (Verificação)*/
----------------------------------------------------------------------------------------------------------

/*PARA TODO INÍCIO DE BUSCA DE TABELA:*/

SELECT {COLUNAS} FROM {nome da tabela}; - Base
     
ORDER BY /*(Ordenar)*/
        city, CustomerName ASC; /*(o modo que sera ordenado, exemplo: A-Z)*/


