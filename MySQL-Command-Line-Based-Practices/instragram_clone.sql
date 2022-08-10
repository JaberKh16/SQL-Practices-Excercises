
-- Instragram Clone Database
CREATE DATABASE instragram_clone_database;
use instragram_clone_database;

CREATE TABLE users
(
	u_id INTEGER AUTO_INCREMENT ,
	user_name VARCHAR(200) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	PRIMARY KEY (u_id)
);

INSERT INTO users(user_name) VALUES ("JAVA")
, ("PHP"), ("JAVASCRIPT"), ("C"), ("C++"), ("RUBY"),("PERL"),
(".NET"), ("SQL"), ("HASKELL");


CREATE TABLE photos
(
	p_id INTEGER AUTO_INCREMENT PRIMARY KEY,
	user_id INTEGER NOT NULL,
	image_url VARCHAR(100),
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (p_id) REFERENCES comments(user_id)

);

INSERT INTO photos(image_url, user_id) 
VALUES ("/afeeff", 1), ("/efgwggs", 2), ("/wgwghwr", 3),
("/fwgwhrh", 2), ("/pohoii", 5), ("/njkdvbd", 5), ("/nhd8uf", 2),
("/luhuhh", 1), ("/vczxcs", 6), ("/kuiudfg", 7), ("/xzddca", 1),
("/peiteh", 9), ("?ggafak", 4), ("/bgafda", 10);


CREATE TABLE comments
(
	c_id INTEGER AUTO_INCREMENT PRIMARY KEY,
	user_id INTEGER NOT NULL,
	photo_id INTEGER NOT NULL,
	comment_text VARCHAR(200) NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (user_id) REFERENCES users(u_id),
	FOREIGN KEY (photo_id) REFERENCES photos(p_id),
	PRIMARY KEY(user_id, photo_id)

);

INSERT INTO comments(user_id, comment_text, photo_id) 
VALUES(1, "I like it", 2 ), (2, "Better", 2), (1, "just nice", 3),
(3, "Good Thing", 2), (4, "Amazing", 1), (5, "Kickass", 4),
(6, "Things goes right", 1), (3, "i <3 it", 10), (3, "Next Level", 6),
(7, "Move on", 4), (10, "This is Beyond", 3), (8, "Over Smart", 5) ;

CREATE TABLE likes
(
	user_id INTEGER NOT NULL,
	photo_id INTEGER NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
	FOREIGN KEY (user_id) REFERENCES users(u_id),
	FOREIGN KEY (photo_id) REFERENCES photos(p_id)
);

INSERT INTO like(user_id, photo_id)
VALUES (1, 2), (1, 3), (1, 1), (2, 3), (3, 4), (4, 5), (4, 4), (1, 4),
(5, 6), (5, 5), (3, 1), (5, 4);