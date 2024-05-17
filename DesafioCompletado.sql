select * from Filmes
--***************************************************************************************************
--1.
select Nome, Ano from Filmes
--***************************************************************************************************
--2.
select Nome, Ano, Duracao from Filmes order by Ano asc
--***************************************************************************************************
--3.
select Nome, Ano, Duracao from filmes where Nome = 'De Volta para o Futuro'
--***************************************************************************************************
--4.
select * from Filmes where Ano = '1997' 
--***************************************************************************************************
--5.
select * from Filmes where Ano > 2000 
--***************************************************************************************************
--6.
select * from Filmes where Duracao > 100 and Duracao <150 order by Duracao asc
--***************************************************************************************************
--7.
select Ano, count (*) Quantidade from Filmes where Ano <> '' 
group by Ano 
order by Quantidade desc
--***************************************************************************************************
--8
Select PrimeiroNome, UltimoNome from Atores where Genero ='M'
--***************************************************************************************************
--9
Select PrimeiroNome, UltimoNome from Atores where Genero ='F'
order by PrimeiroNome
--***************************************************************************************************
--10
Select Nome,Genero from Filmes
inner join FilmesGenero on Filmes.id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
--***************************************************************************************************
--11
Select Nome,Genero from Filmes
inner join FilmesGenero on Filmes.id = FilmesGenero.IdFilme
inner join Generos on FilmesGenero.IdGenero = Generos.Id
where Genero = 'Mistério'

--***************************************************************************************************
--12
select Nome, PrimeiroNome, UltimoNome, Papel from Atores
inner join ElencoFilme on Atores.Id = ElencoFilme.IdAtor
inner join Filmes on ElencoFilme.IdFilme = Filmes.Id
