-- CREATE DATABASE
CREATE DATABASE penjualan_morning_tim_a;

-- USE DATABASE
USE penjualan_morning_tim_a;

/* CREATE TABLE */
CREATE TABLE pemasok (
     id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     nama VARCHAR(255) NOT NULL,
     no_telp VARCHAR (20) NOT NULL,
     created_at DATETIME DEFAULT NOW() NOT NULL
);

CREATE TABLE barang (
     id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     nama VARCHAR(255) NOT NULL UNIQUE,
     harga DECIMAL NOT NULL,
     id_pemasok BIGINT UNSIGNED NOT NULL,
     FOREIGN KEY (id_pemasok) REFERENCES pemasok(id)
);

CREATE TABLE pelanggan (
     id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     nama VARCHAR(255) NOT NULL
);

CREATE TABLE transaksi (
    id BIGINT UNSIGNED auto_increment NOT NULL PRIMARY KEY,
    id_barang BIGINT UNSIGNED NOT NULL,
    id_pelanggan BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (id_barang) REFERENCES barang(id),
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id),
    changeCount INTEGER DEFAULT 0,
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW(),
    deletedAt DATETIME DEFAULT NULL,
    jumlah INT NOT NULL,
    total DECIMAL NOT NULL
);
/* END CREATE TABLE */
