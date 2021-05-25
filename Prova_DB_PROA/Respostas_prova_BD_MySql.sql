/*Inclua suas próprias informações no departamento de tecnologia da empresa.
 O seu salário será a média salarial de todos os funcionários do departamento de tecnologia excluindo o gerente. */
#comandos usados:
#________________________________________________________________________________________
select avg(salario) from funcionarios
where departamento_id = 6 and gerente_id != 102;

select * from funcionarios
where funcionario_id = 102;	

insert into funcionarios values 
(DEFAULT, 'Raian','Medeiros','Raiannolaco@momento.org','123456789','2021-05-23',9,'4260.10',103,6);

/*A administração está sem funcionários. Inclua os outros elementos do seu grupo no departamento de administração.*/
INSERT INTO funcionarios VALUES 
(DEFAULT ,'Marco' , 'Martins' , 'marcoantoniopmartins19@momento.org' , '99469-1805' , '2021-07-27', 3 , '4000', 200,1),
(DEFAULT, 'Letícia', 'França', 'leticiafranca2406@momento.org', '95122-2069', '2021-06-24', 3, '4000', 200, 1),
(DEFAULT, 'Kepilyn', 'Vinicius', 'Kepilyn@momento.org', '515.143.4567', '2021-06-17', 3, '4000',200, 1),
(DEFAULT, 'caio', 'emanuel', 'caioemanuelcampos@momento.org', '1199999999', '2021-05-23',3,'4000',200,1),
(DEFAULT, 'Willian', 'Arauijo', 'WillAraujo@momento.org', '11912345423', '2021-05-23',3,'4000',200,1),
(DEFAULT, 'Natalia', 'Sabrina', 'natSab@momento.org', '11912354578', '2021-05-23',3,'4000',200,1),
(DEFAULT, 'Tawane', 'Souza', 'Tawane@momento.org', '11912357645', '2021-05-23',3,'4000',200,1);

/*Agora diga, quantos funcionários temos ao total na empresa? */
#A empresa possui 46 funcionários
#Comando:
SELECT count(*) FROM funcionarios; 

/*Qual a média salarial do departamento de tecnologia? *
A media salaria é R$4937.22*/

select avg(salario) from funcionarios
where departamento_id = 6;

/*Quanto o departamento de Transportes gasta em salários? *
Gasta R$41200.*/

SELECT SUM(salario) FROM funcionarios
WHERE departamento_id = 5;

/*Um novo departamento foi criado. O departamento de inovações. Ele será locado no Brasil. Por favor, adicione suas informações. */
INSERT INTO departamento VALUES 
(DEFAULT,'inovações',5400);


/*Três novos funcionários foram contratados para o departamento de inovações. Por favor, adicione-os: William Ferreira,
 casado com Inara Ferreira, possui um filho chamado Gabriel que tem 4 anos e adora brincar com cachorros. Ele será programador.
 Já a Fernanda Lima, que é casada com o Rodrigo, não possui filhos. Ela vai ocupar a posição de desenvolvedora. 
 Por último, a Gerente do departamento será Fabiana Raulino. Casada, duas filhas (Maya e Laura).
 O salário de todos eles será a média salarial dos departamentos de administração e finanças. */
Select avg(salario) from funcionarios
where departamento_id = 1 or departamento_id = 10;

INSERT INTO ocupacoes values 
(DEFAULT,'Programador','4000','20000'),
(DEFAULT,'Gerente de inovaçoes','4000','30000');


select * from funcionarios;
ALTER TABLE funcionarios AUTO_INCREMENT = 216;

insert into funcionarios values 
(DEFAULT,'Fabiana ','Raulino','fabianaRaulino@momento.org',null, '2021-05-23', 21,'6000',100,12);



insert into funcionarios values 
(DEFAULT,'William ','Ferreira','WilliamFerreira@momento.org',null, '2021-05-23', 20,'6000',216,12),
(DEFAULT,'Fernanda ','Lima','FernandaLima@momento.org',null, '2021-05-23', 9,'6000',216,12);

insert into dependentes values 
(DEFAULT,'Inara','Ferreira','Cônjuge',217),
(DEFAULT,'Gabriel','Ferreira','Filho(a)',217),
(DEFAULT,'Rodrigo',Null,'Cônjuge',218),
(DEFAULT,'Maya','Raulino','Filho(a)',216),
(DEFAULT,'Laura','Raulino','Filho(a)',216);

/*Exiba todas as regiões acompanhadas de seus países. */
Select p.pais_name, r.regiao_name
from paises as p join regiao as r
on p.regiao_id = r.regiao_id;


/*Joe Sciarra é filho de quem? */
select d.primeiro_nome,d.parentesco,f.primeiro_nome, f.sobrenome
from dependentes as d join funcionarios as f
on d.funcionario_id = f.funcionario_id 
where d.primeiro_nome Like 'Joe';



/*Jose Manuel possui filhos?*/


select d.primeiro_nome,d.sobrenome, d.parentesco,f.primeiro_nome, f.sobrenome
from dependentes as d join funcionarios as f
on d.funcionario_id = f.funcionario_id 
where f.primeiro_nome Like 'Jose%';

/*Qual região possui mais países?*/
select r.regiao_name,count(p.pais_id)
from regiao as r join paises as p 
where r.regiao_id = p.regiao_id 
group by p.regiao_id	
order by count(p.pais_id) desc limit 1;

/*Exiba o nome cada funcionário acompanhado de seus dependentes.*/
select f.funcionario_id,f.primeiro_nome,f.sobrenome,d.dependente_id,d.primeiro_nome, d.sobrenome from funcionarios as f
join dependentes as d 
on f.funcionario_id = d.funcionario_id;

/*Resposta do https://github.com/WilliamAraujo777*/
SELECT nome, MAX(Total) AS 'Qtd Paises' FROM(SELECT r.regiao_name AS nome, COUNT(p.regiao_id) AS Total FROM regiao AS r 
JOIN paises AS p WHERE r.regiao_id = p.regiao_id 
GROUP BY r.regiao_name 
ORDER BY COUNT(p.regiao_id) desc
) AS Results;

/*Karen Partners possui um cônjuge? */
select d.primeiro_nome,d.sobrenome, d.parentesco,f.primeiro_nome, f.sobrenome
from dependentes as d join funcionarios as f
on d.funcionario_id = f.funcionario_id 
where f.primeiro_nome Like 'karen%';

/*Atualize as informações na tabela para que seu departamento seja criado.*/

INSERT INTO departamento VALUES 
(DEFAULT,'Segurança cibernética',1800);

INSERT INTO ocupacoes Values 
(DEFAULT,'Gerente de Segurança cibernética','3000','20000');

update funcionarios  
set departamento_id = 13,salario = 20000,ocupacao_id=22 ,gerente_id = 100
where funcionario_id = 208;

select * from funcionarios;
