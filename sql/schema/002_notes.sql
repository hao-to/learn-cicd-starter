-- +goose Up
CREATE TABLE notes (
  id VARCHAR(36) PRIMARY KEY,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  note TEXT NOT NULL,
  user_id VARCHAR(36) NOT NULL,
  CONSTRAINT fk_notes_user
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- +goose Down
DROP TABLE notes;
