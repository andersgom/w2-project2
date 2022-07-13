-- Here we have the data lake

CREATE DATABASE project2;
USE project2;

-- In this DB we have the clean data

CREATE DATABASE project2v2;
USE project2v2;

-- Adding primary keys and changing data types
-- Comments
ALTER TABLE `project2v2`.`comments` 
CHANGE COLUMN `id` `id` INT NOT NULL ,
CHANGE COLUMN `anonymous` `anonymous` TINYINT NULL DEFAULT NULL ,
CHANGE COLUMN `hostProgramName` `hostProgramName` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `graduatingYear` `graduatingYear` INT NULL DEFAULT NULL ,
CHANGE COLUMN `isAlumni` `isAlumni` TINYINT NULL DEFAULT NULL ,
CHANGE COLUMN `overallScore` `overallScore` FLOAT NULL DEFAULT NULL ,
CHANGE COLUMN `overall` `overall` FLOAT NULL DEFAULT NULL ,
CHANGE COLUMN `curriculum` `curriculum` FLOAT NULL DEFAULT NULL ,
CHANGE COLUMN `jobSupport` `jobSupport` FLOAT NULL DEFAULT NULL ,
CHANGE COLUMN `school_id` `school_id` INT NULL DEFAULT NULL ,
ADD PRIMARY KEY (`id`);
;

-- Courses
ALTER TABLE `project2v2`.`courses` 
ADD COLUMN `course_id` INT NULL AFTER `school_id`,
CHANGE COLUMN `courses` `courses` VARCHAR(100) NULL ,
CHANGE COLUMN `school` `school` VARCHAR(100) NULL DEFAULT NULL ,
CHANGE COLUMN `school_id` `school_id` INT NULL DEFAULT NULL ;

ALTER TABLE `project2v2`.`courses` 
CHANGE COLUMN `course_id` `course_id` INT NOT NULL AUTO_INCREMENT ,
ADD PRIMARY KEY (`course_id`);
;

-- Locations
ALTER TABLE `project2v2`.`locations` 
CHANGE COLUMN `id` `id` BIGINT NOT NULL ,
CHANGE COLUMN `school_id` `school_id` INT NULL DEFAULT NULL ,
ADD PRIMARY KEY (`id`);
;

-- Schools
ALTER TABLE `project2v2`.`schools` 
CHANGE COLUMN `school` `school` TEXT NULL ,
CHANGE COLUMN `school_id` `school_id` INT NOT NULL ,
ADD PRIMARY KEY (`school_id`);
;
