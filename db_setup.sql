CREATE DATABASE racezers_db

CREATE TABLE exercises
	(
	id INTEGER UNIQUE NOT NULL,
	name VARCHAR(45) NOT NULL,
	description VARCHAR(255),
	point_scale DECIMAL(10, 2) NOT NULL,
	calories_burned DECIMAL(10, 2),
	PRIMARY KEY (id)
	);

CREATE TABLE competitors
	(
	id INTEGER NOT NULL,
	hipchat_id INTEGER,
	active BIT NOT NULL,
	name VARCHAR(45),
	email VARCHAR(255),
	PRIMARY KEY (id),
	INDEX(hipchat_ID(10))
	);

CREATE TABLE competitions
	(
	id INTEGER NOT NULL,
	active BIT NOT NULL,
	name VARCHAR(45),
	description VARCHAR(255),
	goal INTEGER,
	start_date DATETIME,
	end_date DATETIME,
	PRIMARY KEY (id)
	);

CREATE TABLE records
	(
	id INTEGER NOT NULL,
	competitor_id INTEGER NOT NULL,
	competition_id INTEGER NOT NULL,
	exercise_id INTERGER NOT NULL,
	count INTEGER NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (competition_id) REFERENCES competitions(id),
	FOREIGN KEY (competitor_id) REFERENCES competitors(id),
	FOREIGN KEY (exercise_id) REFERENCES exercise(id)
	);

CREATE TABLE competitionTotals
	(
	id NOT NULL,
	competition_id NOT NULL,
	competitor_id NOT NULL,
	score DECIMAL(10) NOT NULL,
	PRIMARY KEY (id)
	FOREIGN KEY (competition_id) REFERENCES competitions(id),
	FOREIGN KEY (competitor_id) REFERENCES competitors(id)
	)

