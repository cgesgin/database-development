
--Tablolara veri ekleme işlemleri

USE db_library;

INSERT INTO members (first_name, last_name, gender, email, phone_number)
VALUES
(N'Ahmet', N'Yılmaz', N'Erkek', N'ahmet@gmail.com', N'05551111111'),
(N'Ayşe', N'Demir', N'Kadın', N'ayse@gmail.com', N'05552222222'),
(N'Mehmet', N'Kaya', N'Erkek', N'mehmet@gmail.com', N'05553333333'),
(N'Fatma', N'Çelik', N'Kadın', N'fatma@gmail.com', N'05554444444'),
(N'Zeynep', N'Şahin', N'Kadın', N'zeynep@gmail.com', N'05555555555');

SELECT * FROM members;

INSERT INTO address (description, town, city, country)
VALUES
(N'Atatürk Mahallesi No:10', N'Kadıköy', N'İstanbul', N'Türkiye'),
(N'Cumhuriyet Caddesi No:25', N'Çankaya', N'Ankara', N'Türkiye'),
(N'İnönü Sokak No:5', N'Konak', N'İzmir', N'Türkiye'),
(N'Barış Mahallesi No:12', N'Nilüfer', N'Bursa', N'Türkiye'),
(N'Gül Sokak No:8', N'Muratpaşa', N'Antalya', N'Türkiye');

SELECT * FROM address;

INSERT INTO books (title, author, published_year, isbn, page_number)
VALUES
(N'Suç ve Ceza', N'Fyodor Dostoyevski', 1866, N'9789750718533', 687),
(N'Kürk Mantolu Madonna', N'Sabahattin Ali', 1943, N'9789753638029', 160),
(N'1984', N'George Orwell', 1949, N'9780451524935', 328),
(N'Nutuk', N'Mustafa Kemal Atatürk', 1927, N'9789751000003', 600),
(N'Küçük Prens', N'Antoine de Saint-Exupéry', 1943, N'9786053321000', 112);

SELECT * FROM books;

INSERT INTO category (name)
VALUES
(N'Roman'),
(N'Tarih'),
(N'Bilim Kurgu'),
(N'Felsefe'),
(N'Çocuk Kitapları');

SELECT * FROM category;

INSERT INTO author (first_name, last_name)
VALUES
(N'Fyodor', N'Dostoyevski'),
(N'Sabahattin', N'Ali'),
(N'George', N'Orwell'),
(N'Mustafa Kemal', N'Atatürk'),
(N'Antoine de Saint-Exupéry', N'');

SELECT * FROM author;

INSERT INTO library (name, address_id)
VALUES
(N'İstanbul Merkez Kütüphanesi', 1),
(N'Ankara Halk Kütüphanesi', 2),
(N'İzmir Şehir Kütüphanesi', 3),
(N'Bursa İl Halk Kütüphanesi', 4),
(N'Antalya Merkez Kütüphanesi', 5);

SELECT * FROM library;

INSERT INTO book_category (book_id, category_id)
VALUES
(1, 1),
(1, 4),
(2, 1),
(3, 3),
(4, 2),
(5, 5);

SELECT * FROM book_category;

INSERT INTO book_author (book_id, author_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

SELECT * FROM book_author;

INSERT INTO book_library (library_id, book_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 1),
(2, 2);

SELECT * FROM book_library;

UPDATE members SET address_id = 1 WHERE id = 1;
UPDATE members SET address_id = 2 WHERE id = 2;
UPDATE members SET address_id = 3 WHERE id = 3;
UPDATE members SET address_id = 4 WHERE id = 4;
UPDATE members SET address_id = 5 WHERE id = 5;

SELECT * FROM members;

INSERT INTO loans (book_id, member_id, library_id, loan_date, return_date)
VALUES
(1, 1, 1, '2026-01-05', '2026-01-20'),
(2, 2, 1, '2026-01-10', '2026-01-25'),
(3, 3, 2, '2026-02-01', '2026-02-15'),
(4, 4, 3, '2026-02-05', '2026-02-20'),
(5, 5, 4, '2026-02-10', '2026-02-24');

SELECT * FROM loans;