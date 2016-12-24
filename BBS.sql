create database BBS;              --创建库
  show databases;                 --查看所有库
  use BBS;                        --进入BBS库

  create table Board(             --创建Board表
 Board_ID int primary key not null;
 Board_name varchar(32);          --名称
 Board_date datetime;             --创建日期
 Board_description varchar(32)    --描述
  );

  create table Forum(
    Forum_ID int primary key not nul,            --主键
    Forum_name varchar(32),                       --论坛名称
    Forum_description varchar(32),                --论坛描述
    Forum_ID int,                                 --ID
    foreign key(Forum_ID) references(Forum_ID)    --外联
  );

  create table Article(
    Article_ID int primary key not null,     --ID
    Article_Theme varchar(32),      --主题
    Pos_time  datetime,             --发帖时间
    Forum_ID int,
    Article_views int,             --浏览次数
    Article_content char(256),      --内容
    Article_ID int,                --用户ID
    LastReplyDate datetime,         --最后回复时间
    LastReplyUid int,               --最后回复的用户
  );

  create table Reply(
    Replydate datetime primary key not null,        --设最后回复时间为主键
    Reply_content char(256),                        --内容
    Reply_Title char(128),                          --标题
    Reply_UID int                                   --UID
    Replydate time,                             --回帖时间
    Reply_AID int,
    foreign key(Reply_AID) references(Reply_AID)    --外键
  );

  create table Moderator(                        --创建版主表
    Forum_ID int   primary key,
    Uesr_ID int    primary key,
    foreign key(Forum_ID) references(Forum_ID),
    foreign key(User_ID) references(User_ID),
    Moderator_OperUID int,                       --
    Moderator_Operdate datetime
  );

  create table User(                             --创建uesr表
    User_ID int primary key not null,           --用户ID
    Username varchar(32)    not null,           --用户名
    Password varchar(11)    not null             --密码
  );

  create table UserDesc(
    User_ID int     primary key not null,
    UserDesc_Desci  varchar(32),
    UserDesc_Name   varchar(32),
    UserDesc_Sex    varchar(32),
    UserDesc_Birthday  date,
    foreign key(Uesr_ID) references User(User_ID)
  );

  create table Entity7(
    User_ID int     int primary key not null,
    Role_ID int     int primary key not null
  );

  create table Roleld(
    Role_ID int primary key not null,
    Rolel_Name varchar(32)
  );
  create table Entity9(
    Role_ID int int primary key not null,
    Role_Name varchar(32)
  );
  create table Right(
    Right_ID int primary key not null,
    Right_Name varchar(32)
  );