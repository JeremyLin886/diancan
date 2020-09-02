drop database if exists diancan;
# utf8mb4和utf8mb4_unicode_ci主要解决emoji表情符号不能存入数据的问题
create database diancan default character set utf8mb4 collate utf8mb4_unicode_ci;
use diancan;

# 创建管理员
create table `admin_info`
(
    `admin_id`    int         not null auto_increment,
    `username`    varchar(32) not null,
    `password`    varchar(32) not null,
    `phone`       varchar(64) not null comment '用户手机号',
    `admin_type`  int         not null comment '1员工，2管理员',
    `create_time` timestamp   not null default current_timestamp comment '创建时间',
    `update_time` timestamp   not null default current_timestamp on update current_timestamp comment '修改时间',
    primary key (`admin_id`)
) comment '餐厅卖家信息表';
# 创建一个默认管理员
INSERT INTO admin_info
VALUES (1, 'JemmryLin', '123456', '15960903092', 2, now(), now());











