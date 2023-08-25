use cadastros;

show databases;

alter table sistemas
add column idade int;

alter table sistemas
drop column idade;

alter table sistemas
add column idade int after codigo;

alter table sistemas
modify column ida varchar(20);

alter table sistemas
change column idade ida int;


alter table sistemas
rename to parametros;

-- selecionando apenas algumas preferencias da tabela
SELECT Id, Nome, Email
  WHERE Id < 4 AND Nome LIKE '%S%'
  ORDER BY Nome DESC;

select * from sistemas;
