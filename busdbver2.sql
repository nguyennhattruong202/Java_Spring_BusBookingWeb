/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     13/08/2022 5:06:00 PM                        */
/*==============================================================*/


drop table if exists BUS;

drop table if exists BUSTRIP;

drop table if exists CUSTOMER;

drop table if exists DISTRICT;

drop table if exists EMPLOYEE;

drop table if exists LINEBUS;

drop table if exists PAYMENT;

drop table if exists PROVICE;

drop table if exists SALE_ORDER;

drop table if exists STATION;

drop table if exists TYPE_EMPLOYEE;

drop table if exists WARD;

/*==============================================================*/
/* Table: BUS                                                   */
/*==============================================================*/
create table BUS
(
   ID_BUS               int not null,
   NAME_BUS             text,
   LICENSE_PLATES_BUS   text,
   CAPACITY_BUS         int,
   MANUFACTURER_BUS     text,
   TYPE_BUS             text,
   ACTIVE_BUS           bool,
   primary key (ID_BUS)
);

/*==============================================================*/
/* Table: BUSTRIP                                               */
/*==============================================================*/
create table BUSTRIP
(
   ID_BUSTRIP           int not null,
   ID_EMP               int not null,
   ID_BUS               int not null,
   ID_LINEBUS           int not null,
   DEPARTURE_DATETIME_BUSTRIP datetime,
   PRICE_BUSTRIP        decimal(10,0),
   ACTIVE_BUSTRIP       bool,
   primary key (ID_BUSTRIP)
);

/*==============================================================*/
/* Table: CUSTOMER                                              */
/*==============================================================*/
create table CUSTOMER
(
   ID_CUSTOMER          int not null,
   LAST_NAME_CUSTOMER   text,
   FIRST_NAME_CUSTOMER  text,
   DOB_CUSTOMER         date,
   SEX_CUSTOMER         text,
   ADDRESS_CUSTOMER     text,
   INDENTITY_NUM_CUSTOMER text,
   PHONE_CUSTOMER       text,
   EMAIL_CUSTOMER       text,
   IMAGE_CUSTOMER       text,
   USERNAME_CUSTOMER    text,
   PASSWORD_CUSTOMER    text,
   ACTIVE_CUSTOMER      bool,
   primary key (ID_CUSTOMER)
);

/*==============================================================*/
/* Table: DISTRICT                                              */
/*==============================================================*/
create table DISTRICT
(
   ID_DISTRICT          int not null,
   ID_PROVINCE          int not null,
   NAME_DISTRICT        text,
   primary key (ID_DISTRICT)
);

/*==============================================================*/
/* Table: EMPLOYEE                                              */
/*==============================================================*/
create table EMPLOYEE
(
   ID_EMP               int not null,
   ID_STATION           int not null,
   ID_TYPE_EMPLOYEE     int not null,
   LAST_NAME_EMP        text,
   FIRST_NAME_EMP       text,
   DOB_EMP              date,
   SEX_EMP              text,
   ADDRESS_EMP          text,
   IDENTITY_NUM_EMP     text,
   PHONE_EMP            text,
   EMAIL_EMP            text,
   IMAGE_EMP            text,
   USERNAME_EMP         text,
   PASSWORD_EMP         text,
   ACTIVE_EMP           bool,
   primary key (ID_EMP)
);

/*==============================================================*/
/* Table: LINEBUS                                               */
/*==============================================================*/
create table LINEBUS
(
   ID_LINEBUS           int not null,
   NAME_LINEBUS         text,
   DEPARTURE_LINEBUS    text,
   DESTINATION_LINEBUS  text,
   TIME_TO_MOVE_LINEBUS int,
   DISTANCE_LINEBUS     float,
   PRICE_LINEBUS        decimal(10,0),
   ACTIVE_LINEBUS       bool,
   primary key (ID_LINEBUS)
);

/*==============================================================*/
/* Table: PAYMENT                                               */
/*==============================================================*/
create table PAYMENT
(
   ID_PAYMENT           int not null,
   NAME_PAYMENT         text,
   CONTENT_PAYMENT      text,
   ACTIVE_PAYMENT       bool,
   primary key (ID_PAYMENT)
);

/*==============================================================*/
/* Table: PROVICE                                               */
/*==============================================================*/
create table PROVICE
(
   ID_PROVINCE          int not null,
   NAME_PROVINCE        text,
   primary key (ID_PROVINCE)
);

/*==============================================================*/
/* Table: SALE_ORDER                                            */
/*==============================================================*/
create table SALE_ORDER
(
   ID_SALE_ORDER        int not null,
   ID_CUSTOMER          int not null,
   ID_PAYMENT           int not null,
   ID_BUSTRIP           int not null,
   CREATED_DATE_SALE_ORDER datetime,
   NUM_SALE_ORDER       int,
   FEEDBACK_RATE_SALE_ORDER int,
   FEEDBACK_COMMENT_SALE_ORDER text,
   FEEDBACK_DATE_SALE_ORDER datetime,
   PAID_SALE_ORDER      bool,
   CANCEL_SALE_ORDER    bool,
   primary key (ID_SALE_ORDER)
);

/*==============================================================*/
/* Table: STATION                                               */
/*==============================================================*/
create table STATION
(
   ID_STATION           int not null,
   ID_PROVINCE          int not null,
   NAME_STATION         text,
   ADDRESS_STATION      text,
   PHONE_STATION        text,
   ESTABLISH_DATE_STATION date,
   primary key (ID_STATION)
);

/*==============================================================*/
/* Table: TYPE_EMPLOYEE                                         */
/*==============================================================*/
create table TYPE_EMPLOYEE
(
   ID_TYPE_EMPLOYEE     int not null,
   NAME_TYPE_EMPLOYEE   text,
   SALARY_LEVEL_TYPE_EMPLOYEE decimal(10,0),
   primary key (ID_TYPE_EMPLOYEE)
);

/*==============================================================*/
/* Table: WARD                                                  */
/*==============================================================*/
create table WARD
(
   ID_WARD              int not null,
   ID_DISTRICT          int not null,
   NAME_WARD            text,
   primary key (ID_WARD)
);

alter table BUSTRIP add constraint FK_R5 foreign key (ID_BUS)
      references BUS (ID_BUS) on delete restrict on update restrict;

alter table BUSTRIP add constraint FK_R6 foreign key (ID_LINEBUS)
      references LINEBUS (ID_LINEBUS) on delete restrict on update restrict;

alter table BUSTRIP add constraint FK_R7 foreign key (ID_EMP)
      references EMPLOYEE (ID_EMP) on delete restrict on update restrict;

alter table DISTRICT add constraint FK_R1 foreign key (ID_PROVINCE)
      references PROVICE (ID_PROVINCE) on delete restrict on update restrict;

alter table EMPLOYEE add constraint FK_R11 foreign key (ID_STATION)
      references STATION (ID_STATION) on delete restrict on update restrict;

alter table EMPLOYEE add constraint FK_R4 foreign key (ID_TYPE_EMPLOYEE)
      references TYPE_EMPLOYEE (ID_TYPE_EMPLOYEE) on delete restrict on update restrict;

alter table SALE_ORDER add constraint FK_R10 foreign key (ID_BUSTRIP)
      references BUSTRIP (ID_BUSTRIP) on delete restrict on update restrict;

alter table SALE_ORDER add constraint FK_R8 foreign key (ID_CUSTOMER)
      references CUSTOMER (ID_CUSTOMER) on delete restrict on update restrict;

alter table SALE_ORDER add constraint FK_R9 foreign key (ID_PAYMENT)
      references PAYMENT (ID_PAYMENT) on delete restrict on update restrict;

alter table STATION add constraint FK_R3 foreign key (ID_PROVINCE)
      references PROVICE (ID_PROVINCE) on delete restrict on update restrict;

alter table WARD add constraint FK_R2 foreign key (ID_DISTRICT)
      references DISTRICT (ID_DISTRICT) on delete restrict on update restrict;

