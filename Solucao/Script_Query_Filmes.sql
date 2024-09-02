-- 1

SELECT
    [Nome],
    [Ano]
FROM
    [dbo].[Filmes];


-- 2

SELECT
    [Nome],
    [Ano],
    [Duracao]
FROM
    [dbo].[Filmes]
ORDER BY
    [Ano];


-- 3

SELECT
    [Nome],
    [Ano],
    [Duracao]
FROM
    [dbo].[Filmes]
WHERE
    [Nome] = 'De Volta para o Futuro';


-- 4

SELECT
    [Nome],
    [Ano],
    [Duracao]
FROM
    [dbo].[Filmes]
WHERE
    [Ano] = 1997;


-- 5

SELECT
    [Nome],
    [Ano],
    [Duracao]
FROM
    [dbo].[Filmes]
WHERE
    [Ano] > 2000;


-- 6

SELECT
    [Nome],
    [Ano],
    [Duracao]
FROM
    [dbo].[Filmes]
WHERE
    [Duracao] > 100
AND
    [Duracao] < 150
ORDER BY
    [Duracao];


-- 7

SELECT
    [Ano],
    COUNT(Duracao) AS Quantidade
FROM
    [dbo].[Filmes]
GROUP BY
    [Ano]
ORDER BY
    [Quantidade] DESC;


-- 8

SELECT
    [Id],
    [PrimeiroNome],
    [UltimoNome],
    [Genero]
FROM
    [dbo].[Atores]
WHERE
    [Genero] = 'M';


-- 9

SELECT
    [Id],
    [PrimeiroNome],
    [UltimoNome],
    [Genero]
FROM
    [dbo].[Atores]
WHERE
    [Genero] = 'F'
ORDER BY
    [PrimeiroNome];


-- 10

SELECT
    [dbo].[Filmes].[Nome],
    [dbo].[Generos].[Genero]
FROM
    [dbo].[Filmes]
INNER JOIN
    [dbo].[FilmesGenero]
ON
    [dbo].[Filmes].[Id] = [dbo].[FilmesGenero].[IdFilme]
INNER JOIN
    [dbo].[Generos]
ON
    [dbo].[Generos].[Id] = [dbo].[FilmesGenero].[IdGenero];


-- 11

SELECT
    [dbo].[Filmes].[Nome],
    [dbo].[Generos].[Genero]
FROM
    [dbo].[Filmes]
INNER JOIN
    [dbo].[FilmesGenero]
ON
    [dbo].[Filmes].[Id] = [dbo].[FilmesGenero].[IdFilme]
INNER JOIN
    [dbo].[Generos]
ON
    [dbo].[Generos].[Id] = [dbo].[FilmesGenero].[IdGenero]
WHERE
    [dbo].[Generos].[Genero] = 'Mistério';


-- 12

SELECT
    [dbo].[Filmes].[Nome],
    [dbo].[Atores].[PrimeiroNome],
    [dbo].[Atores].[UltimoNome],
    [dbo].[ElencoFilme].[Papel]
FROM
    [dbo].[Filmes]
INNER JOIN
    [dbo].[ElencoFilme]
ON
    [dbo].[Filmes].[Id] = [dbo].[ElencoFilme].[IdFilme]
INNER JOIN
    [dbo].[Atores]
ON
    [dbo].[Atores].[Id] = [dbo].[ElencoFilme].[IdAtor];
