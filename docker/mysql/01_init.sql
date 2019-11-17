CREATE DATABASE IF NOT EXISTS pathfinder CHARACTER SET utf8mb4	 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS eve_universe CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE USER 'pf'@'%' IDENTIFIED BY 'pf';
GRANT ALL on pathfinder.* TO 'pf'@'%' WITH GRANT OPTION;
GRANT ALL on eve_universe.* TO 'pf'@'%' WITH GRANT OPTION;