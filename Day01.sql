-- create dataBase coskun;

-- DDL - Data Definition Lang.
-- CREATE - TABLO OLUSTURMA
create table ogrenciler1
(
ogrenci_no char(7),
isim varchar(20),
soyisim varchar(25),
not_ort real,  -- Ondalikli sayi kullanilir (Double gibi)
kayit_tarih date	

);


-- VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA
create table ogrenci_notlari
as -- Benzer tablodaki basliklarla ve data tipleri ile yeni bir 
--tablo olusturmak icin normal tablo olustururkenki parantezler
--yerine as kullanip SELECT komutuyla almak istedigimiz verileri
--aliriz.
select isim, soyisim, not_ort From ogrenciler1;

-- DML - DATA MANUPULATION LANG. 
-- insert (dATABASE'YE VERI EKLEME)

INSERT INTO ogrenciler1 VALUES ('1234567', 'Said', 'ILHAN',85.5,now())
INSERT INTO ogrenciler1 VALUES ('1234567', 'Said', 'ILHAN',85.5,'2022-12-1')

-- Bir Tabloya Parcali Veri Eklemek Istersek

INSERT INTO ogrenciler1 (isim,soyisim) Values ('Erol','EVREN');

-- DQL - DATA Query Lang.
--Select

select * from ogrenciler1;




