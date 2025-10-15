CREATE TABLE ksiegowosc.pracownicy
(
	id_pracownika SERIAL PRIMARY KEY,
	imie VARCHAR(50) NOT NULL,
	nazwisko VARCHAR(50) NOT NULL,
	adres VARCHAR(100),
	telefon VARCHAR(9)
);

CREATE TABLE ksiegowosc.godziny
(
	id_godziny SERIAL PRIMARY KEY,
	data DATE NOT NULL,
	liczba_godzin INT NOT NULL,
	id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

CREATE TABLE ksiegowosc.pensja
(
	id_pensji SERIAL PRIMARY KEY,
	stanowisko VARCHAR(50) NOT NULL,
	kwota NUMERIC(10, 2) NOT NULL
);

CREATE TABLE ksiegowosc.premia
(
	id_premii SERIAL PRIMARY KEY,
	rodzaj VARCHAR(50) NOT NULL,
	kwota NUMERIC(10, 2) NOT NULL
);

CREATE TABLE ksiegowosc.wynagrodzenie
(
	id_wynagrodzenia SERIAL PRIMARY KEY,
	data DATE NOT NULL,
	id_pracownika INT NOT NULL REFERENCES ksiegowosc.pracownicy(id_pracownika),
	id_godziny INT NOT NULL REFERENCES ksiegowosc.godziny(id_godziny),
	id_pensji INT NOT NULL REFERENCES ksiegowosc.pensja(id_pensji),
	id_premii INT REFERENCES ksiegowosc.premia(id_premii)
);

COMMENT ON TABLE ksiegowosc.pracownicy IS 'Tabela przechowuje dane pracowników firmy.';
COMMENT ON TABLE ksiegowosc.godziny IS 'Tabela rejestrująca liczbę przepracowanych godzin przez pracowników.';
COMMENT ON TABLE ksiegowosc.pensja IS 'Tabela przechowuje dane dotyczące pensji podstawowej dla poszczególnych stanowisk.';
COMMENT ON TABLE ksiegowosc.premia IS 'Tabela definiuje różne rodzaje premii oraz ich wartości.';
COMMENT ON TABLE ksiegowosc.wynagrodzenie IS 'Tabela łącząca dane o pracowniku, godzinach, pensji i premii — pozwala obliczyć pełne wynagrodzenie.';
