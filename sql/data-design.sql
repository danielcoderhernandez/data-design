drop table if exists `order`;
drop table if exists menu;
drop table if exists profile;

create table profile (
	profileId              BINARY(16)   not null,
	profileActivationToken CHAR(32),
	profileEmail           VARCHAR(128) not null,
	profileName            CHAR(97)     not null,
	profilePassword        VARCHAR(32)  not null,
	profilePhone           CHAR(10)     not null,
	unique (profileEmail),
	index (profileEmail),
	primary key (profileId)
);

create table menu (
	menuId        BINARY(16)   not null,
	menuFoodTypes VARCHAR(16)  not null,
	menuSize      CHAR(16)     not null,
	menuToppings  VARCHAR(256) not null
);

create table `order` (
	orderMenuId          BINARY(16)  not null,
	orderProfileId       BINARY(16),
	orderFulfillmentTime CHAR(4)     not null,
	orderHistory         VARCHAR(128),
	orderPaymentType     CHAR(16)    not null,
	orderQuantity        VARCHAR(16) not null,
	orderType            VARCHAR(64) not null,
	primary key (orderMenuId)
);



