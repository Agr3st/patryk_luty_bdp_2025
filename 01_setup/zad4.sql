INSERT INTO ksiegowosc.pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Nowak', 'ul. Lipowa 12, Warszawa', '601234567'),
('Julia', 'Konieczna', 'ul. Słoneczna 4, Kraków', '602345678'),
('Jakub', 'Wiśniewski', 'ul. Ogrodowa 8, Gdańsk', '603456789'),
('Anna', 'Lewandowska', 'ul. Różana 9, Poznań', '604567890'),
('Joanna', 'Zielińska', 'ul. Jesionowa 3, Wrocław', '605678901'),
('Marek', 'Kamiński', 'ul. Spacerowa 6, Łódź', '606789012'),
('Natalia', 'Kowalczyk', 'ul. Klonowa 10, Lublin', '607890123'),
('Piotr', 'Wójcik', 'ul. Długa 5, Katowice', '608901234'),
('Kinga', 'Nowicka', 'ul. Kwiatowa 7, Rzeszów', '609012345'),
('Jacek', 'Domański', 'ul. Krótka 2, Szczecin', '610123456');

INSERT INTO ksiegowosc.godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-01-31', 165, 1),
('2025-01-31', 150, 2),
('2025-01-31', 172, 3),
('2025-01-31', 160, 4),
('2025-01-31', 175, 5),
('2025-01-31', 158, 6),
('2025-01-31', 162, 7),
('2025-01-31', 155, 8),
('2025-01-31', 180, 9),
('2025-01-31', 140, 10);

INSERT INTO ksiegowosc.pensja (stanowisko, kwota) VALUES
('Junior Developer', 1200.00),
('Mid Developer', 2500.00),
('Senior Developer', 2900.00),
('Tester', 1800.00),
('Kierownik', 3500.00),
('Analityk', 4000.00),
('DevOps Engineer', 2800.00),
('Frontend Developer', 3100.00),
('Backend Developer', 2200.00),
('CTO', 6000.00);

INSERT INTO ksiegowosc.premia (rodzaj, kwota) VALUES
('Premia świąteczna', 500.00),
('Premia uznaniowa', 800.00),
('Premia projektowa', 1000.00),
('Premia kwartalna', 600.00),
('Premia jakościowa', 400.00),
('Premia motywacyjna', 300.00),
('Premia za terminowość', 700.00),
('Premia roczna', 900.00),
('Premia lojalnościowa', 200.00),
('Premia stażowa', 850.00);

INSERT INTO ksiegowosc.wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-01-31', 1, 1, 1, NULL),
('2025-01-31', 2, 2, 2, 2),
('2025-01-31', 3, 3, 3, NULL),
('2025-01-31', 4, 4, 4, 1),
('2025-01-31', 5, 5, 5, 4),
('2025-01-31', 6, 6, 6, NULL),
('2025-01-31', 7, 7, 7, 3),
('2025-01-31', 8, 8, 8, NULL),
('2025-01-31', 9, 9, 9, 5),
('2025-01-31', 10, 10, 10, NULL);
