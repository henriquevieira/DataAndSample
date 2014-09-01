# author Henrique Cursino Vieira, The Smurf <henrique.vieira@usp.br>
# date 08-26-2014
# version 0.0.3

CREATE DATABASE DASbase CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE DASbase;

CREATE TABLE relatives (
id INT(10) NOT NULL AUTO_INCREMENT,
individuals_id INT(10) NOT NULL ,
relative_types_id INT(10) NOT NULL ,
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
contacts_id INT(10) NOT NULL,
name VARCHAR(255) NOT NULL ,
adress VARCHAR(255) ,
PRIMARY KEY (id)
) ENGINE = innodb;

CREATE TABLE contacts (
id  INT(10) NOT NULL AUTO_INCREMENT,
contact_types_id INT(10) NOT NULL,
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
individuals_id INT(10) NOT NULL ,
identification_types_id INT(10) NOT NULL ,
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
identifications_id INT(10) NOT NULL ,
sample_types_id INT(10) NOT NULL ,
collects_id INT(10) NOT NULL ,
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
samples_id INT(10) NOT NULL ,
storage_types_id INT(10) NOT NULL ,
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


ALTER TABLE relatives ADD CONSTRAINT fk_relatives_individuals FOREIGN KEY (individuals_id) REFERENCES individuals (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE relatives ADD CONSTRAINT fk_relatives_relative_types FOREIGN KEY (relative_types_id) REFERENCES relative_types (id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE individuals ADD CONSTRAINT fk_individuals_contacts FOREIGN KEY (contacts_id) REFERENCES contacts (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE contacts ADD CONSTRAINT fk_contacts_contact_types FOREIGN KEY (contact_types_id) REFERENCES contact_types (id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE identifications ADD CONSTRAINT fk_identifications_individuals FOREIGN KEY (individuals_id) REFERENCES individuals (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE identifications ADD CONSTRAINT fk_identifications_identification_types FOREIGN KEY (identification_types_id) REFERENCES identification_types (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_identifications FOREIGN KEY (identifications_id) REFERENCES identifications (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_sample_types FOREIGN KEY (sample_types_id) REFERENCES sample_types (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE samples ADD CONSTRAINT fk_samples_collects FOREIGN KEY (collects_id) REFERENCES collects (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE storages ADD CONSTRAINT fk_storages_samples FOREIGN KEY (samples_id) REFERENCES samples (id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE storages ADD CONSTRAINT fk_storage_types_storages FOREIGN KEY (storage_types_id) REFERENCES storage_types (id) ON UPDATE CASCADE ON DELETE CASCADE;


