-- l) Policz średnią, minimalną i maksymalną płacę dla stanowiska ‘kierownik’.
SELECT
	MIN(p.kwota) AS min_placa
	, ROUND(AVG(p.kwota), 2) AS srednia_placa
	, MAX(p.kwota) AS max_placa
FROM ksiegowosc.pensja p
WHERE LOWER(p.stanowisko) LIKE 'kierownik';