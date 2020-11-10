--usersテーブル--
CREATE TABLE users(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  bio VARCHAR(1000),
  office_telephone VARCHAR(13),
  cell_phone VARCHAR(13),
  is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

--roomsテーブル--
CREATE TABLE rooms(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(1000),
<<<<<<< Updated upstream
  send_file TINYINT(1) DEFAULT 1 NOT NULL,
=======
  allow_send_file TINYINT(1) DEFAULT 1 NOT NULL,
>>>>>>> Stashed changes
  direct_chat TINYINT(1) DEFAULT 0 NOT NULL,
  is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  created_user_id INT(11) NOT NULL REFERENCES users(id),
  updated_at DATETIME NOT NULL,
  updated_user_id INT(11) NOT NULL REFERENCES users(id)
);

--rooms_usersテーブル--
CREATE TABLE rooms_users(
  users_id INT(11) NOT NULL REFERENCES users(id),
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  joined_at DATETIME NOT NULL,
  PRIMARY KEY(users_id,rooms_id)
);

--postsテーブル--
CREATE TABLE posts(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  created_user_id INT(11) NOT NULL REFERENCES users(id),
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  post VARCHAR (1000) NOT NULL,
  file_name VARCHAR(100),
  is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  updated_user_id INT(11) NOT NULL REFERENCES users(id)
);

--tasksテーブル--
CREATE TABLE tasks(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(1000) NOT NULL,
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  assigned_user_id INT(11) NOT NULL REFERENCES users(id),
  due DATETIME,
  done TINYINT(1) DEFAULT 0 NOT NULL,
  is_deleted TINYINT(1) DEFAULT 0 NOT NULL,
  created_at DATETIME NOT NULL,
  created_user_id INT(11) NOT NULL REFERENCES users(id),
  updated_at DATETIME NOT NULL,
  updated_user_id INT(11) NOT NULL REFERENCES users(id)
);
