/*
CREATE DATABASE zapytania_zagniezdzone_zlaczenia;

CREATE TABLE GeoEon (id_eon int PRIMARY KEY NOT NULL, nazwa_eon varchar(15) NOT NULL);

CREATE TABLE GeoEra (id_era int PRIMARY KEY NOT NULL, id_eon int FOREIGN KEY REFERENCES GeoEon(id_eon) NOT NULL, nazwa_era varchar(15) NOT NULL);

CREATE TABLE GeoOkres (id_okres int PRIMARY KEY NOT NULL, id_era int FOREIGN KEY REFERENCES GeoEra(id_era) NOT NULL, nazwa_okres varchar(15) NOT NULL);

CREATE TABLE GeoEpoka (id_epoka int PRIMARY KEY NOT NULL, id_okres int FOREIGN KEY REFERENCES GeoOkres(id_okres) NOT NULL, nazwa_epoka varchar(15) NOT NULL);

CREATE TABLE GeoPietro (id_pietro int PRIMARY KEY NOT NULL, id_epoka int FOREIGN KEY REFERENCES GeoEpoka(id_epoka) NOT NULL, nazwa_pietro varchar(15) NOT NULL);

ALTER TABLE GeoPietro
ALTER COLUMN id_epoka int NULL

INSERT INTO GeoEon (id_eon, nazwa_eon) VALUES ('1', 'Fanerozoik');

INSERT INTO GeoEra (id_era, id_eon, nazwa_era) VALUES ('1', '1', 'Paleozoik');
INSERT INTO GeoEra (id_era, id_eon, nazwa_era) VALUES ('2', '1', 'Mezozoik');
INSERT INTO GeoEra (id_era, id_eon, nazwa_era) VALUES ('3', '1', 'Kenozoik');

INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('1', '1', 'Kambr');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('2', '1', 'Ordowik');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('3', '1', 'Sylur');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('4', '1', 'Dewon');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('5', '1', 'Karbon');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('6', '1', 'Perm');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('7', '2', 'Trias');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('8', '2', 'Jura');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('9', '2', 'Kreda');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('10', '3', 'Paleogen');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('11', '3', 'Neogen');
INSERT INTO GeoOkres (id_okres, id_era, nazwa_okres) VALUES ('12', '3', 'Czwartorzed');


INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('1', '1', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('2', '1', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('3', '1', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('4', '2', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('5', '2', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('6', '2', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('7', '3', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('8', '3', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('9', '4', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('10', '4', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('11', '4', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('12', '5', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('13', '5', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('14', '5', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('15', '6', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('16', '6', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('17', '6', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('18', '7', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('19', '7', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('20', '7', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('21', '8', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('22', '8', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('23', '8', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('24', '9', 'Dolny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('25', '9', 'Srodkowy');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('26', '9', 'Gorny');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('27', '10', 'Paleocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('28', '10', 'Eocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('29', '10', 'Oligocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('30', '11', 'Miocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('31', '11', 'Pliocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('32', '12', 'Plejstocen');
INSERT INTO GeoEpoka (id_epoka, id_okres, nazwa_epoka) VALUES ('33', '12', 'Holocen');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('1', '', 'fortun');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('2', '', '');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('3', '', '');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('4', '', '');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('5', '', 'wuliuan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('6', '', 'drum');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('7', '', 'guzang');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('8', '', 'paib');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('9', '', 'dziangszan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('10', '', '');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('1', '4', 'tremadok');

INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('2', '4', 'aszgil');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('3', '5', 'karadok');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('4', '5', 'landeil');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('5', '6', 'lanwirn');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('6', '6', 'arenig');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('12', '4', 'flo');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('13', '5', 'daping');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('14', '5', 'darriwil');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('15', '6', 'sandb');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('16', '6', 'kat');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('17', '6', 'hirnant');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('18', '', 'ruddan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('19', '', 'aeron');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('20', '', 'telicz');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('21', '', 'szejnwud');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('22', '', 'homer');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('23', '', 'gorst');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('24', '', 'ludford');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('25', '', '');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('7', '9', 'lochkow');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('8', '9', 'prag');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('9', '9', 'ems');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('10', '10', 'eifel');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('11', '10', 'zywet');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('12', '11', 'fran');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('13', '11', 'famen');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('33', '', 'turnej');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('34', '', 'wizen');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('35', '', 'serpuchow');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('36', '', 'baszkir');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('37', '', 'moskow');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('38', '', 'kasimow');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('39', '', 'gzel');
*/
/*
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('14', 'assel');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('15', 'sakmar');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('16', 'artinsk');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('17', 'kungur');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('18', '', 'road');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('19', '', 'word');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('20', '', 'kapitan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('21', '', 'wucziaping');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('22', '', 'czangsing');
*/
/*
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('18', 'ufa');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('19', 'kazan');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('20', 'tatar');


INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('21', '18', 'ind');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('22', '18', 'olenek');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('23', '19', 'anizyk');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('24', '19', 'ladyn');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('25', '20', 'karnik');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('26', '20', 'noryk');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('27', '20', 'retyk');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('28', '21', 'hettang');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('29', '21', 'synemur');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('30', '21', 'pliensbach');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('31', '21', 'toark');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('32', '22', 'aalen');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('33', '22', 'bajos');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('34', '22', 'baton');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('35', '22', 'kelowej');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('36', '23', 'oksford');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('37', '23', 'kimeryd');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('38', '23', 'tyton');

INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('39', '1', 'berias');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('40', '1', 'walanzyn');


INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('41', 'hoteryw');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('42', 'barrem');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('43', 'apt');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('44', 'alb');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('45', 'cenoman');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('46', 'turon');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('47', 'koniak');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('48', 'santon');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('49', 'kampan');
INSERT INTO GeoPietro (id_pietro , nazwa_pietro) VALUES ('50', 'mastrycht');

INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('51', '27', 'dan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('52', '27', 'zeland');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('53', '27', 'tanet');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('54', '28', 'iprez');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('55', '28', 'lutet');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('56', '28', 'barton');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('57', '28', 'priabon');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('58', '29', 'rupel');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('59', '29', 'szat');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('60', '30', 'akwitan');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('61', '30', 'burdygal');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('62', '30', 'lang');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('63', '30', 'serrawal');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('64', '30', 'torton');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('65', '30', 'messyn');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('66', '31', 'zankl');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('67', '31', 'piacent');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('68', '32', 'gelas');
*/
/*
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('95', '32', 'kalabr');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('96', '32', 'chiban');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('97', '32', '');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('98', '33', 'granland');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('99', '33', 'northgrip');
INSERT INTO GeoPietro (id_pietro , id_epoka, nazwa_pietro) VALUES ('100', '33', 'magalaj');



SELECT GeoEon.id_eon, GeoEon.nazwa_eon, GeoEra.id_era, GeoEra.nazwa_era, GeoOkres.id_okres, GeoOkres.nazwa_okres, GeoEpoka.id_epoka, GeoEpoka.nazwa_epoka
INTO GeoTabela
FROM GeoEon INNER JOIN  GeoEra ON GeoEra.id_eon = GeoEon.id_eon INNER JOIN GeoOkres ON GeoOkres.id_era = GeoEra.id_era 
INNER JOIN GeoEpoka ON GeoEpoka.id_okres = GeoOkres.id_okres JOIN GeoPietro ON GeoPietro.id_epoka = GeoEpoka.id_epoka




CREATE TABLE Dziesiec (cyfra int, bit int)



INSERT INTO Dziesiec (cyfra) VALUES ('0')
INSERT INTO Dziesiec (cyfra) VALUES ('1')
INSERT INTO Dziesiec (cyfra) VALUES ('2')
INSERT INTO Dziesiec (cyfra) VALUES ('3')
INSERT INTO Dziesiec (cyfra) VALUES ('4')
INSERT INTO Dziesiec (cyfra) VALUES ('5')
INSERT INTO Dziesiec (cyfra) VALUES ('6')
INSERT INTO Dziesiec (cyfra) VALUES ('7')
INSERT INTO Dziesiec (cyfra) VALUES ('8')
INSERT INTO Dziesiec (cyfra) VALUES ('9')





CREATE TABLE Milion (liczba int, cyfra int, bit int);

INSERT INTO Milion SELECT a1.cyfra + 10 * a2.cyfra + 100 * a3.cyfra + 1000 * a4.cyfra + 10000 * a5.cyfra + 100000 * a6.cyfra as liczba, 
a1.cyfra as cyfra, a1.bit as bit FROM Dziesiec a1, Dziesiec a2, Dziesiec a3, Dziesiec a4, Dziesiec a5, Dziesiec a6;




SELECT COUNT(*) FROM Milion INNER JOIN GeoTabela ON Milion.liczba % 68 = GeoTabela.id_pietro

--- Czas dla zapytania zlaczenia dla postaci zdenormalizowanej: 1. 0.0591872 2. 0.0589830 3. 0.0628471 4. 0.0627590 5. 0.0729020 6. 0.0593741 7. 0.0586160 8. 0.0622169

--- Minimalny czas zapytania: 0.0586160

--- Sredni czas zapytania: 0,0621107



/*
UPDATE GeoTabela SET id_epoka = 14 WHERE id_pietro IN (14, 15, 16, 17)
UPDATE GeoTabela SET id_epoka = 15 WHERE id_pietro IN (18, 19, 20)
UPDATE GeoTabela SET id_epoka = 16 WHERE id_epoka = 18
UPDATE GeoTabela SET id_epoka = 17 WHERE id_epoka = 19
UPDATE GeoTabela SET id_epoka = 18 WHERE id_epoka = 20
UPDATE GeoTabela SET id_epoka = 19 WHERE id_epoka = 21
UPDATE GeoTabela SET id_epoka = 20 WHERE id_epoka = 22
UPDATE GeoTabela SET id_epoka = 21 WHERE id_epoka = 23
UPDATE GeoTabela SET id_epoka = 22 WHERE id_pietro IN (39, 40, 41, 42, 43, 44)
UPDATE GeoTabela SET id_epoka = 23 WHERE id_pietro IN (45, 46, 47, 48, 49, 50)
UPDATE GeoTabela SET id_epoka = 24 WHERE id_epoka = 27
UPDATE GeoTabela SET id_epoka = 25 WHERE id_epoka = 28
UPDATE GeoTabela SET id_epoka = 26 WHERE id_epoka = 29
UPDATE GeoTabela SET id_epoka = 27 WHERE id_epoka = 30
UPDATE GeoTabela SET id_epoka = 28 WHERE id_epoka = 31
UPDATE GeoTabela SET id_epoka = 29 WHERE id_epoka = 32
UPDATE GeoTabela SET id_epoka = 30 WHERE id_epoka = 33
*/



SELECT COUNT(*) FROM Milion WHERE Milion.liczba % 68 = (SELECT id_pietro FROM GeoTabela WHERE Milion.liczba % 68 = GeoTabela.id_pietro)

--- Czas dla zapytania zagniezdzonego dla postaci zdenormalizowanej: 1. 2.9983077 2. 3.2311197 3. 3.0553388 4. 2.9861807 5. 2.9820608 6. 3.1384170 7. 3.0328935 8. 3.0353428

--- Minimalny czas zapytania: 2.9820608

--- Sredni czas zapytania: 3.0574576
*/


/*
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 16
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 17

UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 38
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 39
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 40
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 41
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 42
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 43
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 44
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 45
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 46
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 47
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 48
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 49
UPDATE GeoEpoka SET id_epoka = 0 WHERE id_epoka = 50




SELECT COUNT(*) FROM Milion INNER JOIN GeoPietro ON Milion.liczba % 68 = GeoPietro.id_pietro INNER JOIN GeoEpoka ON GeoPietro.id_epoka = GeoEpoka.id_epoka INNER JOIN GeoOkres ON  GeoEpoka.id_okres = GeoOkres.id_okres INNER JOIN GeoEra ON GeoOkres.id_era = GeoEra.id_era INNER JOIN GeoEon ON GeoEra.id_eon = GeoEon.id_eon

--- Czas zapytania zlaczenia dla postaci znormalizowanej: 1. 0.0724394 2. 0.0817065 3. 0.0728677 4. 0.0724275 5. 0.0916789 6. 0.0835861 7. 0.0698431 8. 0.7313841

--- Minimalny czas zapytania: 0.0698431

--- Sredni czas zapytania: 0.1594916


SELECT COUNT(*) FROM Milion WHERE Milion.liczba % 68 = (SELECT id_pietro FROM GeoPietro JOIN GeoEpoka ON GeoPietro.id_epoka = GeoEpoka.id_epoka JOIN GeoOkres ON GeoEpoka.id_okres = GeoOkres.id_okres JOIN GeoEra ON GeoOkres.id_era = GeoEra.id_era JOIN GeoEon ON GeoEra.id_eon = GeoEon.id_eon WHERE Milion.liczba % 68 = GeoPietro.id_pietro)

--- Czas zapytania zagniezdzonego dla postaci znormalizowanej: 1. 1.3842263 2. 1.4144619 3. 1.4065904 4. 1.4331689 5. 1.4559210 6. 1.4292953 7. 1.4930114 8. 1.4898391

--- Minimalny czas zapytania: 1.3842263

--- Sredni czas zapytania: 1,4383143



CREATE INDEX zlacz_GeoTabela ON Milion (liczba, cyfra, bit)
CREATE INDEX zap_zagniezdzone ON GeoTabela (id_eon, nazwa_eon, id_era, nazwa_era, id_okres, nazwa_okres, id_epoka, nazwa_epoka, id_pietro, nazwa_pietro)




CREATE INDEX zlacz_GeoTabela_Milion_liczba ON Milion (liczba)
CREATE INDEX zlacz_GeoTabela_cyfra ON Milion (cyfra)
CREATE INDEX zlacz_GeoTabela_ ON Milion (bit)

CREATE INDEX zlacz_GeoTabela_id_eon ON GeoTabela(id_eon)
CREATE INDEX zlacz_GeoTabela_nazwa_eon ON GeoTabela(nazwa_eon)
CREATE INDEX zlacz_GeoTabela_id_era ON GeoTabela(id_era)
CREATE INDEX zlacz_GeoTabela_nazwa_era ON GeoTabela(nazwa_era)
CREATE INDEX zlacz_GeoTabela_id_okres ON GeoTabela(id_okres)
CREATE INDEX zlacz_GeoTabela_nazwa_okres ON GeoTabela(nazwa_okres)
CREATE INDEX zlacz_GeoTabela_id_epoka ON GeoTabela(id_epoka)
CREATE INDEX zlacz_GeoTabela_nazwa_epoka ON GeoTabela(nazwa_epoka)
CREATE INDEX zlacz_GeoTabela_id_pietro ON GeoTabela(id_pietro)
CREATE INDEX zlacz_GeoTabela_nazwa_pietro ON GeoTabela(nazwa_pietro)





SELECT COUNT(*) FROM Milion INNER JOIN GeoTabela ON Milion.liczba % 68 = GeoTabela.id_pietro

--- Czas zapytania dla zlaczenia postaci zdenormalizowanej z indeksami: 1. 0.0519214 2. 0.0461064 3. 0.0516835 4. 0.0541968 5. 0.0673396 6. 0.0578455 7. 0.0474642 8. 0.0541419

--- Minimalny czas zapytania: 0.0461064

--- Sredni czas zapytania: 0,0538374





CREATE INDEX zlacz_GeoEon_Milion_id_eon ON GeoEon(id_eon)
CREATE INDEX zlacz_GeoEon_Milion_nazwa_eon ON GeoEon(nazwa_eon)
CREATE INDEX zlacz_GeoEra_Milion_id_era ON GeoEra(id_era)
CREATE INDEX zlacz_GeoEra_Milion_nazwa_era ON GeoEra(nazwa_era)
CREATE INDEX zlacz_GeoOkres_Milion_id_okres ON GeoOkres(id_okres)
CREATE INDEX zlacz_GeoOkres_Milion_nazwa_okres ON GeoOkres(nazwa_okres)
CREATE INDEX zlacz_GeoEpoka_Milion_id_epoka ON GeoEpoka(id_epoka)
CREATE INDEX zlacz_GeoEpoka_Milion_nazwa_epoka ON GeoEpoka(nazwa_epoka)
CREATE INDEX zlacz_GeoPietro_Milion_id_pietro ON GeoPietro(id_pietro)
CREATE INDEX zlacz_GeoPietro_Milion_nazwa_pietro ON GeoPietro(nazwa_pietro)




SELECT COUNT(*) FROM Milion WHERE Milion.liczba % 68 = (SELECT id_pietro FROM GeoTabela WHERE Milion.liczba % 68 = GeoTabela.id_pietro)


--- Czas zapytania dla zagniezdzenia postaci zdenormalizowanej z indeksami: 1. 1.0192060 2. 1.0334305 3. 1.0372292 4. 1.0472027 5. 1.0173103 6. 1.0442107 7. 1.0322430 8. 1.0561792

--- Minimalny czas zapytania: 1.0173103

--- Sredni czas zapytania: 1,0358765






SELECT COUNT(*) FROM Milion INNER JOIN GeoPietro ON Milion.liczba % 68 = GeoPietro.id_pietro INNER JOIN GeoEpoka ON GeoPietro.id_epoka = GeoEpoka.id_epoka INNER JOIN GeoOkres ON  GeoEpoka.id_okres = GeoOkres.id_okres INNER JOIN GeoEra ON GeoOkres.id_era = GeoEra.id_era INNER JOIN GeoEon ON GeoEra.id_eon = GeoEon.id_eon


--- Czas zapytania dla zlaczenia postaci znormalizowanej z indeksami: 1. 0.0490300 2. 0.0661857 3. 0.0648463 4. 0.0658594 5. 0.0668108 6. 0.0678192 7. 0.0673692 8. 0.0638176

--- Minimalny czas zapytania: 0.0490300

--- Sredni czas zapytania: 0,0639673


*/


SELECT COUNT(*) FROM Milion WHERE Milion.liczba % 68 = (SELECT id_pietro FROM GeoPietro JOIN GeoEpoka ON GeoPietro.id_epoka = GeoEpoka.id_epoka JOIN GeoOkres ON GeoEpoka.id_okres = GeoOkres.id_okres JOIN GeoEra ON GeoOkres.id_era = GeoEra.id_era JOIN GeoEon ON GeoEra.id_eon = GeoEon.id_eon WHERE Milion.liczba % 68 = GeoPietro.id_pietro)


--- Czas zapytania dla zagniezdzenia postaci znormalizowanej z indeksami: 1. 1.4870211 2. 1.4762906 3. 1.3774717 4. 1.4631948 5. 1.3962626 6. 1.4125559 7. 1.3876477 8. 1.5091487

--- Minimalny czas zapytania: 1.3774717

--- Sredni czas zapytania: 1,4386991