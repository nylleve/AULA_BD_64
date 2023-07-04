# comando para excluir todos os registros da tabela funcionarios
delete from funcionarios;

#comando para desativar o safe updates
set sql_safe_updates = 0;

#comando para conferir a tabela funcionarios
select * from funcionarios;

#contagem de funcionarios por departamentos
select id_departamento, count(*) as total_funcionarios
from funcionarios 
group by id_departamento;

#contagem de funcionarios por departamento que recebem salario acima de 10000
select id_departamento, count(*) as total_funcionarios
from funcionarios 
where salario > 10000
group by id_departamento;

#contagem de funcionarios por departamento que recebem salario entre 5000 e 10000
select id_departamento, count(*) as total_funcionarios
from funcionarios 
where salario between 5000 and 10000
group by id_departamento;

#soma dos salarios agrupados por departamento ultilizando o SUM
select id_departamento, sum(salario) as soma_salario
from funcionarios 
group by id_departamento;

#verificação da media salarial por departamento ultilizando o AVG
select id_departamento, avg(salario) as media_salario
from funcionarios 
group by id_departamento;

#faça a soma dos salarios agrupados por departamento.SUM()
select id_departamento, SUM(salario) as soma_salario from funcionarios group by id_departamento order by id_departamento asc;

#verique qual é a média salarial por departamento.AVG()
select id_departamento, avg(salario) from funcionarios group by id_departamento;

#desafio
select id_departamento, roun(avg(salario), 2)
from funcionarios group by id_departamento;

