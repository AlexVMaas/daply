CREATE TABLE artStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE mathStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE musicStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE languageStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE movementStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE socialStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE scienceStages
(
	id int NOT NULL AUTO_INCREMENT,
	stage varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);