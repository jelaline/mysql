use livraria;

select autor, count(*) from livros
group by autor
having count(autor) >= 1 -- filtra os resultados depois de uma consulta para mostrar apenas os grupos que atendem a um criterio especifico
order by count(*);
