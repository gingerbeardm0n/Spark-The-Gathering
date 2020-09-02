USE master
GO

IF DB_ID('spark_cards') IS NOT NULL
BEGIN
	ALTER DATABASE spark_cards SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE spark_cards;
END

CREATE DATABASE spark_cards
GO

USE spark_cards
GO

--create tables


CREATE TABLE blue (
	name varchar(50) NOT NULL,
	mana_cost int,
	power int,
	toughness int,
	flying bit,
	CONSTRAINT PK_blue_name PRIMARY KEY (name)
)

CREATE TABLE red (
	name varchar(50) NOT NULL,
	mana_cost int,
	power int,
	toughness int,
	haste bit,
	CONSTRAINT PK_red_name PRIMARY KEY (name)
)

CREATE TABLE black (
	name varchar(50) NOT NULL,
	mana_cost int,
	power int,
	toughness int,
	deathtouch bit,
	CONSTRAINT PK_black_name PRIMARY KEY (name)
)

CREATE TABLE green (
	name varchar(50) NOT NULL,
	mana_cost int,
	power int,
	toughness int,
	trample bit,
	CONSTRAINT PK_green_name PRIMARY KEY (name)
)

CREATE TABLE white (
	name varchar(50) NOT NULL,
	mana_cost int,
	power int,
	toughness int,
	vigilance bit,
	CONSTRAINT PK_white_name PRIMARY KEY (name)
)

INSERT INTO blue VALUES ('Air Elemental', 5, 4, 4, 1);
INSERT INTO blue VALUES ('Azure Drake', 4, 2, 4, 1);
INSERT INTO blue VALUES ('Cloud Manta', 4, 3, 2, 1);
INSERT INTO blue VALUES ('Coral Merfolk', 2, 2, 1, 0);
INSERT INTO blue VALUES ('Giant Octopus', 4, 3, 3, 0);
INSERT INTO blue VALUES ('Horned Turtle', 3, 1, 4, 0);
INSERT INTO blue VALUES ('Seacoast Drake', 2, 1, 3, 1);
INSERT INTO blue VALUES ('Vizzerdrix', 7, 6, 6, 0);
INSERT INTO blue VALUES ('Water Elemental', 5, 5, 4, 0);
INSERT INTO blue VALUES ('Island', 0, 0, 0, 0);

INSERT INTO red VALUES ('Fire Elemental', 5, 5, 4, 0);
INSERT INTO red VALUES ('Flameborn Viron', 6, 6, 4, 0);
INSERT INTO red VALUES ('Frenzied Raptor', 3, 4, 2, 0);
INSERT INTO red VALUES ('Goblin Piker', 2, 2, 1, 0);
INSERT INTO red VALUES ('Hill Giant', 4, 3, 3, 0);
INSERT INTO red VALUES ('Hostile Minotaur', 4, 3, 3, 1);
INSERT INTO red VALUES ('Lightning Elemental', 4, 4, 1, 1);
INSERT INTO red VALUES ('Nest Robber', 2, 2, 1, 1);
INSERT INTO red VALUES ('Pyromantic Pilgrim', 3, 3, 1, 1);
INSERT INTO red VALUES ('Raging Goblin', 1, 1, 1, 1);
INSERT INTO red VALUES ('Mountain', 0, 0, 0, 0);

INSERT INTO black VALUES ('Barony Vampire', 3, 3, 2, 0);
INSERT INTO black VALUES ('Feral Abomination', 6, 5, 5, 1);
INSERT INTO black VALUES ('Giant Scorpion', 3, 1, 3, 1);
INSERT INTO black VALUES ('Gutter Skulk', 2, 2, 2, 0);
INSERT INTO black VALUES ('Hand of Silumgar', 2, 2, 1, 1);
INSERT INTO black VALUES ('Mass of Ghouls', 5, 5, 3, 0);
INSERT INTO black VALUES ('Minotaur Abomination', 6, 4, 6, 0);
INSERT INTO black VALUES ('Moonglove Winnower', 4, 2, 3, 1);
INSERT INTO black VALUES ('Nether Horror', 4, 4, 2, 0);
INSERT INTO black VALUES ('Typhoid Rats', 1, 1, 1, 1);
INSERT INTO black VALUES ('Swamp', 0, 0, 0, 0);

INSERT INTO green VALUES ('Centaur Courser', 3, 3, 3, 0);
INSERT INTO green VALUES ('Colossal Dreadmaw', 6, 6, 6, 1);
INSERT INTO green VALUES ('Craw Wurm', 6, 6, 4, 0);
INSERT INTO green VALUES ('Fangren Hunter', 5, 4, 4, 1);
INSERT INTO green VALUES ('Goliath Beetle', 3, 3, 1, 1);
INSERT INTO green VALUES ('Grizzly Bears', 2, 2, 2, 0);
INSERT INTO green VALUES ('Nettle Swine', 4, 4, 3, 0);
INSERT INTO green VALUES ('Pygmy Razorback', 2, 2, 1, 1);
INSERT INTO green VALUES ('Spiked Baloth', 4, 4, 2, 1);
INSERT INTO green VALUES ('Spined Wurm', 5, 5, 4, 0);
INSERT INTO green VALUES ('Forest', 0, 0, 0, 0);

INSERT INTO white VALUES ('Alpine Watchdog', 2, 2, 2, 1);
INSERT INTO white VALUES ('Ardent Militia', 5, 2, 5, 1);
INSERT INTO white VALUES ('Glory Seeker', 2, 2, 2, 0);
INSERT INTO white VALUES ('Hautli''s Snubhorn', 2, 2, 2, 1);
INSERT INTO white VALUES ('Knight of the Tusk', 6, 3, 7, 1);
INSERT INTO white VALUES ('Pillarfield Ox', 4, 2, 4, 0);
INSERT INTO white VALUES ('Regal Unicorn', 3, 2, 3, 0);
INSERT INTO white VALUES ('Savannah Lions', 1, 2, 1, 0);
INSERT INTO white VALUES ('Siege Mastodon', 5, 3, 5, 0);
INSERT INTO white VALUES ('Standing Troops', 3, 1, 4, 1);
INSERT INTO white VALUES ('Plains', 0, 0, 0, 0);