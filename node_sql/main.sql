USE mydb;

CREATE TABLE USERS(
   ID		INT						NOT NULL,
   NAME	VARCHAR (32)	NOT NULL,
   AGE	INT						NOT NULL,
   PRIMARY KEY (ID)
);
INSERT INTO USERS VALUES (1, 'lyn', 19);
INSERT INTO USERS VALUES (2, 'ann', 24);
INSERT INTO USERS VALUES (3, 'bob', 32);
INSERT INTO USERS VALUES (4, 'cat', 17);
INSERT INTO USERS VALUES (5, 'jen', 20);

SELECT NAME, AGE FROM USERS;
-- NAME	AGE
-- lyn	19
-- ann	24
-- bob	32
-- cat	17
-- jen	20

SELECT NAME, AGE FROM USERS WHERE AGE > 20;
-- OUTPUT:
-- NAME	AGE
-- ann	24
-- bob	32

SELECT NAME, AGE FROM USERS WHERE NAME = 'lyn' OR NAME = 'jen';
-- OUTPUT:
-- NAME	AGE
-- lyn	19
-- jen	20
