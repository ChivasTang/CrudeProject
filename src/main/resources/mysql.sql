DROP database IF EXISTS `tasksdb`;
CREATE database `tasksdb` ;
USE tasksdb;
CREATE TABLE `tasksdb`.`t_tasks` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(45) NULL,
`description` VARCHAR(45) NULL,
`date_created` DATETIME NULL,
`finished` BIT(1) NULL,
PRIMARY KEY (`id`));
SELECT * FROM `tasksdb`.`t_tasks`;
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('1', 'name1', 'desc1', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('2', 'name2', 'desc2', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('3', 'name3', 'desc3', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('4', 'name4', 'desc4', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('5', 'name5', 'desc5', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('6', 'name6', 'desc6', current_timestamp(), 0);
INSERT INTO `tasksdb`.`t_tasks` (`id`, `name`, `description`, `date_created`, `finished`) VALUES ('7', 'name7', 'desc7', current_timestamp(), 0);
SELECT * FROM `tasksdb`.`t_tasks`;