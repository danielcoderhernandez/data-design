drop table if exists `order`;
drop table if exists menu;
drop table if exists profile;

create table profile(
	profileId binary(16) not null,
	profileActivationToken char(32),
	profileEmail varchar(128) not null,
	profileName char(97) not null,
	profilePassword varchar (32) not null,
	profilePhone char (10) not null,
	unique(profileEmail),
	index(profileEmail),
	primary key(profileId)
);

create table menu(
	menuId binary(16) not null,
	menuFoodTypes varchar(16) not null,
	menuSize char(16) not null,
	menuToppings varchar(256) not null
);

create table `order`(
	orderMenuId          BINARY(16)  not null,
	orderProfileId       BINARY(16),
	orderFulfillmentTime CHAR(4)     not null,
	orderHistory         VARCHAR(128),
	orderPaymentType     CHAR(16)    not null,
	orderQuantity        VARCHAR(16) not null,
	orderType            VARCHAR(64) not null,
	primary key(orderMenuId)
);



