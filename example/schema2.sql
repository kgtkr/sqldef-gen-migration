CREATE TABLE `user` (
  `id` VARCHAR(32) PRIMARY KEY,
  `icon` VARCHAR(256),
  `name` VARCHAR(32) DEFAULT 'John' NOT NULL,
  `encrypted_password` VARCHAR(256)  NOT NULL
);
