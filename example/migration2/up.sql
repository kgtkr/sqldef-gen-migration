ALTER TABLE `user` ADD COLUMN `name` varchar(32) NOT NULL DEFAULT 'John';
ALTER TABLE `user` ADD COLUMN `encrypted_password` varchar(256) NOT NULL;
ALTER TABLE `user` DROP COLUMN `password`;
