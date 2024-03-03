DROP DATABASE IF EXISTS sql_island;
CREATE DATABASE sql_island WITH ENCODING 'UTF8';
\c sql_island

CREATE TABLE inhabitant (
  personid SERIAL NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  villageid INTEGER DEFAULT NULL,
  gender VARCHAR(10) DEFAULT NULL,
  job VARCHAR(255) DEFAULT NULL,
  gold INTEGER DEFAULT NULL,
  state VARCHAR(50) DEFAULT NULL,
  hash BIGINT NULL,
  PRIMARY KEY (personid)
);

CREATE TABLE item (
  item VARCHAR(255) NOT NULL,
  owner INTEGER DEFAULT NULL,
  hash BIGINT NULL,
  PRIMARY KEY (item)
);

CREATE TABLE village (
  villageid SERIAL NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  chief INTEGER DEFAULT NULL,
  hash BIGINT NULL,
  PRIMARY KEY (villageid)
);

-- FK (mandatory comment: used to split and defer the fk constraints after the data is inserted)

ALTER TABLE inhabitant
  ADD CONSTRAINT inhabitant_ibfk_1 FOREIGN KEY (villageid) REFERENCES village (villageid);

ALTER TABLE item
  ADD CONSTRAINT item_ibfk_1 FOREIGN KEY (owner) REFERENCES inhabitant (personid) ON DELETE SET NULL;

ALTER TABLE village
  ADD CONSTRAINT village_ibfk_1 FOREIGN KEY (chief) REFERENCES inhabitant (personid);
