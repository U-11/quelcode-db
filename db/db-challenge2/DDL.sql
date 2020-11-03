--usersテーブル--
CREATE TABLE users(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  name VARCHAR(100) NOT NULL,
  bio VARCHAR(1000),
  phone VARCHAR(13),
  cell_phone VARCHAR(13),
  delete_flag TINYINT(1) DEFAULT 0 NOT NULL,
  created DATETIME NOT NULL,
  updated TIMESTAMP NOT NULL
);

--roomsテーブル--
CREATE TABLE rooms(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(1000) NOT NULL,
  send_file TINYINT(1) DEFAULT 0 NOT NULL,
  direct_chat TINYINT(1) DEFAULT 0 NOT NULL,
  delete_flag TINYINT(1) DEFAULT 0 NOT NULL,
  created DATETIME NOT NULL,
  created_user_id INT(11) NOT NULL,
  updated TIMESTAMP NOT NULL,
  updated_user_id INT(11) NOT NULL
);

--rooms_usersテーブル--
CREATE TABLE rooms_users(
  users_id INT(11) NOT NULL REFERENCES users(id),
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  join_at DATETIME NOT NULL,
  PRIMARY KEY(users_id,rooms_id)
)

--postsテーブル--
CREATE TABLE posts(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  post_user_id INT(11) NOT NULL REFERENCES users(id),
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  post VARCHAR (1000) NOT NULL,
  file_name VARCHAR(100),
  created DATETIME NOT NULL,
  updated TIMESTAMP NOT NULL,
  updated_user_id INT(11) NOT NULL
)

--tasksテーブル--
CREATE TABLE tasks(
  id INT(11) AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(1000) NOT NULL,
  rooms_id INT(11) NOT NULL REFERENCES rooms(id),
  personel_id INT(11) NOT NULL REFERENCES users(id),
  due DATETIME,
  done TINYINT(1) DEFAULT 0 NOT NULL,
  delete_flag TINYINT(1) DEFAULT 0 NOT NULL,
  created DATETIME NOT NULL,
  created_user_id INT(11) NOT NULL,
  updated TIMESTAMP NOT NULL,
  updated_user_id INT(11) NOT NULL
);
