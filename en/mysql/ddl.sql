/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE IF EXISTS sql_island;
CREATE DATABASE sql_island DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE sql_island;

CREATE TABLE inhabitant (
  personid int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  villageid int(11) DEFAULT NULL,
  gender varchar(10) DEFAULT NULL,
  job varchar(255) DEFAULT NULL,
  gold int(11) DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  hash bigint NULL,
  PRIMARY KEY (personid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE item (
  item varchar(255) NOT NULL,
  owner int(11) DEFAULT NULL,
  hash bigint NULL,
  PRIMARY KEY (item)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE village (
  villageid int(11) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  chief int(11) DEFAULT NULL,
  hash bigint NULL,
  PRIMARY KEY (villageid)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- FK (mandatory comment: used to split and defer the fk constraints after the data is inserted)

ALTER TABLE inhabitant
  ADD CONSTRAINT inhabitant_ibfk_1 FOREIGN KEY (villageid) REFERENCES village (villageid);

ALTER TABLE item
  ADD CONSTRAINT item_ibfk_1 FOREIGN KEY (owner) REFERENCES inhabitant (personid)
  ON DELETE SET NULL;

ALTER TABLE village
  ADD CONSTRAINT village_ibfk_1 FOREIGN KEY (chief) REFERENCES inhabitant (personid);
