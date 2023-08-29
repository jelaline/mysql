use livraria;



select autor, Sexo_Autor, Editora
from livros;  -- filtra somente as colunas que eu preciso

select autor, Ano_Publicacao from livros
where Ano_Publicacao between '2018' and '2015'; -- especifica qual valor você quer escolher

select autor, editora, ano_publicacao from livros
where Ano_Publicacao in ('2018', '2017') -- mostra os dados que está dentro dos mesmos valores
order by Ano_Publicacao;

select * from livros
where autor > 2017 and Autor < 2015;

-- or serve pra dizer que serve um ou outro


