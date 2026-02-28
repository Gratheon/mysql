-- Init script to create all required databases for Gratheon services
-- This runs once when MySQL container is first initialized

CREATE DATABASE IF NOT EXISTS `user-cycle` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `swarm-api` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `image-splitter` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `logs` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE DATABASE IF NOT EXISTS `telemetry-api` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- Grant all privileges on all databases to the 'test' user
GRANT ALL PRIVILEGES ON `user-cycle`.* TO 'test'@'%';
GRANT ALL PRIVILEGES ON `swarm-api`.* TO 'test'@'%';
GRANT ALL PRIVILEGES ON `image-splitter`.* TO 'test'@'%';
GRANT ALL PRIVILEGES ON `logs`.* TO 'test'@'%';
GRANT ALL PRIVILEGES ON `telemetry-api`.* TO 'test'@'%';

FLUSH PRIVILEGES;
