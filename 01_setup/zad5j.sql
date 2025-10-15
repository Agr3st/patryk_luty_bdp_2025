-- 5j Uszereguj pracowników według pensji i premii malejąco.
SELECT
	w.id_pracownika
	, prac.imie
	, prac.nazwisko
	, p.kwota AS pensja
	, pr.kwota AS premia
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.pracownicy prac ON prac.id_pracownika = w.id_pracownika
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
ORDER BY (p.kwota, pr.kwota) DESC;