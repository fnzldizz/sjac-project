-- 만들기 1
-- CU_MEMBER 테이블( 회원 )
create table cu_member(
   id varchar2(50) primary key,
   password varchar2(50) not null,
   name varchar2(50) not null,
   location varchar2(50) not null,
   tel varchar2(50) not null,
   gender varchar2(50) not null,
   birthdate date not null
)

drop table cu_member;
delete from cu_member;
select * from cu_member;

   insert into CU_MEMBER(id,password,name,location,tel,gender,birthdate)
values('khj','1111','김혜진','서울','010','여',to_date('1991.09.04','yyyy.mm.dd'));
   insert into CU_MEMBER(id,password,name,location,tel,gender,birthdate)
values('go','1234','고대원','서울','0109734','남',to_date('1988.01.25','yyyy.mm.dd'));
   insert into CU_MEMBER(id,password,name,location,tel,gender,birthdate)
values('neung','1234','이능균','지방','010','남',to_date('1987.08.27','yyyy.mm.dd'));
   insert into CU_MEMBER(id,password,name,location,tel,gender,birthdate)
values('gogosing','1234','고대','천안','010','남',to_date('2015.07.23','yyyy.mm.dd'));
    insert into CU_MEMBER(id,password,name,location,tel,gender,birthdate)
values('kjy','1234','주예','미쿡','010','여',to_date('1990.07.23','yyyy.mm.dd'));


-----------------------------------------------------------------------------------------------------

-- 만들기 2
-- CU_BOARD 테이블( 자유 게시판 )
create table cu_board(
   no number primary key,
   category varchar2(50) not null,
   content clob not null,
   title varchar2(50) not null,
   id varchar2(50) not null,
   mydate date not null,
   hits number not null,
   foreign key (id) references cu_member(id)
)

create sequence cu_board_seq;

drop table cu_board;
select * from cu_board;


-----------------------------------------------------------------------------------------------------

-- 만들기 3
-- CU_SUBJECT_CATEOGRY 테이블(스터디 과목)
create table cu_subject_category(
   subject varchar2(50) primary key,
   subject_category varchar2(50) not null,
   category_image varchar2(300) not null
)

insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('토익','영어','subimg/english.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('토익스피킹','영어','subimg/english.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('토플','영어','subimg/english.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('오픽','영어','subimg/english.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('텝스','영어','subimg/english.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('JAVA','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('C/C++','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('Android','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('빅데이터','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('웹프로그래밍','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('데이터베이스','프로그래밍','subimg/programming.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('인적성','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('면접','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('자기소개서','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('대외활동','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('공모전','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('자격증','취업','subimg/getjob.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('회계','금융','subimg/finance.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('주식','금융','subimg/finance.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('재테크','금융','subimg/finance.jpg');
insert into CU_SUBJECT_CATEGORY(subject,subject_category,category_image) 
values('부동산','금융','subimg/finance.jpg');

select * from CU_SUBJECT_CATEGORY;
drop table cu_subject_category;

update CU_SUBJECT_CATEGORY set category_image = 'subimg/english.jpg' where subject='토익';



-----------------------------------------------------------------------------------------------------

-- 만들기 4
-- CU_STUDY_LOCATION 테이블
create table cu_study_location(
   glocation varchar2(50) primary key
)

drop table cu_study_location;
select * from cu_study_location;

insert into cu_study_location(glocation) values('강원');
insert into cu_study_location(glocation) values('경기');
insert into cu_study_location(glocation) values('경남');
insert into cu_study_location(glocation) values('경북');
insert into cu_study_location(glocation) values('광주');
insert into cu_study_location(glocation) values('대구');
insert into cu_study_location(glocation) values('대전');
insert into cu_study_location(glocation) values('부산');
insert into cu_study_location(glocation) values('서울');
insert into cu_study_location(glocation) values('세종');
insert into cu_study_location(glocation) values('울산');
insert into cu_study_location(glocation) values('인천');
insert into cu_study_location(glocation) values('전남');
insert into cu_study_location(glocation) values('전북');
insert into cu_study_location(glocation) values('제주');
insert into cu_study_location(glocation) values('충남');
insert into cu_study_location(glocation) values('충북');




-----------------------------------------------------------------------------------------------------


-- 만들기 5
-- CU_GROUP 테이블 ( 그룹 )
create table cu_group(
   gleader_id varchar2(50) primary key,
   gname varchar2(50) not null,
   gsubject varchar2(50) not null,      
   ginfo varchar2(50) not null,
   gmember_count number not null,
   glocation varchar2(50) not null,
   foreign key(gsubject) references cu_subject_category(subject),
   foreign key(glocation) references cu_study_location(glocation)
)

insert into cu_group values('go','고대원','토익','토익스터디',6,'서울');
insert into cu_group values('neung','이능균','JAVA','자바스터디',6,'서울');
insert into cu_group values('gogosing','고대','인적성','취업스터디',6,'서울');
insert into cu_group values('kjy','금융스터디하자!','회계','금융스터디 열심히 할 사람만 ',6,'서울');

drop table cu_group;
select * from cu_group;
delete from cu_group;

update cu_group set glocation='부산' where gname='이능균';
update cu_group set glocation='경남' where gname='고대';
-----------------------------------------------------------------------------------------------------

-- 만들기 6
-- CU_GROUP_MEMBER 테이블 ( 그룹원 )
create table cu_group_member(
   id varchar2(50) not null,
   gleader_id varchar2(50) not null,
   foreign key(id) references cu_member(id),
   foreign key(gleader_id) references cu_group(gleader_id),
   constraint pk_cu_group_member primary key (id, gleader_id)
)

drop table cu_group_member;
select * from cu_group_member;


-----------------------------------------------------------------------------------------------------

-- 만들기 7
-- CU_GROUP_JOIN ( 그룹 가입 신청 )
create table cu_group_join (
   gjno number primary key,
   id varchar2(50) not null,
   gjtitle varchar2(50) not null,
   gjcontent clob not null,
   gleader_id varchar2(50) not null,
   constraint fk_cu_member foreign key(id) references cu_member(id),
   constraint fk_cu_group foreign key(gleader_id) references cu_group(gleader_id)
)

drop table cu_group_join;
select * from cu_group_join;


-----------------------------------------------------------------------------------------------------


-- 만들기 8
-- CU_GROUP_BOARD ( 그룹 게시판 )
create table cu_group_board(
   gbno number primary key,
   gbcategory varchar2(50) not null,
   gbtitle varchar2(50) not null,
   gbcontent clob not null,
   gbdate date not null,
   gbhits number not null,
   id varchar2(50) not null,
   gleader_id varchar2(50) not null,
   foreign key(id) references cu_member(id),
   foreign key(gleader_id) references cu_group(gleader_id)
)

create sequence cu_group_board_seq;

drop table cu_group_board;
select * from cu_group_board;


-----------------------------------------------------------------------------------------------------

-- 만들기 9
-- CU_KEYWORD_FREQUENCY ( 검색순위 ) 
create table cu_keyword_frequency(
   keyword varchar2(50) primary key,
   count number not null
)

drop table cu_keyword_frequency;
select * from cu_keyword_frequency;





-----------------------------------------------------------------------------------------------------

-- 연습해본 SQL
select g.gleader_id as gleader_id, g.gname as gname, g.ginfo as ginfo, g.gmember_count as gmember_count, g.glocation as glocation, 
      g.gsubject as gsubject, s.subject_category as subject_category, c.name as name, s.category_image as category_image
      from cu_member c, cu_group g, cu_subject_category s
      where c.id = g.gleader_id and g.gsubject = s.subject





------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------