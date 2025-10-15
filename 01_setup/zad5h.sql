WITH nadgodziny AS
(
	SELECT 
		p.id_pracownika,
		CASE
			WHEN (g.liczba_godzin - 160) >0 THEN (g.liczba_godzin - 160) ELSE 0
		END AS liczba_nadgodzin
	FROM ksiegowosc.pracownicy p
	JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
),
pracownicy_z_nadgodzinami AS 
(
	SELECT
		id_pracownika
		, liczba_nadgodzin
	FROM nadgodziny
	WHERE liczba_nadgodzin > 0
)
SELECT 
	p.id_pracownika 
FROM pracownicy_z_nadgodzinami p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
WHERE id_premii IS NULL;