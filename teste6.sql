use livraria;

show databases;

-- distinct seleciona só as linhas de forma única, sem repetir o valor da coluna.

select valor_capa, count(*) from livros
group by valor_capa
order by valor_capa; -- group by serve para unir em uma unica linha todas as linhas selecionadas que possuem um mesmo valor.

select  valor_capa from livros where valor_capa < 60
group by valor_capa
order by valor_capa;

