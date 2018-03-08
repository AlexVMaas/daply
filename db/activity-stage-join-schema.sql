CREATE TABLE artStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE languageStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE mathStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE movementStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE musicStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE socialStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE scienceStageJoin
(
	id int NOT NULL AUTO_INCREMENT,
	stageFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);