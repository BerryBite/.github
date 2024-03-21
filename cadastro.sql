CREATE DATABASE berry;

USE berry;

CREATE TABLE cadastro(
	idCadastro int primary key auto_increment,
	razaoSocial varchar(50),
	cnpj varchar(20) constraint chkcnpj check (cnpj like '%.%.%/%-%'), 
	email varchar(50) constraint chkemail check (email like '%@%'),
	cep char(10) constraint chkcep check (cep like '%-%'), 
	telefone varchar(15),
	quantidade_de_estufa int);
    
INSERT INTO cadastro VALUES
	(null, 'Ben Morangos', '00.000.000/0001-00', 'benmorangos@email.com', '01010-000', '11940003000', 2);
    
SELECT * FROM cadastro;