/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.18-MariaDB : Database - data_mahasiswa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`data_mahasiswa` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `data_mahasiswa`;

/*Table structure for table `tb_list` */

DROP TABLE IF EXISTS `tb_list`;

CREATE TABLE `tb_list` (
  `id` int(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nim` int(20) NOT NULL,
  `jurusan` varchar(155) NOT NULL,
  `semester` int(10) NOT NULL,
  `tahun_ajaran` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_list` */

insert  into `tb_list`(`id`,`nama`,`nim`,`jurusan`,`semester`,`tahun_ajaran`) values 
(1,'I Putu Ngurah Labda Jana',41930016,'teknologi informasi',4,'2019-05-22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
