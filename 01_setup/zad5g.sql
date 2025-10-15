-- 5g
SELECT 
	p.imie
	, p.nazwisko
	, s.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensja s ON w.id_pensji = s.id_pensji
WHERE s.kwota BETWEEN 1500 AND 3000;
