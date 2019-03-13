CREATE DATABASE IF NOT EXISTS `training_retail` DEFAULT CHARACTER SET `utf8` COLLATE `utf8_unicode_ci`;

CREATE USER 'training_usr'@'localhost' IDENTIFIED BY 'tr@ining123';

GRANT ALL PRIVILEGES ON `training_retail`.* TO 'training_usr'@'%' IDENTIFIED BY 'tr@ining123'  WITH GRANT OPTION;

FLUSH PRIVILEGES;

use training_retail;
-- create table for product

CREATE TABLE product
(
  productid serial UNIQUE PRIMARY KEY,
  description character varying(10485760) NOT NULL,
  image character varying(255) NOT NULL,
  name character varying(255) NOT NULL,
  price double precision NOT NULL
);

-- added column status
ALTER TABLE `training_retail`.`product` ADD COLUMN `status` VARCHAR(5) NOT NULL DEFAULT 'true'  AFTER `price` ;

-- add product data
-- note: images are pulled from the public folder at atsea/app/react-app/public
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S6','Samsung Galaxy S6 smart phone','./images/1.jpg',550,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/2.jpg',258,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/3.jpg',980,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/4.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S6 smart phone','./images/5.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/6.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/7.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/8.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Telephpne','Telephpne','./images/9.jpg',1,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6S','Apple iphone 6S smart phone','./images/10.jpg',560,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/11.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/12.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/13.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S6 smart phone','./images/14.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/15.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/16.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/17.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/18.jpg',1,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/19.jpg',75,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/20.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/21.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/22.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/23.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S6 smart phone','./images/24.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/25.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/26.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/27.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/28.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/29.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/30.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/31.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/32.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/33.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S6 smart phone','./images/34.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/35.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/36.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/37.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/38.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/39.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/40.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/41.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/42.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/43.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/44.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/45.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/46.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/47.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/48.jpg',1,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/49.jpg',75,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/50.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/51.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/52.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/53.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/54.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/55.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/56.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/57.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/58.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/59.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/60.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/61.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/62.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/63.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/64.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/65.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/66.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/67.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/68.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/69.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/70.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/71.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/72.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/73.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/74.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/75.jpg',25,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/76.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/77.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/78.jpg',1,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/79.jpg',75,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/80.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/81.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/82.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/83.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/84.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/85.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/86.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/87.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/88.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/89.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/90.jpg',50,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('LG Intex 6','LG Intex 6 Smart phone','./images/91.jpg',278,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Rose Gold','./images/92.jpg',880,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 7 Plus','Apple iPhone 7 Plus Grey','./images/93.jpg',750,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S7','Samsung Galaxy S7 smart phone','./images/94.jpg',45,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Reliance Jio','Reliance Jio 1100','./images/95.jpg',65,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Samsung Glaxy S8','Samsung Galaxy S8 smart phone','./images/96.jpg',999,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Panasonic Cardless phone x800','Panasonic Cardless phone','./images/97.jpg',35,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Apple iPhone 6','Apple iphone 6 smart phone','./images/98.jpg',88,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi Note 3','Redmi Note 3 Pro','./images/99.jpg',105,'true');
INSERT INTO product (name, description, image, price, status) VALUES ('Redmi 4A','Redmi 4A smart phone','./images/100.jpg',50,'true');

--- Insert procedure
USE `training_retail`;
DROP procedure IF EXISTS `INSERT_RECORDS`;

DELIMITER $$
USE `training_retail`$$
CREATE PROCEDURE `training_retail`.`INSERT_RECORDS` ()
BEGIN
    DECLARE i int DEFAULT 1;
    WHILE i <= 19900 DO
        INSERT INTO product (name, description, image, price, status) VALUES ('Redmi', 'Redmi 5A Smart phone', './images/101.jpg', 978, 'false');
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;
