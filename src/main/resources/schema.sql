DROP TABLE if EXISTS bike;

CREATE TABLE bike (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO bike(name) VALUES ("Super Bike");
INSERT INTO bike(name) VALUES ("Mega Bike");
INSERT INTO bike(name) VALUES ("Best Bike");
