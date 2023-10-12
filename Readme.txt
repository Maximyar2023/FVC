1) Скрипт создания БД:

    CREATE SCHEMA `fmc` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

2) Скрипт для создания таблицы:

      CREATE TABLE `fmc`.`valutes` (
      `id` INT NOT NULL AUTO_INCREMENT,
      `id_valutes` VARCHAR(45) NULL,
      `NumCode` INT NULL,
      `CharCode` VARCHAR(45) NULL,
      `Nominal` INT NULL,
      `Name` VARCHAR(45) NULL,
      `Value` VARCHAR(45) NULL,
      `VunitRate` VARCHAR(45) NULL,
      PRIMARY KEY (`id`));

3) fmc.sql - это дамп БД
4) index.php - основной файл
