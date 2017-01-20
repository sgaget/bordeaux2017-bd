
CREATE TABLE ligne (
	"id_ligne" NOT NULL PRIMARY KEY,
	"nom" VARCHAR(100),
	"numero" VARCHAR(10),
	"id_type" INTEGER
	);

CREATE TABLE gare (
	"id_gare" INTEGER NOT NULL PRIMARY KEY,
	"nom" VARCHAR(100),
	"id_ville" INTEGER
	);

CREATE TABLE ville (
	"id_ville" INTEGER NOT NULL PRIMARY KEY,
	"nom" VARCHAR(100)
	);

CREATE TABLE type (
	"id_type" INTEGER NOT NULL PRIMARY KEY,
	"nom" VARCHAR(100)
	);

CREATE TABLE dessert (
	"id_ligne" INTEGER NOT NULL,
	"id_gare" INTEGER NOT NULL,
	PRIMARY KEY("id_ligne","id_gare")
	);


INSERT ligne INTO VALUES(0, 'Lille-Dunkerque', '08', 0);
INSERT ligne INTO VALUES(1, 'Lille-Paris', '101', 1);
INSERT ligne INTO VALUES(2, 'Lille-Douai-Arras-Amiens-Rouen', '02', 0);
INSERT ligne INTO VALUES(3, 'Lille-Calais-Londres', '201', 2);
INSERT ligne INTO VALUES(4, 'Lille-Hazebrouck-Calais-Boulogne', '12', 0);

INSERT INTO gare VALUES(0, 'Lille Flandres', 0);
INSERT INTO gare VALUES(1, 'Armentieres', 1);
INSERT INTO gare VALUES(2, 'Hazebrouck', 2);
INSERT INTO gare VALUES(3, 'Dunkerque', 3);
INSERT INTO gare VALUES(4, 'Paris Nord', 4);
INSERT INTO gare VALUES(5, 'Douai', 5);
INSERT INTO gare VALUES(6, 'Arras', 6);
INSERT INTO gare VALUES(7, 'Amiens', 7);
INSERT INTO gare VALUES(8, 'Rouen Rive Droite', 8);
INSERT INTO gare VALUES(9, 'Lille Europe', 0);
INSERT INTO gare VALUES(10, 'Calais Frethun', 9);
INSERT INTO gare VALUES(11, 'Londres Waterloo', 10);
INSERT INTO gare VALUES(12, 'Calais Ville', 11);
INSERT INTO gare VALUES(13, 'Boulogne Tintelleries', 12);
INSERT INTO gare VALUES(14, 'Boulogne Ville', 12);

INSERT INTO ville VALUES(0, 'Lille');
INSERT INTO ville VALUES(1, 'Armentieres');
INSERT INTO ville VALUES(2, 'Hazebrouck');
INSERT INTO ville VALUES(3, 'Dunkerque');
INSERT INTO ville VALUES(4, 'Paris');
INSERT INTO ville VALUES(5, 'Douai');
INSERT INTO ville VALUES(6, 'Arras');
INSERT INTO ville VALUES(7, 'Amiens');
INSERT INTO ville VALUES(8, 'Rouen');
INSERT INTO ville VALUES(9, 'Frethun');
INSERT INTO ville VALUES(10, 'Londres');
INSERT INTO ville VALUES(11, 'Boulogne-sur-Mer');

INSERT INTO type VALUES(0, 'TER');
INSERT INTO type VALUES(1, 'TGV');
INSERT INTO type VALUES(2, 'Eurostar');

INSERT INTO dessert VALUES(0, 0);
INSERT INTO dessert VALUES(0, 1);
INSERT INTO dessert VALUES(0, 2);
INSERT INTO dessert VALUES(0, 3);
INSERT INTO dessert VALUES(1, 0);
INSERT INTO dessert VALUES(1, 4);
INSERT INTO dessert VALUES(2, 0);
INSERT INTO dessert VALUES(2, 5);
INSERT INTO dessert VALUES(2, 6);
INSERT INTO dessert VALUES(2, 7);
INSERT INTO dessert VALUES(2, 8);
INSERT INTO dessert VALUES(3, 9);
INSERT INTO dessert VALUES(3, 10);
INSERT INTO dessert VALUES(3, 11);
INSERT INTO dessert VALUES(4, 0);
INSERT INTO dessert VALUES(4, 1);
INSERT INTO dessert VALUES(4, 2);
INSERT INTO dessert VALUES(4, 12);
INSERT INTO dessert VALUES(4, 10);
INSERT INTO dessert VALUES(4, 13);
INSERT INTO dessert VALUES(4, 14);

