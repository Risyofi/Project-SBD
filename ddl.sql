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
