CREATE DATABASE prj1;

USE prj1;

DROP TABLE board;
CREATE TABLE board
(
    id       INT PRIMARY KEY AUTO_INCREMENT,
    title    VARCHAR(200)  NOT NULL,
    content  VARCHAR(3000) NOT NULL,
    writer   VARCHAR(100)  NOT NULL,
    inserted DATETIME      NOT NULL DEFAULT NOW()
);

SELECT *
FROM board;

USE prj1;

#회원 테이블
DROP TABLE member;

CREATE TABLE member
(
    id        INT PRIMARY KEY AUTO_INCREMENT,
    email     VARCHAR(200) NOT NULL UNIQUE,
    password  VARCHAR(200) NOT NULL,
    nick_name VARCHAR(100) NOT NULL UNIQUE,
    inserted  DATETIME     NOT NULL DEFAULT NOW()
);

ALTER TABLE member
    ADD COLUMN inserted DATETIME NOT NULL DEFAULT NOW();

SELECT *
FROM board;

#게시물 복사
INSERT INTO board
(title, content, member_id)
SELECT title, content, member_id
FROM board;

ALTER TABLE board
    DROP COLUMN writer;

ALTER TABLE board
ADD COLUMN member_id INT REFERENCES member(id);

UPDATE board
SET member_id = 7
WHERE id BETWEEN 1 AND (SELECT MAX(id) FROM board);

CREATE TABLE authority
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT NOT NULL REFERENCES member(id),
    name VARCHAR(20) NOT NUll
);

INSERT INTO authority
(member_id, name)
VALUES (11, 'admin');


