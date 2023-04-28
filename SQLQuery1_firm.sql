/*
CREATE DATABASE firma;

CREATE SCHEMA ksiegowosc
-- Tworzymy tabele "pracownicy" dla schematu ksiegowosc;
CREATE TABLE ksiegowosc.pracownicy (id_pracownika INT PRIMARY KEY NOT NULL, imie VARCHAR(30) NOT NULL, nazwisko VARCHAR(30) NOT NULL, adres TEXT NOT NULL, telefon INT NOT NULL )
-- Tworzymy tabele "godziny" dla schematu ksiegowosc;
CREATE TABLE ksiegowosc.godziny ( id_godziny INT PRIMARY KEY NOT NULL, data DATE NOT NULL, liczba_godzin INT NOT NULL, id_pracownika INT NOT NULL )
-- Tworzymy tabele "pensja" dla schematu ksiegowosc;
CREATE TABLE ksiegowosc.pensja ( id_pensji INT PRIMARY KEY NOT NULL, stanowisko VARCHAR(30) NOT NULL, kwota INT NOT NULL )
-- Tworzymy tabele "premia" dla schematu ksiegowsoc;
CREATE TABLE ksiegowosc.premia ( id_premii INT PRIMARY KEY NOT NULL, rodzaj VARCHAR(30) NOT NULL, kwota INT NOT NULL )
-- Tworzymy tabele wynagrodzenie dla schematu ksiegowosc;
CREATE TABLE ksiegowosc.wynagrodzenie ( id_wynagrodzenia INT PRIMARY KEY NOT NULL, data DATE NOT NULL, id_pracownika INT NOT NULL, id_godziny INT NOT NULL, id_pensji INT NOT NULL, id_premii INT NOT NULL )
-- Dodajemy klucze obce dla tabeli godziny
ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
-- Dodajemy klucze obce dla tabeli wynagrodznie
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pracownika) REFERENCES ksiegowosc.pracownicy(id_pracownika);
-- Dodajemy klucze obce dla tabeli wynagrodzenie
ALTER TABLE ksiegowosc.wynagrodzenie 
ADD FOREIGN KEY (id_godziny) REFERENCES ksiegowosc.godziny(id_godziny);
-- Dodajemy klucze obce dla tabeli wynagrodzenie
ALTER TABLE ksiegowosc.wynagrodzenie
ADD FOREIGN KEY (id_pensji) REFERENCES ksiegowosc.pensja(id_pensji);
-- Dodajemy klucze obce dla tabeli wynagrodzenie
ALTER TABLE ksiegowosc.wynagrodzenie 
ADD FOREIGN KEY (id_premii) REFERENCES ksiegowosc.premia(id_premii);



INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('1', 'Oliwia', 'Skowronska', 'Szosowa 57', '573857327');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('2', 'Bronislawa', 'Szarzysta', 'Letnia 35', '746532854');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('3', 'Jadwiga', 'Nieznana', 'Murowana 73', '537853257');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('4', 'Zdzislaw', 'Ubogi', 'Lustrzana 27', '645738647');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('5', 'Przemyslaw', 'Staly', 'Jalowa 63', '535830458');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('6', 'Pawel', 'Troskliwy', 'Telewizyjna 43', '637848942');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('7', 'Urszula', 'Ciekawa', 'Urzedowa  58', '735843555');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('8', 'Sara', 'Rozwazna', 'Ziarnista 30', '579536347');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('9', 'Gabriel', 'Odwazny', 'Przemyslowa 75', '636852346');
INSERT INTO ksiegowosc.pracownicy ( id_pracownika, imie, nazwisko, adres, telefon ) VALUES ('10', 'Lucian', 'Potezny', 'Gospodarna 35', '735327867');



INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('1', '2035-11-30', '160', '7');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('2', '2035-11-30', '165', '5');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('3', '2035-11-30', '175', '3');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('4', '2035-11-30', '160', '10');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('5', '2035-11-30', '185', '4');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('6', '2035-11-30', '195', '8');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('7', '2035-11-30', '160', '1');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('8', '2035-11-30', '165', '6');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('9', '2035-11-30', '180', '2');
INSERT INTO ksiegowosc.godziny ( id_godziny, data, liczba_godzin, id_pracownika ) VALUES ('10', '2035-11-30', '160', '9');



INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('1', 'samodzielny ksiegowy', '2500');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('2', 'mlodszy ksiegowy', '1400');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('3', 'starszy ksiegowy', '2800');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('4', 'specjalista ds. ksiegowosci', '3500');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('5', 'stazysta ksiegowy', '950');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('6', 'glowny ksiegowy', '4200');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('7', 'lider ksiegowosci', '4500');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('8', 'samodzielny ksiegowy', '2700');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('9', 'stazysta ksiegowy', '1150');
INSERT INTO ksiegowosc.pensja ( id_pensji, stanowisko, kwota ) VALUES ('10', 'starszy ksiegowy', '3200');



INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('1', 'regulaminowa', '350');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('2', 'uznaniowa', '450');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('3', 'motywacyjna', '250');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('4', 'zadaniowa', '300');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('5', 'prowizyjna', '300');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('6', 'wynikowa', '350');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('7', 'prowizyjna', '350');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('8', 'brak_premii', '0');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('9', 'uznaniowa', '550');
INSERT INTO ksiegowosc.premia ( id_premii, rodzaj, kwota ) VALUES ('10', 'wynikowa', '450');


ALTER TABLE ksiegowosc.wynagrodzenie
ALTER COLUMN id_premii INT NULL;

ALTER TABLE ksiegowosc.premia
ALTER COLUMN id_premii


UPDATE ksiegowosc.premia SET kwota = 0, rodzaj = 'brak_premii' WHERE id_premii = 8;

INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('1', '2035-11-30', '8', '6', '3', '8');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('2', '2035-11-30', '6', '8', '2', '3');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('3', '2035-11-30', '5', '2', '10', '6');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('4', '2035-11-30', '7', '1', '6', '8');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('5', '2035-11-30', '3', '3', '5', '7');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('6', '2035-11-30', '10', '4', '8', '2');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('7', '2035-11-30', '1', '7', '4', '4');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('8', '2035-11-30', '9', '10', '7', '1');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('9', '2035-11-30', '2', '9', '1', '9');
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii ) VALUES ('10', '2035-11-30', '4', '5', '9', '8');



SELECT id_pracownika, nazwisko FROM ksiegowosc.pracownicy;




SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota > 1000);



SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota > 2000) AND id_premii IN (SELECT id_premii FROM ksiegowosc.premia WHERE kwota = 0)



SELECT * FROM ksiegowosc.pracownicy WHERE imie LIKE 'J%'



SELECT * FROM ksiegowosc.pracownicy WHERE nazwisko LIKE '%n%' AND imie LIKE '%a'



SELECT imie, nazwisko, liczba_godzin FROM ksiegowosc.pracownicy JOIN ksiegowosc.godziny ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.godziny.id_pracownika AND ksiegowosc.godziny.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.godziny WHERE liczba_godzin > 160)



SELECT imie, nazwisko FROM ksiegowosc.pracownicy WHERE ksiegowosc.pracownicy.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE ksiegowosc.wynagrodzenie.id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota BETWEEN 1500 AND 3000))



SELECT imie, nazwisko FROM ksiegowosc.pracownicy WHERE ksiegowosc.pracownicy.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_godziny IN (SELECT id_godziny FROM ksiegowosc.godziny WHERE liczba_godzin > 160) AND id_premii IN (SELECT id_premii FROM ksiegowosc.premia WHERE kwota = 0))



SELECT imie, nazwisko, ksiegowosc.wynagrodzenie.id_pracownika, kwota, ksiegowosc.wynagrodzenie.id_pensji FROM ksiegowosc.pracownicy JOIN ksiegowosc.wynagrodzenie ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika JOIN ksiegowosc.pensja ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji ORDER BY kwota



SELECT imie, nazwisko, ksiegowosc.wynagrodzenie.id_pracownika, ksiegowosc.pensja.kwota, ksiegowosc.wynagrodzenie.id_pensji, ksiegowosc.premia.kwota, ksiegowosc.wynagrodzenie.id_premii FROM ksiegowosc.pracownicy JOIN ksiegowosc.wynagrodzenie ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika JOIN ksiegowosc.pensja ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji JOIN ksiegowosc.premia ON ksiegowosc.premia.id_premii = ksiegowosc.wynagrodzenie.id_premii ORDER BY ksiegowosc.premia.kwota



SELECT stanowisko, COUNT(stanowisko) AS ilosc_pracownikow_stan  FROM ksiegowosc.pensja  GROUP BY stanowisko



SELECT AVG(kwota) AS srednia_kwo, MIN(kwota) AS minim_kwo, MAX(kwota) AS maksy_kwo FROM ksiegowosc.pensja WHERE stanowisko = 'samodzielny ksiegowy'



SELECT SUM(kwota) AS calkow_wynagro FROM ksiegowosc.pensja



SELECT SUM(kwota) AS calk_wynagr_stan, stanowisko FROM ksiegowosc.pensja GROUP BY stanowisko



SELECT stanowisko, COUNT(rodzaj) AS liczba_prem_stan FROM ksiegowosc.pensja JOIN ksiegowosc.wynagrodzenie ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji JOIN ksiegowosc.premia ON ksiegowosc.premia.id_premii = ksiegowosc.wynagrodzenie.id_premii AND ksiegowosc.wynagrodzenie.id_premii IN (SELECT id_premii FROM ksiegowosc.premia WHERE kwota > 0) GROUP BY stanowisko


*/
DELETE ksiegowosc.pracownicy FROM ksiegowosc.pracownicy, ksiegowosc.godziny, ksiegowosc.wynagrodzenie WHERE ksiegowosc.pracownicy.id_pracownika = ksiegowosc.godziny.id_pracownika AND ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika AND ksiegowosc.pracownicy.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota < 1200))
DELETE ksiegowosc.godziny FROM ksiegowosc.pracownicy, ksiegowosc.godziny, ksiegowosc.wynagrodzenie WHERE ksiegowosc.godziny.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota < 1200))
DELETE ksiegowosc.wynagrodzenie FROM ksiegowosc.pracownicy, ksiegowosc.godziny, ksiegowosc.wynagrodzenie WHERE ksiegowosc.wynagrodzenie.id_pracownika IN (SELECT id_pracownika FROM ksiegowosc.wynagrodzenie WHERE id_pensji IN (SELECT id_pensji FROM ksiegowosc.pensja WHERE kwota < 1200))

