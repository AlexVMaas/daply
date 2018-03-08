CREATE TABLE artActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);

CREATE TABLE languageActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);

CREATE TABLE mathActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);

CREATE TABLE movementActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);

CREATE TABLE musicActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);


CREATE TABLE scienceActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);


CREATE TABLE socialActivities
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	growsEmotion boolean DEFAULT false,
	growsIntellect boolean DEFAULT false,	
	growsPhysical boolean DEFAULT false,
	growsSocial boolean DEFAULT false,
	link varchar(255),
	upVotes integer,
	downVotes integer,
	PRIMARY KEY (id)
);

