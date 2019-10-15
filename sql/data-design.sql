drop table if exists cart;
drop table if exists menu;
drop table if exists `order`;
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

create table `order`(
	orderId binary(16) not null,
	orderHistory varchar(128) null,
	orderProfileId binary (16),
	orderType char(97) not null,
	primary key(orderId)
);

create table menu(
	menuOrderId binary(16) not null,
	menuFoodTypes varchar(16) not null,
	menuFulfillmentType varchar(16) not null,
	menuQuantity varchar (32) not null,
	menuSize char(16) not null,
	menuToppings varchar(256) not null
);

create table cart(
	cartOrderId binary(16) not null,
	cartPayment varchar(24) not null,
	cartProfileId binary(16) not null,
	cartReview varchar (32) not null
);