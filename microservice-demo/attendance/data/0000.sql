DROP DATABASE IF EXISTS microservice_demo;
CREATE DATABASE microservice_demo;
UPDATE mysql.user SET host='%' WHERE user = 'root';
FLUSH PRIVILEGES;

USE microservice_demo;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
    `DateCreated` timestamp default CURRENT_TIMESTAMP,
    `DateUpdated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    `Sid` char(36) NOT NULL,
    `RoleName` varchar(50) NOT NULL,
    PRIMARY KEY (`Sid`)
);

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
    `DateCreated` timestamp default CURRENT_TIMESTAMP,
    `DateUpdated` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    `Sid` char(36) NOT NULL,
    `Name` varchar(50) NOT NULL,
    `RoleSid` char(36) NOT NULL,
    PRIMARY KEY (`Sid`),
    FOREIGN KEY (`RoleSid`) REFERENCES `roles` (`Sid`) ON DELETE CASCADE
);
