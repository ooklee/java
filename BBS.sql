create database BBS;              --������
  show databases;                 --�鿴���п�
  use BBS;                        --����BBS��

  create table Board(             --����Board��
 Board_ID int primary key not null;
 Board_name varchar(32);          --����
 Board_date datetime;             --��������
 Board_description varchar(32)    --����
  );

  create table Forum(
    Forum_ID int primary key not nul,            --����
    Forum_name varchar(32),                       --��̳����
    Forum_description varchar(32),                --��̳����
    Forum_ID int,                                 --ID
    foreign key(Forum_ID) references(Forum_ID)    --����
  );

  create table Article(
    Article_ID int primary key not null,     --ID
    Article_Theme varchar(32),      --����
    Pos_time  datetime,             --����ʱ��
    Forum_ID int,
    Article_views int,             --�������
    Article_content char(256),      --����
    Article_ID int,                --�û�ID
    LastReplyDate datetime,         --���ظ�ʱ��
    LastReplyUid int,               --���ظ����û�
  );

  create table Reply(
    Replydate datetime primary key not null,        --�����ظ�ʱ��Ϊ����
    Reply_content char(256),                        --����
    Reply_Title char(128),                          --����
    Reply_UID int                                   --UID
    Replydate time,                             --����ʱ��
    Reply_AID int,
    foreign key(Reply_AID) references(Reply_AID)    --���
  );

  create table Moderator(                        --����������
    Forum_ID int   primary key,
    Uesr_ID int    primary key,
    foreign key(Forum_ID) references(Forum_ID),
    foreign key(User_ID) references(User_ID),
    Moderator_OperUID int,                       --
    Moderator_Operdate datetime
  );

  create table User(                             --����uesr��
    User_ID int primary key not null,           --�û�ID
    Username varchar(32)    not null,           --�û���
    Password varchar(11)    not null             --����
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