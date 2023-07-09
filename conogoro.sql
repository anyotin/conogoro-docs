SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS m_profile;
DROP TABLE IF EXISTS m_shortshort;
DROP TABLE IF EXISTS s_browsing;




/* Create Tables */

CREATE TABLE m_profile
(
	id smallint NOT NULL,
	name varchar(20) NOT NULL,
	sentense text NOT NULL,
	in_date datetime NOT NULL,
	up_date datetime NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE m_shortshort
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


CREATE TABLE s_browsing
(
	id smallint NOT NULL,
	-- 1 : ショートショート
	-- 2 : 創作料理
	-- 3 : 文具紹介
	-- 4 : マッチングアプリ冒険譚
	-- 5 : ゲーム紹介
	topic_type tinyint NOT NULL COMMENT '1 : ショートショート
2 : 創作料理
3 : 文具紹介
4 : マッチングアプリ冒険譚
5 : ゲーム紹介',
	page_no int NOT NULL,
	browsing_count int NOT NULL,
	in_date datetime NOT NULL,
	up_date datetime NOT NULL,
	PRIMARY KEY (id, topic_type, page_no)
);



