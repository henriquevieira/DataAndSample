# author Henrique Cursino Vieira, The Smurf <henrique.vieira@usp.br>
# date 08-20-2014
# version 0.0.1

CREATE DATABASE DASbase CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE DASbase;

CREATE TABLE familiar (
id INT(10) NOT NULL AUTO_INCREMENT,
fk_individuo INT(10) NOT NULL ,
fk_tipo_familiar INT(10) NOT NULL ,
id_unico_individual VARCHAR(255) NOT NULL ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE tipo_familiar (
id INT(10) NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL ,
descricao VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE individuo (
id  INT(10) NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL ,
telefone VARCHAR(255) ,
endereco VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

ALTER TABLE familiar ADD CONSTRAINT fk_familiar_individuo FOREIGN KEY (fk_individuo) REFERENCES individuo (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE familiar ADD CONSTRAINT fk_familiar_tipo_familiar FOREIGN KEY (fk_tipo_familiar) REFERENCES tipo_familiar (id) ON UPDATE CASCADE ON DELETE CASCADE;




