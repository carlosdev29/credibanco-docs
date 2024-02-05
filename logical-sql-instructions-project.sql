create database credibanco_db;
use credibanco_db;

CREATE TABLE IF NOT EXISTS  `tbl_card_type`  
(
    `id_card_type` INT AUTO_INCREMENT PRIMARY KEY,
    `card_type_name` varchar(32) COLLATE utf8_unicode_ci
) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
    AUTO_INCREMENT = 100000
;

CREATE TABLE IF NOT EXISTS  `tbl_card_status`  
(
    `id_card_status` INT AUTO_INCREMENT PRIMARY KEY,
    `card_status_name` varchar(32) COLLATE utf8_unicode_ci
) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
    AUTO_INCREMENT = 100000
;


CREATE TABLE IF NOT EXISTS  `tbl_customer`  
(
    `id_client` INT AUTO_INCREMENT PRIMARY KEY,
    `name_customer` varchar(32) COLLATE utf8_unicode_ci,
    `last_name_customer` varchar(32) COLLATE utf8_unicode_ci
) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
    AUTO_INCREMENT = 100000
; 

CREATE TABLE IF NOT EXISTS  `tbl_card`  
(
    `id_card` INT AUTO_INCREMENT PRIMARY KEY,
    `card_number` varchar(32) COLLATE utf8_unicode_ci,
    `creation_date` TIMESTAMP COLLATE utf8_unicode_ci,
    `expiration_date` DATETIME COLLATE utf8_unicode_ci,
    `balance` INT(120) COLLATE utf8_unicode_ci,
    `id_client` INT,
    `id_card_type` INT,
    `id_card_status` INT,
    FOREIGN KEY (`id_client`) REFERENCES `tbl_customer` (`id_client`),
    FOREIGN KEY (`id_card_type`) REFERENCES `tbl_card_type` (`id_card_type`),
    FOREIGN KEY (`id_card_status`) REFERENCES `tbl_card_status` (`id_card_status`)
) 
    ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
    AUTO_INCREMENT = 100000
;


INSERT INTO `tbl_customer` (`name_customer`, `last_name_customer`)
VALUES('Mario','Velasco');
INSERT INTO `tbl_customer` (`name_customer`, `last_name_customer`)
VALUES('Carlos','Sanz');

INSERT INTO `tbl_card_status` (`card_status_name`)
VALUES('Activada');
INSERT INTO `tbl_card_status` (`card_status_name`)
VALUES('Desactivada');
INSERT INTO `tbl_card_status` (`card_status_name`)
VALUES('Creada');
INSERT INTO `tbl_card_status` (`card_status_name`)
VALUES('Emitida');

INSERT INTO `tbl_card_type` (`card_type_name`)
VALUES('Debito');
INSERT INTO `tbl_card_type` (`card_type_name`)
VALUES('Credito');

INSERT INTO `tbl_card` (`card_number`, `creation_date`, `expiration_date`, `balance`,
`id_client`, `id_card_type`, `id_card_status`)
VALUES('1234560123456789','1970-01-01 00:00:01','2018-11-23 17:31:26', 1000, 100000, 100000, 100000);
INSERT INTO `tbl_card` (`card_number`, `creation_date`, `expiration_date`, `balance`,
`id_client`, `id_card_type`, `id_card_status`)
VALUES('5432160123456789','1980-01-01 00:00:01','2020-11-23 17:31:26', 1000, 100001, 100001, 100001);


select * from tbl_customer;
select * from tbl_card_status;
select * from tbl_card_type;
select * from tbl_card;
select * from tbl_customer;