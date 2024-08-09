-- --------------------------------------------------------
-- Sunucu:                       localhost
-- Sunucu sürümü:                10.4.32-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- can_assistance için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `can_assistance` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `can_assistance`;

-- tablo yapısı dökülüyor can_assistance.araclar
CREATE TABLE IF NOT EXISTS `araclar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aracAdi` varchar(50) NOT NULL DEFAULT '0',
  `aracTipi` varchar(50) NOT NULL DEFAULT '0',
  `koltukSayisi` varchar(50) NOT NULL DEFAULT '0',
  `plakaNo` varchar(50) NOT NULL DEFAULT '0',
  `musteriId` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.araclar: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.arac_turleri
CREATE TABLE IF NOT EXISTS `arac_turleri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sira` int(11) NOT NULL DEFAULT 0,
  `cinsKodu` varchar(50) NOT NULL DEFAULT '0',
  `cinsKodAdi` varchar(50) NOT NULL DEFAULT '0',
  `cinsAdi` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.arac_turleri: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.authlevels
CREATE TABLE IF NOT EXISTS `authlevels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelName` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.authlevels: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.ayarlar
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `baslik` varchar(50) DEFAULT NULL,
  `kdvOran` varchar(50) DEFAULT NULL,
  `kdvSistemHesaplama` varchar(50) DEFAULT NULL,
  `firmaUnvani` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL,
  `ihbarWhatsappHatti` varchar(50) DEFAULT NULL,
  `eposta` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `mernisNo` varchar(50) DEFAULT NULL,
  `adres` varchar(50) DEFAULT NULL,
  `adres2` varchar(50) DEFAULT NULL,
  `ilaveTutarKomisyonu` varchar(50) DEFAULT NULL,
  `minimumCekimLimit` varchar(50) DEFAULT NULL,
  `minimum3dIslemTutari` varchar(50) DEFAULT NULL,
  `minimumHizmetGunSayisi` varchar(50) DEFAULT NULL,
  `faturaKarsiligiIptalGunSayisi` varchar(50) DEFAULT NULL,
  `musteriTelefonEposta` varchar(50) DEFAULT NULL,
  `musterSmsGonder` varchar(50) DEFAULT NULL,
  `musteriMailGonder` varchar(50) DEFAULT NULL,
  `fiyatArttirAlani` varchar(50) DEFAULT NULL,
  `faturaUnvani` varchar(50) DEFAULT NULL,
  `faturaVd` varchar(50) DEFAULT NULL,
  `vergiNo` varchar(50) DEFAULT NULL,
  `faturaAdres` varchar(50) DEFAULT NULL,
  `parasutFaturaKullaniciAdi` varchar(50) DEFAULT NULL,
  `parasutFaturaSifre` varchar(50) DEFAULT NULL,
  `faturaFirmaKodu` varchar(50) DEFAULT NULL,
  `faturaKasaId` varchar(50) DEFAULT NULL,
  `faturaTevkifatKodu` varchar(50) DEFAULT NULL,
  `faturaUrl` varchar(50) DEFAULT NULL,
  `siteUrl` varchar(50) DEFAULT NULL,
  `siteHost` varchar(50) DEFAULT NULL,
  `siteUrlBayi` varchar(50) DEFAULT NULL,
  `siteUrlCagriMerkezi` varchar(50) DEFAULT NULL,
  `siteUrlPdf` varchar(50) DEFAULT NULL,
  `siteUrlDosyalar` varchar(50) DEFAULT NULL,
  `uploadUrl` varchar(50) DEFAULT NULL,
  `webServisUrl` varchar(50) DEFAULT NULL,
  `GOOGLE_API_DISTANCE_MATRIX` varchar(50) DEFAULT NULL,
  `GOOGLE_API_KONUM` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.ayarlar: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.bayiler
CREATE TABLE IF NOT EXISTS `bayiler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` varchar(50) NOT NULL,
  `satisIzni` tinyint(4) NOT NULL DEFAULT 0,
  `altBayiIzni` tinyint(4) NOT NULL DEFAULT 0,
  `bayiNotuEkleyebilir` tinyint(4) NOT NULL DEFAULT 0,
  `nakitSatis` tinyint(4) NOT NULL DEFAULT 0,
  `temsilciId` tinyint(4) NOT NULL DEFAULT 0,
  `ekstraKomisyon` varchar(50) NOT NULL DEFAULT '0',
  `anaBayi` varchar(50) NOT NULL DEFAULT '0',
  `altBayi` varchar(50) NOT NULL DEFAULT '0',
  `altBayiKomisyon` varchar(50) NOT NULL DEFAULT '0',
  `firmaAdi` varchar(50) NOT NULL DEFAULT '0',
  `yetkili` varchar(50) NOT NULL DEFAULT '0',
  `eposta` varchar(50) NOT NULL DEFAULT '0',
  `sifre` varchar(50) NOT NULL DEFAULT '0',
  `webServisSifre` varchar(50) NOT NULL DEFAULT '0',
  `aracYasSiniri` varchar(50) NOT NULL DEFAULT '0',
  `telefon` varchar(50) NOT NULL DEFAULT '0',
  `adres` varchar(50) NOT NULL DEFAULT '0',
  `sehir` varchar(50) NOT NULL DEFAULT '0',
  `ilce` varchar(50) NOT NULL DEFAULT '0',
  `vergiTc` varchar(50) NOT NULL DEFAULT '0',
  `vergiDairesi` varchar(50) NOT NULL DEFAULT '0',
  `faturaFirmaBasligi` varchar(50) NOT NULL DEFAULT '0',
  `faturaAdresi` varchar(50) NOT NULL DEFAULT '0',
  `bankaAdi` varchar(50) NOT NULL DEFAULT '0',
  `bankaHesapSahibi` varchar(50) NOT NULL DEFAULT '0',
  `bankaHesapSahibiTc` varchar(50) NOT NULL DEFAULT '0',
  `bankaIban` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.bayiler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.belgeler
CREATE TABLE IF NOT EXISTS `belgeler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategoriId` int(11) NOT NULL DEFAULT 0,
  `baslik` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.belgeler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.cekici_ucret_ayarlari
CREATE TABLE IF NOT EXISTS `cekici_ucret_ayarlari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minKmBaslangic` varchar(50) NOT NULL DEFAULT '0',
  `minKmBitis` varchar(50) NOT NULL DEFAULT '0',
  `sabitKasaKmUcreti` varchar(50) NOT NULL DEFAULT '0',
  `kayarKasaKmUcreti` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.cekici_ucret_ayarlari: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.duyurular
CREATE TABLE IF NOT EXISTS `duyurular` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `duyuruDurum` varchar(50) NOT NULL DEFAULT '0',
  `tarih` datetime NOT NULL,
  `baslik` varchar(50) DEFAULT NULL,
  `duyuruEkUrl` varchar(50) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.duyurular: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.hizmetler
CREATE TABLE IF NOT EXISTS `hizmetler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sira` int(11) NOT NULL DEFAULT 0,
  `isWebSite` tinyint(4) NOT NULL DEFAULT 0,
  `iconUrl` varchar(50) NOT NULL DEFAULT '0',
  `hizmetAdi` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.hizmetler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.ihbarlar
CREATE TABLE IF NOT EXISTS `ihbarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bayiId` int(11) NOT NULL DEFAULT 0,
  `tarih` datetime NOT NULL,
  `temsilciId` int(11) NOT NULL DEFAULT 0,
  `hizmetiVerenKullanici` varchar(50) NOT NULL DEFAULT '0',
  `sozlesmeNo` varchar(50) NOT NULL DEFAULT '0',
  `durum` varchar(50) NOT NULL DEFAULT '0',
  `limitBirlestirme` tinyint(4) NOT NULL DEFAULT 0,
  `faturaKarsiligiOdeme` tinyint(4) NOT NULL DEFAULT 0,
  `alinanHizmetId` int(11) NOT NULL DEFAULT 0,
  `musteriTelefonNo` varchar(50) DEFAULT NULL,
  `aracBasindakiKisi` varchar(50) DEFAULT NULL,
  `konumBilgisi` varchar(500) DEFAULT NULL,
  `aracDurumu` longtext DEFAULT NULL,
  `aciklama` varchar(500) DEFAULT NULL,
  `cevap` varchar(100) DEFAULT NULL,
  `sehirId` varchar(100) DEFAULT NULL,
  `ilceId` varchar(100) DEFAULT NULL,
  `konumBoylam` varchar(100) DEFAULT NULL,
  `konumEnlem` varchar(100) DEFAULT NULL,
  `konumGlobalCode` varchar(100) DEFAULT NULL,
  `konumTamAdres` varchar(100) DEFAULT NULL,
  `smsGonderimId` varchar(100) DEFAULT NULL,
  `SMS_API_ID_DURUM` varchar(100) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.ihbarlar: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.ihbar_dosyalari
CREATE TABLE IF NOT EXISTS `ihbar_dosyalari` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yuklenmeTarihi` datetime NOT NULL,
  `bayi` varchar(50) NOT NULL DEFAULT '',
  `sozlesmeId` varchar(50) NOT NULL DEFAULT '',
  `fileUrl` varchar(50) NOT NULL DEFAULT '',
  `fileType` varchar(50) NOT NULL DEFAULT '',
  `yukleyen` varchar(50) NOT NULL DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.ihbar_dosyalari: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.kategoriler
CREATE TABLE IF NOT EXISTS `kategoriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.kategoriler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.komisyon
CREATE TABLE IF NOT EXISTS `komisyon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sozlesmeNo` varchar(50) NOT NULL DEFAULT '0',
  `bayiId` varchar(50) NOT NULL DEFAULT '0',
  `paketId` varchar(50) NOT NULL DEFAULT '0',
  `paketServisTipi` varchar(50) NOT NULL DEFAULT '0',
  `fiyat` varchar(50) NOT NULL DEFAULT '0',
  `komisyon` varchar(50) NOT NULL DEFAULT '0',
  `komisyonAnaBayi` varchar(50) NOT NULL DEFAULT '0',
  `kdv` varchar(50) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.komisyon: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.makbuzlar
CREATE TABLE IF NOT EXISTS `makbuzlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sozlesmeNo` varchar(50) NOT NULL DEFAULT '0',
  `bayiId` varchar(50) NOT NULL DEFAULT '0',
  `tahsilatTarih` datetime NOT NULL,
  `kartNo` varchar(50) NOT NULL DEFAULT '',
  `kartSahibi` varchar(50) NOT NULL DEFAULT '',
  `odemeTuru` varchar(50) NOT NULL DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.makbuzlar: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.musteriler
CREATE TABLE IF NOT EXISTS `musteriler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `telefon` varchar(50) NOT NULL,
  `tcKimlikId` varchar(50) NOT NULL,
  `vergiNo` varchar(50) NOT NULL,
  `vergiDairesi` varchar(50) NOT NULL,
  `isActive` varchar(50) NOT NULL,
  `isBlackList` varchar(50) NOT NULL,
  `credit` varchar(50) NOT NULL,
  `aracId` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `aciklama` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.musteriler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.paketler
CREATE TABLE IF NOT EXISTS `paketler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paketAdi` varchar(50) NOT NULL DEFAULT '0',
  `hizmetSiniri` varchar(50) DEFAULT NULL,
  `hizmetGunSiniri` varchar(50) DEFAULT NULL,
  `yasSiniriTanimi` varchar(50) DEFAULT NULL,
  `aracYasSiniri` varchar(50) DEFAULT NULL,
  `toplamFiyat` varchar(50) DEFAULT NULL,
  `aracTuru` varchar(50) DEFAULT NULL,
  `parasutStokKodu` varchar(50) DEFAULT NULL,
  `tahsilatBankaSecimi` varchar(50) DEFAULT NULL,
  `webServisSatis` tinyint(4) DEFAULT NULL,
  `isWeb` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `sira` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.paketler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.sanayi_listesi
CREATE TABLE IF NOT EXISTS `sanayi_listesi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` tinyint(4) NOT NULL DEFAULT 0,
  `sehirId` tinyint(4) NOT NULL DEFAULT 0,
  `ilceId` tinyint(4) NOT NULL DEFAULT 0,
  `sanayiAdi` varchar(50) NOT NULL DEFAULT '0',
  `koordinat` varchar(500) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.sanayi_listesi: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.satislar
CREATE TABLE IF NOT EXISTS `satislar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `durum` varchar(50) NOT NULL DEFAULT '0',
  `sozlesmeId` varchar(50) NOT NULL DEFAULT '0',
  `paketId` varchar(50) NOT NULL DEFAULT '0',
  `bayiId` varchar(50) NOT NULL DEFAULT '0',
  `baslangicTarih` datetime NOT NULL,
  `bitisTarih` datetime NOT NULL,
  `islemTarih` datetime NOT NULL,
  `tcKimlik` varchar(50) NOT NULL DEFAULT '',
  `vergiDairesi` varchar(50) NOT NULL DEFAULT '',
  `adiSoyadi` varchar(50) NOT NULL DEFAULT '',
  `telefon` varchar(50) NOT NULL DEFAULT '',
  `eposta` varchar(50) NOT NULL DEFAULT '',
  `plaka` varchar(50) NOT NULL DEFAULT '',
  `aracKoltukSayisi` varchar(50) NOT NULL DEFAULT '',
  `marka` varchar(50) NOT NULL DEFAULT '',
  `tipi` varchar(50) NOT NULL DEFAULT '',
  `kullanimTuru` varchar(50) NOT NULL DEFAULT '',
  `modelYili` varchar(50) NOT NULL DEFAULT '',
  `hizmetBaslamaGunSiniri` varchar(50) NOT NULL DEFAULT '',
  `ikametgah` varchar(50) NOT NULL DEFAULT '',
  `odemeTuru` varchar(50) NOT NULL DEFAULT '',
  `trafikPolicesiUrl` varchar(50) NOT NULL DEFAULT '',
  `trafikPoliceYuklemeTarihi` datetime NOT NULL,
  `bankaHesapSahibi` varchar(50) NOT NULL DEFAULT '',
  `bankaHesapSahibiTc` varchar(50) DEFAULT NULL,
  `bankaIban` varchar(50) DEFAULT NULL,
  `not` longtext DEFAULT NULL,
  `satisKanali` varchar(50) DEFAULT NULL,
  `donenFaturaNo` varchar(50) DEFAULT NULL,
  `donenFaturaTuru` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.satislar: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.tedarikciler
CREATE TABLE IF NOT EXISTS `tedarikciler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yetkliAdi` varchar(50) NOT NULL DEFAULT '0',
  `unvani` varchar(50) NOT NULL DEFAULT '0',
  `vergiNo` varchar(50) NOT NULL DEFAULT '0',
  `sehir` varchar(50) NOT NULL DEFAULT '0',
  `ilce` varchar(50) NOT NULL DEFAULT '0',
  `adres` varchar(50) NOT NULL DEFAULT '0',
  `telefon1` varchar(50) NOT NULL DEFAULT '0',
  `telefon2` varchar(50) NOT NULL DEFAULT '0',
  `telefon3` varchar(50) NOT NULL DEFAULT '0',
  `eposta` varchar(50) NOT NULL DEFAULT '0',
  `sifre` varchar(50) NOT NULL DEFAULT '0',
  `aciklama` longtext NOT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `isFaturaFirma` tinyint(4) DEFAULT NULL,
  `calismaOrani` tinyint(4) DEFAULT NULL,
  `tedarikciTuru` varchar(50) DEFAULT NULL,
  `referansBayiNo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.tedarikciler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.temsilciler
CREATE TABLE IF NOT EXISTS `temsilciler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unvan` varchar(50) NOT NULL,
  `yetkili` varchar(50) NOT NULL,
  `telefon` varchar(50) NOT NULL,
  `ceptelefon` varchar(50) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `adres` varchar(50) NOT NULL,
  `sehirId` varchar(50) NOT NULL,
  `isWeb` tinyint(4) NOT NULL DEFAULT 0,
  `isCallCenter` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.temsilciler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `authLevelId` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.users: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

-- tablo yapısı dökülüyor can_assistance.verilen_hizmetler
CREATE TABLE IF NOT EXISTS `verilen_hizmetler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ihbarId` int(11) NOT NULL DEFAULT 0,
  `temsilciId` int(11) NOT NULL DEFAULT 0,
  `bayiId` int(11) NOT NULL DEFAULT 0,
  `tedarikciId` int(11) NOT NULL DEFAULT 0,
  `paketId` int(11) NOT NULL DEFAULT 0,
  `hizmetId` int(11) NOT NULL DEFAULT 0,
  `sozlesmeNo` varchar(50) NOT NULL DEFAULT '0',
  `adet` varchar(50) NOT NULL DEFAULT '0',
  `paketIcerikBaslik` varchar(50) NOT NULL DEFAULT '0',
  `irtibatKisi` varchar(50) NOT NULL DEFAULT '0',
  `konumBilgisi` varchar(50) NOT NULL DEFAULT '0',
  `hizmetTarihi` datetime NOT NULL,
  `SMS_API_ID` varchar(50) NOT NULL DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- can_assistance.verilen_hizmetler: ~0 rows (yaklaşık) tablosu için veriler indiriliyor

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
