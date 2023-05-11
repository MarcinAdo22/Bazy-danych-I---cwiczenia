/*
ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN telefon varchar(14) NOT NULL;


UPDATE ksiegowosc.pracownicy
SET telefon = SUBSTRING(telefon, 4, 12)

-- dodanie numeru dla Polski
UPDATE ksiegowosc.pracownicy
SET telefon = '+48' + telefon


UPDATE ksiegowosc.pracownicy
SET telefon = SUBSTR(telefon, 1, 3) + ' ' + SUBSTR(telefon, 4, 3) + ' ' + SUBSTR(telefon, 7, 3) + ' ' +  SUBSTR(telefon, 10, 3)


UPDATE ksiegowosc.pracownicy
SET telefon = SUBSTRING(telefon, 1, 3) + SUBSTRING(telefon, 5, 3) + SUBSTRING(telefon, 9, 3)


-- dodanie - dla numeru
UPDATE ksiegowosc.pracownicy
SET telefon = SUBSTRING(telefon, 1, 3) + '-' + SUBSTRING(telefon, 4, 3) + '-' + SUBSTRING(telefon, 7, 3)


ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN imie text
ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN nazwisko text
ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN adres text

ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN imie varchar(30)
ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN nazwisko varchar(30)
ALTER TABLE ksiegowosc.pracownicy
ALTER COLUMN adres text


-- wygenerowanie pracownika z najdluzszym nazwiskiem z duzych liter
SELECT id_pracownika, UPPER(CONVERT(varchar(30), imie)) as imie, UPPER(CONVERT(varchar(30),nazwisko)) as nazwisko, UPPER(CONVERT(varchar(30), adres)) as adres, telefon FROM ksiegowosc.pracownicy WHERE datalength(nazwisko) = 10 

-- wyswietlenie pracownikow i kwot z md5
SELECT ksiegowosc.pracownicy.id_pracownika, imie, nazwisko, adres, telefon, HASHBYTES('MD5', CONVERT(varchar(5), ksiegowosc.pensja.kwota)) as kwota FROM ksiegowosc.pracownicy JOIN ksiegowosc.wynagrodzenie ON  ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika JOIN ksiegowosc.pensja ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji


INSERT INTO ksiegowosc.wynagrodzenie ( id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii )  VALUES ('5', '2035-11-30', '3', '3', '5', '7')
INSERT INTO ksiegowosc.wynagrodzenie ( id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii )  VALUES ('10', '2035-11-30', '4', '5', '9', '10')


-- wyznaczenie pracownikow, pensji, premii
SELECT ksiegowosc.pracownicy.id_pracownika, imie, nazwisko, adres, telefon, ksiegowosc.pensja.kwota as pensja, ksiegowosc.premia.kwota as premia FROM ksiegowosc.pracownicy LEFT OUTER JOIN ksiegowosc.wynagrodzenie ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika LEFT OUTER JOIN ksiegowosc.pensja ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji LEFT OUTER JOIN ksiegowosc.premia ON ksiegowosc.premia.id_premii = ksiegowosc.wynagrodzenie.id_premii



-- wygenerowanie raportu z pracownikami, pensja, premia, nadgodzinami, kwota
SELECT ksiegowosc.pracownicy.imie, ksiegowosc.pracownicy.nazwisko, ksiegowosc.godziny.data, 
ksiegowosc.pensja.kwota + ksiegowosc.premia.kwota + (ksiegowosc.pensja.kwota / 160) * (ksiegowosc.godziny.liczba_godzin - 160) as calkow_kwota, 
ksiegowosc.pensja.kwota as pensja, ksiegowosc.premia.kwota as premia,
(ksiegowosc.pensja.kwota / 160) * (ksiegowosc.godziny.liczba_godzin - 160) as nadgodziny
FROM ksiegowosc.pracownicy INNER JOIN ksiegowosc.wynagrodzenie ON ksiegowosc.pracownicy.id_pracownika = ksiegowosc.wynagrodzenie.id_pracownika
INNER JOIN ksiegowosc.godziny ON ksiegowosc.godziny.id_pracownika = ksiegowosc.pracownicy.id_pracownika INNER JOIN ksiegowosc.pensja ON ksiegowosc.pensja.id_pensji = ksiegowosc.wynagrodzenie.id_pensji
INNER JOIN ksiegowosc.premia ON ksiegowosc.premia.id_premii = ksiegowosc.wynagrodzenie.id_premii
*/










