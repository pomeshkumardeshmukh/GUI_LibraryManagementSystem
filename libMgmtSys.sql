show databases;
create database lib;
use lib;
show tables;
CREATE TABLE `books` (
  `ACC_NO` int NOT NULL,
  `TITLE` varchar(30) NOT NULL,
  `AUTHOR` varchar(30) DEFAULT NULL,
  `PUBLISHER` varchar(30) DEFAULT NULL,
  `PRICE` double(10,5) DEFAULT '0.00000',
  PRIMARY KEY (`ACC_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `books_issued` (
  `student_id` varchar(30) NOT NULL,
  `ACC_NO` int NOT NULL,
  `DOI` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACC_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `student` (
  `ID` varchar(30) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `SEM` int NOT NULL,
  `BRANCH` varchar(30) NOT NULL,
  `PHONE_NO` varchar(13) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `PHONE_NO` (`PHONE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

