-- drop table serve para apagar a estrutura da tabela

create database cursos;

use cursos;

create table curso(
nome varchar (50) not null unique,
descricao text,
carga int unsigned,
totaaulas int unsigned,
ano year
);

alter table curso
add column idcurso int first;

alter table curso
add primary key (idcurso);


insert into curso values
('0', 'html6', 'curso de html5', '40', '37', '2014'),
('2', 'algoritmos', 'logica de programacao', '20', '15', '2014'),
('3', 'photoshop', 'dicas de photoshop', '10', '8', '2014'),
('4', 'pgp', 'curso de php para iniciantes', '40', '20', '2010'),
('5', 'jarva', 'introducacao a linguagem java', '10', '29', '2000'),
('6', 'mysql', 'bancos de dados', '30', '15', '2016'),
('7', 'word', 'curso completo de word', '40', '30', '2016'),
('8', 'spateado', 'dancas ritmicas', '40', '30', '2018'),
('9', 'cozinha arabe', 'aprenda a fazer kibe', '40', '40', '2018'),
('10', 'youtuber', 'gerar polemica e ganhar inscritos', '5', '2', '2018');

update curso  -- alteração dos dados
set ano = '2018', carga = '0'
where ano = '2050'
limit 1; -- limit serve para limitar quantas linhas devem ser afetadas

truncate table curso; -- apaga todos os registros da tabela

select * from curso;
