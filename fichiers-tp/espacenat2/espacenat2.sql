

CREATE TABLE type (
	"id_type" INTEGER NOT NULL PRIMARY KEY, 
	"nom" VARCHAR(100)
	);

CREATE TABLE zone (
	"id_zone" INTEGER NOT NULL PRIMARY KEY, 
	"nom" VARCHAR(100), 
	"id_type" INTEGER NOT NULL
	);

CREATE TABLE org (
	"id_org" INTEGER NOT NULL PRIMARY KEY, 
	"nom" VARCHAR(100)
	);

CREATE TABLE ville (
	"id_ville" INTEGER NOT NULL PRIMARY KEY, 
	"nom" VARCHAR(100)
	);

CREATE TABLE gerepar (
	"id_zone" INTEGER NOT NULL, 
	"id_org" INTEGER NOT NULL, 
	PRIMARY KEY("id_zone","id_org")
	);

CREATE TABLE situedans (
	"id_zone" INTEGER NOT NULL, 
	"id_ville" INTEGER NOT NULL, 
	PRIMARY KEY("id_zone","id_ville")
	);


INSERT INTO type VALUES(0,'PNR');
INSERT INTO type VALUES(1,'PNT');
INSERT INTO type VALUES(2,'ENR');

INSERT INTO zone VALUES(0,'PNR des Caps et des Marais d''Opale',0);
INSERT INTO zone VALUES(1,'PNR Scarpe-Escaut',0);
INSERT INTO zone VALUES(2,'PNR Avesnois',0);
INSERT INTO zone VALUES(3,'PNT du Hainaut',1);
INSERT INTO zone VALUES(4,'ENR Lille Metropole',2);

INSERT INTO org VALUES(0,'Europe');
INSERT INTO org VALUES(1,'France');
INSERT INTO org VALUES(2,'Belgique');
INSERT INTO org VALUES(3,'Region HDF');
INSERT INTO org VALUES(4,'Dep Nord');
INSERT INTO org VALUES(5,'Dep Pas-de-Calais');
INSERT INTO org VALUES(6,'Region Wallone');
INSERT INTO org VALUES(7,'Metropole europeenne de Lille');

INSERT INTO gerepar VALUES(0,1);
INSERT INTO gerepar VALUES(0,3);
INSERT INTO gerepar VALUES(0,5);
INSERT INTO gerepar VALUES(1,1);
INSERT INTO gerepar VALUES(1,3);
INSERT INTO gerepar VALUES(1,4);
INSERT INTO gerepar VALUES(2,1);
INSERT INTO gerepar VALUES(2,3);
INSERT INTO gerepar VALUES(2,4);
INSERT INTO gerepar VALUES(3,0);
INSERT INTO gerepar VALUES(3,1);
INSERT INTO gerepar VALUES(3,2);
INSERT INTO gerepar VALUES(3,3);
INSERT INTO gerepar VALUES(3,4);
INSERT INTO gerepar VALUES(3,6);
INSERT INTO gerepar VALUES(4,1);
INSERT INTO gerepar VALUES(4,3);
INSERT INTO gerepar VALUES(4,4);
INSERT INTO gerepar VALUES(4,7);

INSERT INTO ville VALUES(0,'Marquise');
INSERT INTO ville VALUES(1,'Samer');
INSERT INTO ville VALUES(2,'Guines');
INSERT INTO ville VALUES(3,'Licques');
INSERT INTO ville VALUES(4,'Sainr-Amand-les-Eaux');
INSERT INTO ville VALUES(5,'Raismes');
INSERT INTO ville VALUES(6,'Marchiennes');
INSERT INTO ville VALUES(7,'Avesnes-sur-Helpe');
INSERT INTO ville VALUES(8,'Le Quesnoy');
INSERT INTO ville VALUES(9,'Croix');
INSERT INTO ville VALUES(10,'Leers');
INSERT INTO ville VALUES(11,'Marcq-en-Baroeul');
INSERT INTO ville VALUES(12,'Roubaix');
INSERT INTO ville VALUES(13,'Tourcoing');
INSERT INTO ville VALUES(14,'Wasquehal');
INSERT INTO ville VALUES(15,'Wattrelos');
INSERT INTO ville VALUES(16,'Maroilles');

INSERT INTO situedans VALUES(0,0);
INSERT INTO situedans VALUES(0,1);
INSERT INTO situedans VALUES(0,2);
INSERT INTO situedans VALUES(0,3);
INSERT INTO situedans VALUES(1,4);
INSERT INTO situedans VALUES(1,5);
INSERT INTO situedans VALUES(1,6);
INSERT INTO situedans VALUES(2,7);
INSERT INTO situedans VALUES(2,8);
INSERT INTO situedans VALUES(2,16);
INSERT INTO situedans VALUES(3,4);
INSERT INTO situedans VALUES(3,5);
INSERT INTO situedans VALUES(3,6);
INSERT INTO situedans VALUES(4,9);
INSERT INTO situedans VALUES(4,10);
INSERT INTO situedans VALUES(4,11);
INSERT INTO situedans VALUES(4,12);
INSERT INTO situedans VALUES(4,13);
INSERT INTO situedans VALUES(4,14);
INSERT INTO situedans VALUES(4,15);
