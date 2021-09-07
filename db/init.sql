create database test;
use test;

create table tutorials_tbl(
    tutorial_id INT NOT NULL AUTO_INCREMENT,
    tutorial_title VARCHAR(100) NOT NULL,
    tutorial_author VARCHAR(40) NOT NULL,
    submission_date DATE,
    PRIMARY KEY ( tutorial_id )
    );

INSERT INTO tutorials_tbl  (tutorial_title, tutorial_author, submission_date) VALUES ("Learn PHP", "John Poul", NOW());
INSERT INTO tutorials_tbl  (tutorial_title, tutorial_author, submission_date) VALUES ("Learn Python", "Chris", NOW());
INSERT INTO tutorials_tbl  (tutorial_title, tutorial_author, submission_date) VALUES ("Learn Java", "Chuck Noris", NOW());