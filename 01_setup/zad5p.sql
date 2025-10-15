-- 5p Usuń wszystkich pracowników mających pensję mniejszą niż 1200 
WITH do_usuniecia AS (
	SELECT w.id_pracownika
	FROM ksiegowosc.wynagrodzenie w
	JOIN ksiegowosc.pensja p ON w.id_pensji = p.id_pensji
	WHERE p.kwota <= 1200
),
del_wyn AS (
	DELETE FROM ksiegowosc.wynagrodzenie
	WHERE id_pracownika IN (SELECT id_pracownika FROM do_usuniecia)
),
del_godz AS (
	DELETE FROM ksiegowosc.godziny
	WHERE id_pracownika IN (SELECT id_pracownika FROM do_usuniecia)
)
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (SELECT id_pracownika FROM do_usuniecia);

