-- +goose Up
CREATE TABLE users (
  id VARCHAR(36) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  name VARCHAR(255) NOT NULL,
  api_key VARCHAR(255) UNIQUE NOT NULL
) ENGINE=InnoDB;

-- +goose Down
DROP TABLE users;
