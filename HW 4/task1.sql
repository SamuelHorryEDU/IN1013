DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

DROP TABLE IF EXISTS petPet, petEvent;

CREATE TABLE petPet (petname VARCHAR(20), owner VARCHAR(45), species VARCHAR(45), gender CHAR(1) NOT NULL, birth DATE, death DATE, PRIMARY KEY (petname), CONSTRAINT gender_chk CHECK (gender='M' or gender='F'));

CREATE TABLE petEvent (petname VARCHAR(20), eventdate DATE, eventtype VARCHAR(15), remark VARCHAR(255), PRIMARY KEY (eventdate), FOREIGN KEY (petname) REFERENCES petPet(petname));