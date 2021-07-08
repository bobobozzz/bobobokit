use db_test;
drop table if exists t_transform_mysql_csv;
create table if not exists t_transform_mysql_csv(
    id int primary key auto_increment,
    field1 int,
    field2 int,
    field3 int 
);

insert into t_transform_mysql_csv(field1, field2, field3) values (11, 12, 13),
(21,22,23);
