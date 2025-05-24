
/*ATIVIDADE 1
Você deve escrever uma consulta SQL que atenda os seguintes critérios:

Filtrar apenas os clinetes que moram nas seguintes cidades:

-Rio de Janeiro
-México D.F.
-London
-Buenos Aires

Entre os clientes dessas cidades, selecionar apenas aqueles cujo o nome começa com a letra "A"
A consulta deve exibir a quantidade de clientes por cidade.*/

/*1*/
SELECT * FROM Customers 
	WHERE city IN ("Rio de Janeiro","México D.F.", "London", "Buenos Aires")
    AND CustomerName LIKE "A%"
/*Exemplo real sobre a atividade*/ 


/*Outros exemplos que podemos utilizar*/
/*2*/
SELECT COUNT (*) FROM Customers 
	WHERE city IN ("Rio de Janeiro","México D.F.", "London", "Buenos Aires")
    AND CustomerName LIKE "A%"
/*2-Função para contar apenas*/

/*3*/
SELECT COUNT(*), City FROM Customers 
	WHERE city IN ("Rio de Janeiro","México D.F.", "London", "Buenos Aires")
   AND CustomerName LIKE "A%"
     GROUP BY City
/*3-Função Count, para contar, incluindo a coluna que desejo visualizar, incluindo COUNT e GROUP BY*/

--------------------------------------------------------------------------------------------
  
/*ATIVIDADE 2
Escreva uma consulta SQL que atenda os seguintes critérios:
Liste o nome dos clientes (CustomerName) e a cidade (City).
Filtre apenas os clientes que moramno país "Brazil".
Ordene o resultadoem ordem alfábetica pelo nome do cliente.*/


SELECT CustomerName, country FROM Customers 
	 WHERE country IN ("Brazil")
    ORDER BY 
     CustomerName ASC;

---------------------------------------------------------------------------------------------
/*ATIVIDADE 3
Escreva uma consulta SQL que atenda os seguintes critérios:
Liste o nome dos clientes (CustomerName) e o nome do contato (ContactName).
Filtre apenas os clientes cujo o nome do contato começa com a letra "M"
Ordene o resultado pela cidade (City) Alfabetico.*/

SELECT CustomerName, ContactName FROM Customers
   WHERE CustomerName LIKE "M%"
      ORDER BY city ASC;

----------------------------------------------------------------------------------------------







