use color;
INSERT INTO userInfo (user_id, user_pwd, user_name, user_email, user_phone, user_joindate, admin_yn) VALUES ('userId01', '1234', '김기연', 'user_email 1', '010-7583-4193', NOW(), 'N');
INSERT INTO userInfo (user_id, user_pwd, user_name, user_email, user_phone, user_joindate, admin_yn) VALUES ('userId02', '1234', '김동윤', 'user_email 2', '010-4583-2519', NOW(), 'N');
INSERT INTO userInfo (user_id, user_pwd, user_name, user_email, user_phone, user_joindate, admin_yn) VALUES ('userId03', '1234', '서찬민', 'user_email 3', '010-7979-8315', NOW(), 'N');
INSERT INTO userInfo (user_id, user_pwd, user_name, user_email, user_phone, user_joindate, admin_yn) VALUES ('userId04', '1234', '박지현', 'user_email 4', '010-7143-5797', NOW(), 'N');
INSERT INTO userInfo (user_id, user_pwd, user_name, user_email, user_phone, user_joindate, admin_yn) VALUES ('userId05', '1234', '양준현', 'user_email 5', '010-2910-2784', NOW(), 'N');


select * from userInfo where user_id='userId01' and user_pwd='1234'


delete from userInfo where user_id='userId05'
use color;
select * from userInfo
-- userInfo table 생성 --
CREATE TABLE userInfo
(
    `user_id`        VARCHAR(20)     NOT NULL    COMMENT '사용자 아이디', 
    `user_pwd`       VARCHAR(20)     NOT NULL    COMMENT '사용자 비밀번호', 
    `user_name`      VARCHAR(20)     NOT NULL    COMMENT '사용자 이름', 
    `user_email`     VARCHAR(50)     NOT NULL    COMMENT '사용자 이메일', 
    `user_phone`     VARCHAR(20)     NOT NULL    COMMENT '사용자 연락처', 
    `user_joindate`  DATETIME        NOT NULL    DEFAULT NOW() COMMENT '사용자 가입일자', 
    `admin_yn`       VARCHAR(1)      NOT NULL    COMMENT '관리자 여부', 
    `user_seq`       INT UNSIGNED    NOT NULL    AUTO_INCREMENT COMMENT '사용자 순번', 
     PRIMARY KEY (user_seq)
);

use color;
select * from paintmanagement;