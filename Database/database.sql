CREATE TABLE "User" (
  "id_user" integer PRIMARY KEY,
  "nama" varchar(100),
  "email" varchar(100) UNIQUE,
  "password" varchar(255),
  "jurusan" varchar(100),
  "universitas" varchar(100)
);

CREATE TABLE "Pemasukan" (
  "id_pemasukan" integer PRIMARY KEY,
  "id_user" integer,
  "sumber" varchar(100),
  "jumlah" float8,
  "tanggal" date
);

CREATE TABLE "Pengeluaran" (
  "id_pengeluaran" integer PRIMARY KEY,
  "id_user" integer,
  "kategori" varchar(100),
  "jumlah" float8,
  "tanggal" date
);

ALTER TABLE "Pemasukan" ADD FOREIGN KEY ("id_user") REFERENCES "User" ("id_user");

ALTER TABLE "Pengeluaran" ADD FOREIGN KEY ("id_user") REFERENCES "User" ("id_user");
