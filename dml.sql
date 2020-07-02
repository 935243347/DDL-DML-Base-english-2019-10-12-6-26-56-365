-- Insert record
insert into teacher values(1, 'zhangsan', 1);
insert into teacher values(3, 'lisi', 3);

-- Revise record
update teacher set id = 2 where id = 1;

--  Delete record
delete from teacher where id = 2

-- Search record
select * from teacher