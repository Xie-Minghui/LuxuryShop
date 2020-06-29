/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/6/17 17:42:33                           */
/*==============================================================*/
drop table if exists Orders_item; #订单条目

drop table if exists Favor;#收藏夹

drop table if exists Orders; # 订单

drop table if exists Luxury; # 商品

drop table if exists Admin; # 管理员

drop table if exists Consumer; # 用户


/*==============================================================*/
/* Table: Admin                                                 */
/*==============================================================*/
create table Admin                                    #管理员，商家
(
   AID                  int not null auto_increment,  #管理员ID
   ANAME                varchar(40),                  #管理员姓名
   PSWD                 varchar(40),                  #管理员密码
   primary key (AID)
);

/*==============================================================*/
/* Table: Consumer                                              */
/*==============================================================*/
create table Consumer#用户
(
   CID                  int not null auto_increment,  #用户ID
   CNAME                varchar(40),                  #用户姓名
   PN                   varchar(20),                  #用户手机号
   PROVINCE             varchar(40),                  #省份
   CITY                 varchar(40),                  #城市
   DISTRICT             varchar(40),                  #区县
   ADDR                 varchar(100),                 #详细地址
   GENDER               char(1),                      #用户性别
   EMAIL                varchar(40),                  #邮件地址
   BDAY                 date,                         #出生日期
   PSWD                 varchar(40),                  #密码
   primary key (CID)
);


/*==============================================================*/
/* Table: Luxury                                                */
/*==============================================================*/
create table Luxury                                  #商品
(
   LID                  int not null auto_increment, #商品ID
   AID                  int,                         #商家ID（管理员ID）
   LNAME                varchar(40),                 #商品名称
   PRICE                numeric(10,2),               #商品价格
   RESTNUM              int,                         #库存
   TYPE                 char(10),                    #商品类型
	DATE						date,								  #加入时间
   INFOR                varchar(255),                #商品信息
   IMAGE                varchar(1000),               #图片
   SALENUM              int,                         #销量
   VIEWCOUNT            int,                         #浏览量
   SIZE                 varchar(40),                #最小尺寸
   WEIGHT               numeric(10,2),               #重量
   COLOR                varchar(10),                 #颜色
   primary key (LID)
);

/*==============================================================*/
/* Table: Orders                                                */
/*==============================================================*/
create table Orders																	 #订单
(
   OID                  varchar(100),                 #订单ID
   CID                  int not null,                #用户ID
   DATE                 datetime,                    #下单日期
   PAY                  varchar(20),                 #支付方式
   SUMPRICE             numeric(10,2),               #总价
   STATE                int,                         #标注是否确认订单（0-已下单未付款，付款后进入其他状态，1-未发货，2-已发货，3-确认收货）
   NAME                 varchar(20),                 #收件人姓名
   PHONE                varchar(20),                 #收件人手机号
   PROVINCE             varchar(20),                 #收件省份
   CITY                 varchar(20),                 #收件城市
   DISTRICT             varchar(20),                 #收件区县
   ADDR                 varchar(20),                 #详细地址
   REMARK               varchar(20),                 #订单备注
   primary key (OID),
   foreign key (CID) references Consumer(CID)
);

create table Orders_item														 #订单条目
(  
   OID                  varchar(100),                 #订单ID
   LID                  int not null,                #商品ID
   NUM                  int,                         #购买数量
   COMMENT              varchar(400),                #反馈信息,评价
   primary key (LID, OID),
   foreign key (LID) references Luxury (LID)
);

/*==============================================================*/
/* Table: Favor                                                 */
/*==============================================================*/
create table Favor                                  #心愿单，收藏
(
    CID                  int not null,              #用户ID
    LID                  int not null,              #商品ID
    primary key(CID, LID)
);

alter table Favor add constraint FK_Favor foreign key (CID)
      references Consumer (CID) on delete restrict on update restrict;

alter table Favor add constraint FK_Favor2 foreign key (LID)
      references Luxury (LID) on delete restrict on update restrict;

alter table Luxury add constraint FK_sale foreign key (AID)
      references Admin (AID) on delete restrict on update restrict;
