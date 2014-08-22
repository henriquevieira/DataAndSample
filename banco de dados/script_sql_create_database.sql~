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

CREATE TABLE identificacao (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_individuo INT(10) NOT NULL ,
fk_tipo_identificacao INT(10) NOT NULL ,
codigo_identificador VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE tipo_identificacao (
id INT(10) NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL ,
descricao VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE amostra (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_identificacao INT(10) NOT NULL ,
fk_tipo_amostra INT(10) NOT NULL ,
fk_coleta INT(10) NOT NULL ,
quantidade int(10) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE tipo_amostra (
id INT(10) NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL ,
descricao VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE armazenamento (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_amostra INT(10) NOT NULL ,
fk_tipo_armazenamento INT(10) NOT NULL ,
codigo_identificador VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE tipo_armazenamento (
id INT(10) NOT NULL AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL ,
descricao VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE coleta (
id  INT(10) NOT NULL AUTO_INCREMENT,
data DATE ,
PRIMARY KEY (id)
) ENGINE = innodb;




ALTER TABLE familiar ADD CONSTRAINT fk_familiar_individuo FOREIGN KEY (fk_individuo) REFERENCES individuo (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE familiar ADD CONSTRAINT fk_familiar_tipo_familiar FOREIGN KEY (fk_tipo_familiar) REFERENCES tipo_familiar (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE identificacao ADD CONSTRAINT fk_identificacao_individuo FOREIGN KEY (fk_individuo) REFERENCES individuo (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE identificacao ADD CONSTRAINT fk_identificacao_tipo_identificacao FOREIGN KEY (fk_tipo_identificacao) REFERENCES tipo_identificacao (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE amostra ADD CONSTRAINT fk_amostra_identificacao FOREIGN KEY (fk_identificacao) REFERENCES identificacao (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE amostra ADD CONSTRAINT fk_amostra_tipo_amostra FOREIGN KEY (fk_tipo_amostra) REFERENCES tipo_amostra (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE amostra ADD CONSTRAINT fk_amostra_coleta FOREIGN KEY (fk_coleta) REFERENCES coleta (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE armazenamento ADD CONSTRAINT fk_armazenamento_amostra FOREIGN KEY (fk_amostra) REFERENCES amostra (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE armazenamento ADD CONSTRAINT fk_armazenamento_tipo_armazenamento FOREIGN KEY (fk_tipo_armazenamento) REFERENCES tipo_armazenamento (id) ON UPDATE CASCADE ON DELETE CASCADE;


