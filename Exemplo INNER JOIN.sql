SELECT
     estado.id,
	 estado.nome AS estado,
	 pais.nome AS pais,
	 cidade.nome As cidade
FROM
    laisa.estado
INNER JOIN
    public.pais
	    ON estado.id_pais = pais.id
INNER JOIN
    public.cidade
	    ON cidade.id_estado = estado.id
