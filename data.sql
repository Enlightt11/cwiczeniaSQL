-- Tabela: country (Państwo)
INSERT INTO country (country, country_short) VALUES
('Francja', 'FR'),
('Portugalia', 'PT'),
('Norwegia', 'NO'),
('Szwecja', 'SE'),
('Ukraina', 'UA'),
('Słowacja', 'SK'),
('Węgry', 'HU'),
('Austria', 'AT'),
('Holandia', 'NL'),
('Grecja', 'GR');

-- Tabela: authors (Autorzy)
INSERT INTO authors (first_name, last_name, birth_date, country_id, biography) VALUES
('George', 'Orwell', '1903-06-25', 4, 'Brytyjski pisarz, autor antyutopii "1984" i "Folwark zwierzęcy"'),
('Harper', 'Lee', '1926-04-28', 2, 'Amerykańska pisarka, autorka powieści "Zabić drozda"'),
('Jane', 'Austen', '1775-12-16', 4, 'Angielska powieściopisarka znana z realistycznych romansów'),
('F. Scott', 'Fitzgerald', '1896-09-24', 2, 'Amerykański pisarz, twórca "Wielkiego Gatsby’ego"'),
('Herman', 'Melville', '1819-08-01', 2, 'Amerykański pisarz marynistyczny, autor "Moby Dicka"'),
('Fyodor', 'Dostoevsky', '1821-11-11', 5, 'Rosyjski pisarz, twórca "Zbrodni i kary"'),
('J.D.', 'Salinger', '1919-01-01', 2, 'Amerykański autor powieści "Buszujący w zbożu"'),
('Gabriel', 'Garcia Marquez', '1927-03-06', 9, 'Kolumbijski noblista, autor "Stu lat samotności"'),
('Aldous', 'Huxley', '1894-07-26', 4, 'Brytyjski pisarz i filozof, autor "Nowego wspaniałego świata"'),
('J.R.R.', 'Tolkien', '1892-01-03', 4, 'Angielski filolog, twórca Śródziemia i "Hobbita"');

-- Tabela: books (książki)
INSERT INTO books (title, isbn, publication_year, publisher, genre, status_id) VALUES
('1984', '9780451524935', 1949, 'Secker & Warburg', 'Dystopia', 1),
('To Kill a Mockingbird', '9780061120084', 1960, 'J.B. Lippincott & Co.', 'Fiction', 1),
('Pride and Prejudice', '9780141439518', 1813, 'T. Egerton', 'Romance', 1),
('The Great Gatsby', '9780743273565', 1925, 'Scribner', 'Tragedy', 1),
('Moby Dick', '9780142437247', 1851, 'Harper & Brothers', 'Adventure', 1),
('Crime and Punishment', '9780140449136', 1866, 'The Russian Messenger', 'Psychological Fiction', 1),
('The Catcher in the Rye', '9780316769488', 1951, 'Little, Brown and Company', 'Fiction', 1),
('One Hundred Years of Solitude', '9780060883287', 1967, 'Harper & Row', 'Magic Realism', 1),
('Brave New World', '9780060850524', 1932, 'Chatto & Windus', 'Dystopia', 1),
('The Hobbit', '9780261102217', 1937, 'George Allen & Unwin', 'Fantasy', 1);

-- Tabela: authorsBooks (Autorzy książek)
INSERT INTO authorsBooks (author_id, book_id) VALUES
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20);

-- Tabela: user (Użytkownicy systemu)
INSERT INTO [user] (username, password_hash, email, role, status_id) VALUES
('admin2', 'abc123hash', 'admin2@sql.com', 'admin', 3),
('lib3', 'hashlib3', 'lib3@sql.com', 'librarian', 3),
('user9', 'passwdhash9', 'user9@sql.com', 'user', 3),
('user10', 'hash10', 'user10@sql.com', 'user', 3),
('czytelnik1', 'cz1hash', 'czytelnik1@sql.com', 'user', 3),
('czytelnik2', 'cz2hash', 'czytelnik2@sql.com', 'user', 3),
('czytelnik3', 'cz3hash', 'czytelnik3@sql.com', 'user', 3),
('czytelnik4', 'cz4hash', 'czytelnik4@sql.com', 'user', 3),
('czytelnik5', 'cz5hash', 'czytelnik5@sql.com', 'user', 3),
('czytelnik6', 'cz6hash', 'czytelnik6@sql.com', 'user', 3);

-- Tabela: readers (Czytelnicy)
INSERT INTO readers (user_id, first_name, last_name, address, phone, status_id) VALUES
(13, 'Karolina', 'Sosna', 'ul. Cisowa 12', '123123123', 3),
(14, 'Jakub', 'Nowicki', 'ul. Topolowa 4', '321321321', 3),
(15, 'Natalia', 'Mazur', 'ul. Brzozowa 8', '456456456', 3),
(16, 'Marek', 'Baran', 'ul. Dębowa 9', '789789789', 3),
(17, 'Aleksandra', 'Lisowska', 'ul. Modrzewiowa 3', '147147147', 3),
(18, 'Filip', 'Pawlak', 'ul. Jesionowa 2', '258258258', 3),
(19, 'Zuzanna', 'Zięba', 'ul. Wiązowa 5', '369369369', 3),
(20, 'Patryk', 'Lewandowski', 'ul. Klonowa 6', '951951951', 3),
(21, 'Paulina', 'Król', 'ul. Grabowa 7', '753753753', 3),
(22, 'Mateusz', 'Nowosielski', 'ul. Akacjowa 1', '852852852', 3);

-- Tabela: borrowing (Wypożyczenia)
INSERT INTO borrowing (book_id, readers_id, due, status_id) VALUES
(11, 11, 14, 1),
(12, 12, 14, 1),
(13, 13, 14, 1),
(14, 14, 14, 1),
(15, 15, 14, 1),
(16, 16, 14, 1),
(17, 17, 14, 1),
(18, 18, 14, 1),
(19, 19, 14, 1),
(20, 20, 14, 1);

-- Tabela: reservation (Rezerwacje)
INSERT INTO reservation (book_id, readers_id, status_id) VALUES
(11, 12, 1),
(12, 13, 1),
(13, 14, 1),
(14, 15, 1),
(15, 16, 1),
(16, 17, 1),
(17, 18, 1),
(18, 19, 1),
(19, 20, 1),
(20, 11, 1);

-- Tabela: fine (kary)
INSERT INTO fine (borrowing_id, amount, status_id) VALUES
(11, 5.00, 1),
(12, 6.00, 1),
(13, 7.00, 1),
(14, 3.50, 1),
(15, 4.20, 1),
(16, 2.75, 1),
(17, 8.30, 1),
(18, 5.55, 1),
(19, 6.60, 1),
(20, 7.77, 1);
