-- k) Zlicz i pogrupuj pracowników według pola ‘stanowisko’.
SELECT
	p.stanowisko
	, COUNT(w.id_pracownika)
FROM ksiegowosc.wynagrodzenie w
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
GROUP BY p.stanowisko;