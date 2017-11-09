create table users(id varchar not null, name varchar, phonenumber varchar, email varchar, password varchar);
create primary key on users(id);


create table stations(sid varchar not null, sname varchar, sowner varchar, sphonenumber varchar, saddress varchar);
create primary key on stations(sid);


create table myCheck(id varchar not null, sid varchar not null, sname varchar, sowner varchar, phonenumber varchar, address varchar);
create primary key on myCheck(id,sid);


create table authority (id varchar , authority_name varchar);
create table fuelrecord( id varchar not null , fueldate varchar not null , station varchar not null, payment varchar,  totalpoint varchar ) ;

