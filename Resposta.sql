*** 1 - Buscar o nome e ano dos filmes
select Nome, Ano from filmes

*** 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano **Na imagem CONSTA o campo DURACAO também, adicionei.
select Nome, Ano, Duracao from filmes order by Ano

*** 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from filmes where Nome = 'De Volta para o Futuro'

*** 4 - Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from filmes where Ano = 1997

*** 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from filmes where Ano > 2000

*** 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from filmes where Duracao > 100 and Duracao < 150 order by Duracao asc 

*** 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(*) as quantidade from filmes group by Ano order by Quantidade desc 

*** 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome ** Na imagem do exercício retorna o Genero também, adicionei.
select PrimeiroNome, UltimoNome, Genero from Atores where genero = 'M'

*** 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from Atores where genero = 'F' order by PrimeiroNome
*** como na imagem mostrava o ID origal o correto seria:
select * from Atores where genero = 'F' order by PrimeiroNome

*** 10 - Buscar o nome do filme e o gênero
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON FG.IdGenero = G.Id

*** 11 -  Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome, G.Genero FROM Filmes F INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme INNER JOIN Generos G ON FG.IdGenero = G.Id where Genero = 'Mistério'

*** 12 -   Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes F INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme INNER JOIN Atores A ON EF.IdAtor = A.Id
