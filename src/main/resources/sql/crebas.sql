/*==============================================================*/
/* DBMS name:      MySQL 4.0                                    */
/* Created on:     2018/1/16 13:45:58                           */
/*==============================================================*/


drop table if exists SALES;

drop table if exists log;

/*==============================================================*/
/* Table: SALES                                                 */
/*==============================================================*/
create table SALES
(
   S_ID                           int                            not null,
   USSERNAME                      varchar(64)                    not null,
   PASSWORD                       varchar(64)                    not null,
   REALNAME                       varchar(16)                    not null,
   SEX                            varchar(4)                     not null,
   PHONE_NO                       varchar(32)                    not null,
   CREATED_DATA                   date                           not null,
   PERMISSION                     int                            not null,
   POSITION                       varchar(32)                    not null,
   primary key (S_ID)
)
type = InnoDB;

/*==============================================================*/
/* Table: log                                                   */
/*==============================================================*/
create table log
(
   L_ID                           int                            not null,
   S_ID                           int                            not null,
   type                           varchar(32)                    not null,
   Date                           date                           not null,
   "Desc"                         varchar(128)                   not null,
   T_ID                           int                            not null,
   primary key (L_ID)
)
type = InnoDB;

