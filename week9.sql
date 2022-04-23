DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE user(
	user_id int NOT NULL AUTO_INCREMENT,
	username varchar(20) NOT NULL,
	password varchar(60) NOT NULL,
	email varchar(60) NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE posts(
	post_id int NOT NULL AUTO-INCREMENT,
	post_content text NOT NULL,
	time_posted time,
	PRIMARY KEY (post_id),
	FOREIGN KEY (user_id) references users (user_id),
);

CREATE TABLE comments(
	comment_id int NOT NULL AUTO_INCREMENT
	post_content text NOT NULL,
	time_posted time,
	PRIMARY KEY (comment_id),
	FOREIGN KEY (user_id) references users (user_id),
	FOREIGN KEY (post_id) references posts (post_id)
);