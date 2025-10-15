-- 5i
SELECT
	w.id_pracownika
	, prac.imie
	, prac.nazwisko
	, p.kwota
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.pracownicy prac ON prac.id_pracownika = w.id_pracownika
ORDER BY p.kwota DESC