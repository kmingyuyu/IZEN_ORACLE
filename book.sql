create table book (
    no number primary key,
    subject VARCHAR2(255) not null,
    writer VARCHAR2(100) not null,
    publisher varchar2(100) not null,
    type varchar2(100) not null,
    img varchar(255) not null,
    publication_date date not null,
    inventory number 
);


insert into book 
values(1 , '세이노의 가르침' , '세이노' , '데이원' , '소설'  , 'img/세이노의 가르침.jpg' , to_date('2023.03.02') , 10);
insert into book 
values(2 , '메리골드 마음 세탁소' , '윤정은' , '북로망스' , '한국소설'  , 'img/메리골드 마음 세탁소.jpg' , to_date('2023.03.06') , 10);
insert into book 
values(3 , '스즈메의 문단속' , '신카이 마코토' , '대원씨아이' , '외국소설'  , 'img/스즈메의 문단속.jpg' , to_date('2023.01.13') , 10);
insert into book 
values(4 , '이걸 내마음이라고 하자' , '황인찬' , '문학동네' , '시'  , 'img/이걸 내마음이라고 하자.jpg' , to_date('2023.06.07') , 10);
insert into book 
values(5 , '백앤아 2: 달콤바삭 요정 과자 집' , '백앤아' , '샌드박스스토리키즈' , '아동'  , 'img/백앤아 2 달콤바삭 요정 과자 집.jpg' , to_date('2023.05.17') , 10);
insert into book 
values(6 , '66일 인문학 대화법' , '김종원' , '카시오페아' , '가정생활'  , 'img/66일 인문학 대화법.jpg' , to_date('2023.04.24') , 10);


select subject , writer , publisher, type , img , to_char(publication_date , 'YYYY.MM.DD') publication_date  , inventory
from book
order by publication_date desc;

commit;

select nvl(max(no) , 0)
from book;
