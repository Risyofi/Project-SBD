-- Tabel artis
CREATE TABLE artis (
  id_artis INTEGER(11) PRIMARY KEY NOT NULL,
  nama VARCHAR(45) NOT NULL,
  negara VARCHAR(45) NOT NULL,
  tahun_aktif INTEGER(4) NOT NULL
);

-- Tabel album
CREATE TABLE album (
  id_album INTEGER(11) PRIMARY KEY NOT NULL,
  artis_id_artis INTEGER(11) NOT NULL,
  judul VARCHAR(45) NOT NULL,
  tahun_rilis INTEGER(4) NOT NULL,
  FOREIGN KEY (artis_id_artis) REFERENCES artis (id_artis)
);

-- Tabel lagu
CREATE TABLE lagu (
  id_lagu INTEGER(11) PRIMARY KEY NOT NULL,
  genre_id_genre INTEGER(11) NOT NULL,
  album_id_album INTEGER(11) NOT NULL,
  judul VARCHAR(45) NOT NULL,
  durasi TIME NOT NULL,
  FOREIGN KEY (genre_id_genre) REFERENCES genre (id_genre),
  FOREIGN KEY (album_id_album) REFERENCES album (id_album)
);

-- Tabel genre
CREATE TABLE genre (
  id_genre INTEGER(11) PRIMARY KEY NOT NULL,
  nama VARCHAR(45) NOT NULL,
  deskripsi TEXT NOT NULL,
  popularitas INTEGER(11) NOT NULL
);

-- Tabel pengguna
CREATE TABLE pengguna (
  id_pengguna INTEGER(11) PRIMARY KEY NOT NULL,
  nama VARCHAR(25) NOT NULL,
  email VARCHAR(65) NOT NULL,
  tanggal_lahir DATE NOT NULL
);

-- Tabel playlist
CREATE TABLE playlist (
  id_playlist INTEGER(11) PRIMARY KEY NOT NULL,
  pengguna_id_pengguna INTEGER(11) NOT NULL,
  judul VARCHAR(45) NOT NULL,
  tanggal_dibuat DATE NOT NULL,
  FOREIGN KEY (pengguna_id_pengguna) REFERENCES pengguna (id_pengguna)
);

-- Tabel lagu_has_pengguna
CREATE TABLE lagu_has_pengguna (
  lagu_id_lagu INTEGER(11) NOT NULL,
  pengguna_id_pengguna INTEGER(11) NOT NULL,
  FOREIGN KEY (lagu_id_lagu) REFERENCES lagu (id_lagu),
  FOREIGN KEY (pengguna_id_pengguna) REFERENCES pengguna (id_pengguna)
);










/*

CREATE TABLE artis (
  id_artis INT PRIMARY KEY,
  nama VARCHAR(45),
  negara VARCHAR(45),
  tahun_aktif INT
);

CREATE TABLE album (
  id_album INT PRIMARY KEY,
  id_artis INT,
  judul VARCHAR(45),
  tahun_rilis INT,
  FOREIGN KEY (id_artis) REFERENCES artis(id_artis)
);

CREATE TABLE genre (
  id_genre INT PRIMARY KEY,
  nama VARCHAR(45),
  deskripsi TEXT,
  popularitas INT
);

CREATE TABLE lagu (
  id_lagu INT PRIMARY KEY,
  id_album INT,
  id_genre INT,
  judul VARCHAR(45),
  durasi TIME,
  FOREIGN KEY (id_album) REFERENCES album(id_album),
  FOREIGN KEY (id_genre) REFERENCES genre(id_genre)
);

CREATE TABLE pengguna (
  id_pengguna INT PRIMARY KEY,
  nama VARCHAR(45),
  email VARCHAR(65),
  tanggal_lahir DATE
);

CREATE TABLE playlist (
  id_playlist INT PRIMARY KEY,
  id_pengguna INT,
  judul VARCHAR(45),
  tanggal_dibuat DATE,
  FOREIGN KEY (id_pengguna) REFERENCES pengguna(id_pengguna)
);

CREATE TABLE lagu_pengguna (
  id_lagu_pengguna INT PRIMARY KEY,
  id_lagu INT,
  id_pengguna INT,
  FOREIGN KEY (id_lagu) REFERENCES lagu(id_lagu),
  FOREIGN KEY (id_pengguna) REFERENCES pengguna(id_pengguna)
);
*/
