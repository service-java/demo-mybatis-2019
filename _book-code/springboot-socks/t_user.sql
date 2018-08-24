-- DROP DATABASE IF EXISTS `socks`;
-- CREATE DATABASE `socks`;
-- USE `SOCKS`;

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` varchar(50) ,
  `username` varchar(50) ,
  `password` varchar(50)
) ;

INSERT INTO `t_user` VALUES ('1', 'admin', 'admin');
INSERT INTO `t_user` VALUES ('2', 'yizhiwazi', '123456');



DROP TABLE IF EXISTS `cron`;
CREATE TABLE `cron`  (
  `cron_id` varchar(30),
  `cron` varchar(30)
);
INSERT INTO `cron` VALUES ('1', '0/5 * * * * ?');
