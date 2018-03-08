CREATE TABLE artThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE languageThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE mathThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE movementThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE musicThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE socialThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE scienceThemeJoin
(
	id int NOT NULL AUTO_INCREMENT,
	themeFK int NOT NULL,
	activityFK int NOT NULL,
	PRIMARY KEY (id)
);