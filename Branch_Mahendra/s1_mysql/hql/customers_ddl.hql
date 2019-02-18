create database stg_s1;
use  stg_s1;

create table stg_s1.customers_s1
(custno string ,firstname string ,lastname string ,gender string ,age string ,profession string ,contactNo string ,emailId string ,city string ,state string ,isActive string ,
createdDate string ,UpdatedDate string )
row format delimited
fields terminated by ',';

