create table tb_user(
    id int primary key auto_increment comment "编号",
    username varchar(50) unique not null comment "用户名",
    password varchar(50) not null comment "密码",
    age int comment "年龄",
    gender varchar(50) default '女',
    email varchar(50) comment "邮箱"
)
