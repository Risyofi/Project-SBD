INSERT INTO artis (id_artis, nama, negara, tahun_aktif) VALUES
(1, 'Ed Sheeran', 'Inggris', 2004),
(2, 'Beyoncé', 'Amerika Serikat', 1997),
(3, 'Taylor Swift', 'Amerika Serikat', 2003),
(4, 'Drake', 'Kanada', 2001),
(5, 'Adele', 'Inggris', 2006),
(6, 'Bruno Mars', 'Amerika Serikat', 2003),
(7, 'Rihanna', 'Barbados', 2003),
(8, 'Justin Bieber', 'Kanada', 2008),
(9, 'Katy Perry', 'Amerika Serikat', 2001),
(10, 'The Weeknd', 'Kanada', 2010);

INSERT INTO album (id_album, id_artis, judul, tahun_rilis) VALUES
(1, 1, '÷ (Divide)', 2017),
(2, 2, 'Lemonade', 2016),
(3, 3, '1989', 2014),
(4, 4, 'Scorpion', 2018),
(5, 5, '21', 2011),
(6, 6, '24K Magic', 2016),
(7, 7, 'Good Girl Gone Bad', 2007),
(8, 8, 'Purpose', 2015),
(9, 9, 'Teenage Dream', 2010),
(10, 10, 'Starboy', 2016);

INSERT INTO genre (id_genre, nama, deskripsi, popularitas) VALUES
(1, 'Pop', 'Musik populer dengan melodi yang mudah diingat.', 10),
(2, 'R&B', 'Musik yang menggabungkan unsur rhythm and blues dengan elemen pop dan soul.', 8),
(3, 'Country', 'Musik dengan akar dari tradisi musik rakyat Amerika Serikat.', 6),
(4, 'Hip Hop', 'Genre musik yang terkait dengan subkultur hip hop.', 9),
(5, 'Rock', 'Musik dengan akar dari genre rock and roll.', 7),
(6, 'Dance', 'Musik yang diproduksi untuk tujuan mendukung tarian.', 8),
(7, 'Reggae', 'Musik yang berasal dari Jamaika.', 6),
(8, 'Pop Rock', 'Gabungan genre pop dan rock.', 7),
(9, 'Soul', 'Musik dengan akar dari musik gospel dan rhythm and blues.', 7),
(10, 'Electronic', 'Musik yang menggunakan instrumen elektronik dan teknologi produksi.', 8);

INSERT INTO lagu (id_lagu, id_album, id_genre, judul, durasi) VALUES
(1, 1, 1, 'Shape of You', '00:03:53'),
(2, 2, 2, 'Formation', '00:03:26'),
(3, 3, 1, 'Blank Space', '00:03:51'),
(4, 4, 4, 'God''s Plan', '00:03:18'),
(5, 5, 1, 'Rolling in the Deep', '00:03:49'),
(6, 6, 6, 'That''s What I Like', '00:03:27'),
(7, 7, 7, 'Umbrella', '00:04:35'),
(8, 8, 1, 'Sorry', '00:03:20'),
(9, 9, 8, 'Firework', '00:03:47'),
(10, 10, 9, 'Starboy', '00:03:51');

INSERT INTO pengguna (id_pengguna, nama, email, tanggal_lahir) VALUES
(1, 'John Doe', 'johndoe@example.com', '1990-05-15'),
(2, 'Jane Smith', 'janesmith@example.com', '1992-09-28'),
(3, 'Michael Johnson', 'michaeljohnson@example.com', '1988-07-12'),
(4, 'Emily Davis', 'emilydavis@example.com', '1995-02-04'),
(5, 'Daniel Wilson', 'danielwilson@example.com', '1991-11-19'),
(6, 'Olivia Anderson', 'oliviaanderson@example.com', '1989-03-22'),
(7, 'William Taylor', 'williamtaylor@example.com', '1993-08-06'),
(8, 'Sophia Clark', 'sophiaclark@example.com', '1994-12-09'),
(9, 'Matthew Lewis', 'matthewlewis@example.com', '1996-06-30'),
(10, 'Isabella Martinez', 'isabellamartinez@example.com', '1997-04-17');

INSERT INTO playlist (id_playlist, id_pengguna, judul, tanggal_dibuat) VALUES
(1, 1, 'My Favorites', '2022-01-10'),
(2, 2, 'Road Trip Mix', '2021-07-05'),
(3, 3, 'Throwback Jams', '2020-03-15'),
(4, 4, 'Chill Vibes', '2022-11-30'),
(5, 5, 'Workout Playlist', '2021-09-20'),
(6, 6, 'Party Hits', '2023-01-05'),
(7, 7, 'Relaxing Melodies', '2022-05-12'),
(8, 8, 'Feel Good Tunes', '2023-03-28'),
(9, 9, 'Country Classics', '2021-12-18'),
(10, 10, 'Late Night Jams', '2022-08-09');
