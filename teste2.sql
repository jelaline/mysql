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


select * from sistemas;