# author Henrique Cursino Vieira, The Smurf <henrique.vieira@usp.br>
# date 08-26-2014
# version 0.0.3

CREATE DATABASE DASbase CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE DASbase;

CREATE TABLE relatives (
id INT(10) NOT NULL AUTO_INCREMENT,
fk_individuals INT(10) NOT NULL ,
fk_relative_types INT(10) NOT NULL ,
id_unique_individual VARCHAR(255) NOT NULL ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE relative_types (
id INT(10) NOT NULL AUTO_INCREMENT,
type VARCHAR(255) NOT NULL ,
description VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE individuals (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_contacts INT(10) NOT NULL,
name VARCHAR(255) NOT NULL ,
adress VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE contacts (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_contact_types INT(10) NOT NULL,
contact_information VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE contact_types (
id INT(10) NOT NULL AUTO_INCREMENT,
type VARCHAR(255) NOT NULL ,
description VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE identifications (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_individuals INT(10) NOT NULL ,
fk_identification_types INT(10) NOT NULL ,
identification_code VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE identification_types (
id INT(10) NOT NULL AUTO_INCREMENT,
type VARCHAR(255) NOT NULL ,
description VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE samples (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_identifications INT(10) NOT NULL ,
fk_sample_types INT(10) NOT NULL ,
fk_collects INT(10) NOT NULL ,
quantity int(10) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE sample_types (
id INT(10) NOT NULL AUTO_INCREMENT,
type VARCHAR(255) NOT NULL ,
description VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE storages (
id  INT(10) NOT NULL AUTO_INCREMENT,
fk_samples INT(10) NOT NULL ,
fk_storage_types INT(10) NOT NULL ,
identification_code VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE storage_types (
id INT(10) NOT NULL AUTO_INCREMENT,
type VARCHAR(255) NOT NULL ,
description VARCHAR(300) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE collects (
id  INT(10) NOT NULL AUTO_INCREMENT,
date DATE ,
PRIMARY KEY (id)
) ENGINE = innodb;


ALTER TABLE relatives ADD CONSTRAINT fk_relatives_individuals FOREIGN KEY (fk_individuals) REFERENCES individuals (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE relatives ADD CONSTRAINT fk_relatives_relative_types FOREIGN KEY (fk_relative_types) REFERENCES relative_types (id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE individuals ADD CONSTRAINT fk_individuals_contacts FOREIGN KEY (fk_contacts) REFERENCES contacts (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE contacts ADD CONSTRAINT fk_contacts_contact_types FOREIGN KEY (fk_contact_types) REFERENCES contact_types (id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE identifications ADD CONSTRAINT fk_identifications_individuals FOREIGN KEY (fk_individuals) REFERENCES individuals (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE identifications ADD CONSTRAINT fk_identifications_identification_types FOREIGN KEY (fk_identification_types) REFERENCES identification_types (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_identifications FOREIGN KEY (fk_identifications) REFERENCES identifications (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_sample_types FOREIGN KEY (fk_sample_types) REFERENCES sample_types (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_collects FOREIGN KEY (fk_collects) REFERENCES collects (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE storages ADD CONSTRAINT fk_storages_samples FOREIGN KEY (fk_samples) REFERENCES samples (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE storages ADD CONSTRAINT fk_storage_types_storages FOREIGN KEY (fk_storage_types) REFERENCES storage_types (id) ON UPDATE CASCADE ON DELETE CASCADE;


