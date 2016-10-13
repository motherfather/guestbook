-- crud sql

-- insert 
insert 
into guestbook 
values(guestbook_seq.nextval, '마이콜', '라면에  구공탄', '1234', sysdate);

-- delete
delete 
from guestbook 
where no = 7 and password = 123;

commit;

-- select
select no, name, content, password, to_char(reg_date, 'yyyy-mm-dd hh:mi:ss')
from guestbook 
order by reg_date desc;

drop table guestbook;