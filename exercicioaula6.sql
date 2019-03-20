/*1 - faça insert na tabela UF com todas as siglas dos estados do Brasil.*/

insert into uf (nome,sigla) values ('Acre','AC');  
insert into uf (nome,sigla) values ('Amazonas','AM');
insert into uf (nome,sigla) values ('Amapá','AP');
insert into uf (nome,sigla) values ('Bahia','BA');
insert into uf (nome,sigla) values ('Ceará','CE');
insert into uf (nome,sigla) values ('Distrito Federal','DF');
insert into uf (nome,sigla) values ('Espírito Santo','ES');
insert into uf (nome,sigla) values ('Goiás','GO');
insert into uf (nome,sigla) values ('Maranhão','MA');
insert into uf (nome,sigla) values ('Minas Gerais','MG');
insert into uf (nome,sigla) values ('Mato Grosso do Sul','MS');
insert into uf (nome,sigla) values ('Mato Grosso','MT');
insert into uf (nome,sigla) values ('Pará','PA');
insert into uf (nome,sigla) values ('Paraibá','PB');
insert into uf (nome,sigla) values ('Pernambuco','PE');
insert into uf (nome,sigla) values ('Piauí','PI');
insert into uf (nome,sigla) values ('Paraná','PR');
insert into uf (nome,sigla) values ('Rio de Janeiro','RJ');
insert into uf (nome,sigla) values ('Rio Grande do Norte','RN');
insert into uf (nome,sigla) values ('Rondônia','RO');
insert into uf (nome,sigla) values ('Roraima','RR');
insert into uf (nome,sigla) values ('Rio Grande do Sul','RS');
insert into uf (nome,sigla) values ('Santa Catarina','SC');
insert into uf (nome,sigla) values ('Sergipe','SE');
insert into uf (nome,sigla) values ('São Paulo','SP');
insert into uf (nome,sigla) values ('Tocantins','TO');


/*2 - insira as seguintes cidades:
Santa Catarina*/
insert into cidade (id_uf,nome) values(53,'Chapecó');
insert into cidade (id_uf,nome) values(53,'Blumenau');
insert into cidade (id_uf,nome) values(53,'Joinville');


/*Paraná*/
insert into cidade (id_uf,nome) values(47,'Curitiba');
insert into cidade (id_uf,nome) values(47,'Maringá');
insert into cidade (id_uf,nome) values(47,'Lunardeli');
insert into cidade (id_uf,nome) values(47,'Apucarana');
insert into cidade (id_uf,nome) values(47,'Santa fé');
insert into cidade (id_uf,nome) values(47,'São Miguel do Iguaçu');
insert into cidade (id_uf,nome) values(47,'Arapongas');
insert into cidade (id_uf,nome) values(47,'Ponta Grossa');
insert into cidade (id_uf,nome) values(47,'Jandaia do Sul');

/*São Paulo*/
insert into cidade (id_uf,nome) values(55,'Ribeirão Preto');

/*3 - Realize a remoção dos estados que não tem cidades*/

delete from public.uf where id in (31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,48,49,50,51,52,54,56);

/*4 - Insira novas cidades no estado de SP*/
insert into cidade (id_uf,nome) values(55,'São Paulo');

/*5 - Realize a atualização do nome das cidades:*/

/*Lunardeli para Lunardelli*/
update cidade set nome = 'Lunardelli' where id = 19

/*Jandaia do Sul para Jandaia*/
update cidade set nome = 'Jandaia' where id = 25

/*Maringá para Cidade Canção */
update cidade set nome = 'Cidade Canção' where id = 18

/*6 - Faça um select que retorne o nome das cidades e seus respectivos estados. Ordene por estados e posteriormente pelo nome das cidades */

select cid.id,uf.nome,cid.nome from public.uf uf, public.cidade cid where uf.id = cid.id_uf ORDER BY uf.nome asc


/* 7- Retorne quantas cidades cada estado possui :) (não expliquei ainda)
dica: veja group by e count()*/

select count(cdi.nome),uf.nome from cidade cdi, uf uf where cdi.id_uf = uf.id group by uf.nome;


/*8- Adicione um campo tipo endereço na tabela de endereço, os tipos poderão ser: COMERCIAL, RESIDENCIAL*/

ALTER TABLE public.endereco ADD comercial VARCHAR(100) not null, add residencial varchar(100) not null;


/*9-Insira três pessoas na base de dados. Cada uma destas pessoas deve ter dois endereços (um comercial e outro residencial). As cidades que devem ser usadas são do estado do PR (você escolhe).*/

insert into usuario (login,senha) values ('lucas@gmail.com','1234o');
insert into usuario (login,senha) values ('joao@gmail.com','123o');
insert into usuario (login,senha) values ('tiago@gmail.com','123o');


insert into pessoa (id_usuario,nome,cpf) values (1,'Lucas Silva','05041798909');
insert into pessoa (id_usuario,nome,cpf) values (2,'João Pedro','40916273834');
insert into pessoa (id_usuario,nome,cpf) values (2,'Tiago Martins','4091622323834');


insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (17,1,'Rua','1790','8760234','casa','rua teste a','rua comercial a');
insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (18,2,'Avenida','1703','87010370','apartametno','rua teste b','rua comercial b');


/*10- Insira duas pessoas na base de dados. Cada uma destas pessoas deve ter dois endereços (um comercial e outro residencial). As cidades que devem ser usadas são do estado de SP (você escolhe).*/

insert into usuario (login,senha) values ('pedro@gmail.com','pedro00');
insert into usuario (login,senha) values ('ana@gmail.com','aninha00');

insert into pessoa (id_usuario,nome,cpf) values (4,'Pedro Lucas','05041799103');
insert into pessoa (id_usuario,nome,cpf) values (5,'Anna Carolina','49876342121');

insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (26,7,'Rua','1790','8760234','casa','rua teste a','rua comercial a');
insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (27,8,'Avenida','1703','87010370','apartametno','rua teste b','rua comercial b');


/*11- Insira duas pessoas na base de dados. Cada uma destas pessoas deve ter um endereço do tipo comercial. As cidades que devem ser usadas são do estado de SC (você escolhe).*/

insert into usuario (login,senha) values ('mateus@gmail.com','1234o');
insert into usuario (login,senha) values ('pedro@gmail.com','123o');

insert into pessoa (id_usuario,nome,cpf) values (6,'Mateus Silva','09041799180');
insert into pessoa (id_usuario,nome,cpf) values (7,'Pedro Luiz','08041998890');


insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (15,6,'Rua','1790','8760234','casa','','rua comercial a');
insert into endereco(id_cidade,id_pessoa,logradouro,numero,cep,complemento,comercial,residencial) values (16,7,'Avenida','1703','87010370','apartametno','','rua comercial b');


/*  12- Faça um select que retorne o nome das pessoas e seus respectivos endereços (com cidade e estado). Ordene por nome de pessoa, nome do estado e nome da cidade*/

select
	pso.nome,
	uf.nome,
	cdi.nome
	
from
	endereco edr,
	pessoa pso,
	cidade cdi,
	uf uf
where
	edr.id_pessoa = pso.id
	and edr.id_cidade = cdi.id
	and cdi.id_uf = uf.id
	order by 
	pso.nome;



/*13 - Remova todos as pessoas que tem endereço da cidade de Ribeirão Preto */

delete from public.endereco where id = 10;
delete from public.pessoa where id = 7;
delete from public.usuario where id = 4;


/*14- Mude todos os endereços residenciais do sistema. Eles devem ter CEP 00000000 */

update public.endereco set residencial = 'CEP 00000000' where id = 7;
update public.endereco set residencial = 'CEP 00000000' where id = 8;
update public.endereco set residencial = 'CEP 00000000' where id = 11;
update public.endereco set residencial = 'CEP 00000000' where id = 12;
update public.endereco set residencial = 'CEP 00000000' where id = 13;


/*  
15- Insira dois recibos sendo que eles devem ter clientes residentes no PR e o emitente de servico deve ser o mesmo (não importando o estado). Exemplo: 
* cliente fusca, da cidade Curitiba, no PR. emitente: DB1, estado PR.
* cliente Tamara, da cidade Maringá, no PR. emitente: DB1, estado PR.*/

 insert into recibo (id_cliente,id_emitente,id_cidade,sequencia,data,assinatura,valor) values (1,7,18,'01','2019-03-19','Pedro Lucas','80.00');
 insert into recibo (id_cliente,id_emitente,id_cidade,sequencia,data,assinatura,valor) values (8,7,18,'01','2019-03-19','Pedro Lucas','80.00');


/*  
16- Insira dois recibos sendo que eles devem ter clientes residentes no PR e emitentes de serviços diferentes. Exemplo: 
* cliente fusca, da cidade Curitiba, no PR. emitente: FCV, estado PR.
* cliente Tamara, da cidade Maringá, no PR. emitente: USP, estado SP.*/

 insert into recibo (id_cliente,id_emitente,id_cidade,sequencia,data,assinatura,valor) values (6,10,17,'01','2019-03-19','Pedro Luiz','90.00');
 insert into recibo (id_cliente,id_emitente,id_cidade,sequencia,data,assinatura,valor) values (9,2,27,'01','2019-03-19','João Pedro','90.00');

/*  

17-Realize uma consulta na base de dados e exiba os seguintes dados:		
* numero do recibo
* data emissão do recibo
* valor do recibo
* nome do cliente 
* estado do cliente
* nome do emitente
* estado do emitente */

select
	rc.sequencia, 
	rc."data",
	rc.valor,
	pso.nome,
	uf.nome,	
	sso.nome,
	uf.nome
from
	recibo rc,
	pessoa pso,
	pessoa sso,
	cidade cdi,
	uf uf
where
	rc.id_cliente = pso.id
	and rc.id_emitente = sso.id
	and rc.id_cidade = cdi.id
	and cdi.id_uf = uf.id
	order by pso.nome;

/*
18 - Faça uma consulta que mostre:
* quantidade de recibos emitidos no PR
* valor total de recibos emitidos no PR
 */

  select
	count(uf.sigla),
	uf.sigla
from
	recibo rc,
	pessoa pso,
	pessoa sso,
	cidade cdi,
	uf uf
where
	rc.id_cliente = pso.id
	and rc.id_emitente = sso.id
	and rc.id_cidade = cdi.id
	and cdi.id_uf = uf.id
	and uf.sigla like 'PR'
group by
	uf.sigla;

	/*
	* Valor total de recibos emitidos no PR
	------------------------------------------*/

	select
	sum(rc.valor),
	uf.sigla
from
	recibo rc,
	pessoa pso,
	pessoa sso,
	cidade cdi,
	uf uf
where
	rc.id_cliente = pso.id
	and rc.id_emitente = sso.id
	and rc.id_cidade = cdi.id
	and cdi.id_uf = uf.id
	and uf.nome like 'Paraná'
group by
	uf.sigla;
