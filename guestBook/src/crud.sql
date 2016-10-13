drop sequence guestbook_seq;

create sequence guestbook_seq  start with 1 increment by 1 maxvalue 999999999;

-- insert 

insert into guestbook values( guestbook_seq.nextval , '둘리', sysdate,'1234',  '아잉 귀차나잉!' );

commit;


-- select 
select no, name, reg_date, password, content from guestbook ORDER BY no desc;

-- delete
DELETE guestbook where no = 1;

rollback;