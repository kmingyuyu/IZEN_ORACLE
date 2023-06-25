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
values(1 , '���̳��� ����ħ' , '���̳�' , '���̿�' , '�Ҽ�'  , 'img/���̳��� ����ħ.jpg' , to_date('2023.03.02') , 10);
insert into book 
values(2 , '�޸���� ���� ��Ź��' , '������' , '�Ϸθ���' , '�ѱ��Ҽ�'  , 'img/�޸���� ���� ��Ź��.jpg' , to_date('2023.03.06') , 10);
insert into book 
values(3 , '������� ���ܼ�' , '��ī�� ������' , '���������' , '�ܱ��Ҽ�'  , 'img/������� ���ܼ�.jpg' , to_date('2023.01.13') , 10);
insert into book 
values(4 , '�̰� �������̶�� ����' , 'Ȳ����' , '���е���' , '��'  , 'img/�̰� �������̶�� ����.jpg' , to_date('2023.06.07') , 10);
insert into book 
values(5 , '��ؾ� 2: ���޹ٻ� ���� ���� ��' , '��ؾ�' , '����ڽ����丮Ű��' , '�Ƶ�'  , 'img/��ؾ� 2 ���޹ٻ� ���� ���� ��.jpg' , to_date('2023.05.17') , 10);
insert into book 
values(6 , '66�� �ι��� ��ȭ��' , '������' , 'ī�ÿ����' , '������Ȱ'  , 'img/66�� �ι��� ��ȭ��.jpg' , to_date('2023.04.24') , 10);


select subject , writer , publisher, type , img , to_char(publication_date , 'YYYY.MM.DD') publication_date  , inventory
from book
order by publication_date desc;

commit;

select nvl(max(no) , 0)
from book;

create table board (
    num number primary key,
    pwd varchar2(255) ,
    email varchar2(200) not  null,
    m_text varchar2(255) not null,
    reg_date date not null
    
);

drop table board;

select * from board;

insert into board values(1 , '1111' ,  '111@naver.com' , '�����̿�1' , sysdate);
insert into board values(2 , '12' ,  '12@naver.com' , '�����̿�2' , sysdate);
insert into board values(3 , '123' ,  '123@naver.com' , '�����̿�3' , sysdate);
insert into board values(4 , '1234' ,  '1234@naver.com' , '�����̿�4' , sysdate);
insert into board values(5 , '12345' ,  '12345@naver.com' , '�����̿�5' , sysdate);
insert into board values(6 , '123456' ,  '123456@naver.com' , '�����̿�6' , sysdate);

select * from (
    select rownum rnum , data.* from (
    select num , pwd , email , m_text , to_char(reg_date , 'YYYY.MM.DD') reg_date 
    from board
    where email like '%%'
    order by reg_date desc
    )data
);

select nvl(count(*) , 0)
from board
where email like '%%';

select num , pwd , email , m_text , to_char(reg_date , 'YYYY.MM.DD') reg_date 
from board
where num = 1;


