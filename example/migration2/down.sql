ALTER TABLE `user` ADD COLUMN `password` varchar(256) NOT NULL;
ALTER TABLE `user` DROP COLUMN `name`;
ALTER TABLE `user` DROP COLUMN `encrypted_password`;
