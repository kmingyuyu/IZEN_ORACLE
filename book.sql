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
