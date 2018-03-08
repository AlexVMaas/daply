CREATE TABLE artComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE languageComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE mathComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE movementComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE musicComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE scienceComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE socialComments
(
	id int NOT NULL AUTO_INCREMENT,
	comment varchar(255) NOT NULL,
	activityFK int NOT NULL,
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);