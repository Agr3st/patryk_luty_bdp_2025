-- 5o Wyznacz liczbę premii przyznanych dla pracowników danego stanowiska
SELECT
	p.stanowisko
	, COUNT(w.id_premii)
FROM ksiegowosc.wynagrodzenie w
LEFT JOIN ksiegowosc.premia pr ON w.id_premii = pr.id_premii
JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
GROUP BY p.stanowisko;