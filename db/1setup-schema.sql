### Schema
DROP DATABASE IF EXISTS daply;
CREATE DATABASE daply;
USE daply;

CREATE TABLE parents
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE children
(
	id int NOT NULL AUTO_INCREMENT,
	name varchar(255) NOT NULL,
	dob date,
	artStageFK int NOT NULL,
	languageStageFK int NOT NULL,
	mathStageFK int NOT NULL,
	movementStageFK int NOT NULL, 
	musicStageFK int NOT NULL, 
	scienceStageFK int NOT NULL, 
	socialStageFK int NOT NULL, 
	parentFK int NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE themes
(
	id int NOT NULL AUTO_INCREMENT,
	theme varchar(255) NOT NULL,
	description varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE savedPlans
(
	id int NOT NULL AUTO_INCREMENT,
	savedDate date NOT NULL,
	childFK int NOT NULL,
	themeFK int NOT NULL,
	artActivityFK int NOT NULL,
	languageActivityFK int NOT NULL,
	mathActivityFK int NOT NULL,
	movementActivityFK int NOT NULL,
	musicActivityFK int NOT NULL,
	scienceActivityFK int NOT NULL,
	socialActivityFK int NOT NULL,
	PRIMARY KEY (id)
);



-- =====Areas of Knowledge=====
-- art
-- language
-- math
-- movement
-- music
-- science
-- social
-- art language math movement music science social

-- =====Parents=====
-- 1 Abby
-- 2 Bob
-- 3 Connie
-- 4 Derek

-- =====Children=====
-- 1 Ethan
-- 2 Francine
-- 3 George
-- 4 Harriet
-- 5 Innigo 
-- 6 Julie
-- 7 Kyle
-- 8 Lauren
-- 9 Mike

-- =====Activities=====
-- 1 Food
-- 2 Play
-- 3 Reading
-- 4 Talk
-- 5 Trip


-- =====Themes=====
-- 1 Animals
-- 2 Colors
-- 3 Family
-- 4 Holidays
-- 5 Weather
