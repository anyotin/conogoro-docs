SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS m_browsing;
DROP TABLE IF EXISTS m_short;




/* Create Tables */

CREATE TABLE m_browsing
(
	id smallint NOT NULL,
	page_name varchar(30) NOT NULL,
	browsing_count int NOT NULL,
	in_date datetime NOT NULL,
	up_date datetime NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE m_short
(
	id smallint NOT NULL,
	title_name varchar(50) NOT NULL,
	image_name varchar(30) NOT NULL,
	sentense text NOT NULL,
	author varchar(20) NOT NULL,
	in_date datetime NOT NULL,
	up_date datetime NOT NULL,
	PRIMARY KEY (id)
);



