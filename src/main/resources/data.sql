
insert into users values ('admin', '관리자','010-1111-2222','admin@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS'); 
insert into users values ('ccw', '최창우','010-1234-1234','ccw@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS'); 
insert into users values ('kej', '김은진','010-1111-2222','kej@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS'); 
insert into users values ('yym', '유영미','010-3333-7777','yym@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS'); 
insert into users values ('acw', '안채우','010-6666-8888','acw@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS'); 
insert into users values ('ldh', '이돈휘','010-7777-9999','ldh@gmail.com', '$2a$10$eKK12zPf/k7d2H7/RKbdmeAlYwqqHsO.z21jfa9K6DKL1yPvY3JWS');


insert into authority values ('admin', 'ADMIN');
insert into authority values ('ccw', 'USER');
insert into authority values ('kej', 'USER');
insert into authority values ('yym', 'USER');
insert into authority values ('acw', 'USER'); 
insert into authority values ('ldh', 'USER');

--주유소마스터 등록(우엉완료)
insert into stations values('23366','이리호남 주유소','박노현','010-3623-1234','전북 익산시 창인동2가');
insert into stations values('23458','비사벌 주유소','강석','010-3623-1234','전북 전주시 덕진구 우아동3가');
insert into stations values('23744','행복주유소 주유소','이창규','010-3623-1234','전남 목포시 석현동');
insert into stations values('96052','(주)성은에 충전소','김치욱','010-1234-1234','서울 종로구 평창동');
insert into stations values('33266','신항만 주유소','강탁규','010-3623-1234','전북 군산시 산북동');
insert into stations values('10008','동대문 주유소','김승정','010-2222-2223','경기 부천시 원미구 상1동');
insert into stations values('23826','드림 주유소','최귀민','010-3623-1234','전북 완주군 상관면 용암리');
insert into stations values('24281','금광 주유소','최영수','010-3623-1234','충남 예산군 오가면 충서로 ');
insert into stations values('24288','통일 주유소','송원영','010-3623-1234','경기 연천군 전곡읍 은대리');
insert into stations values('33319','한성골드 주유소','이형철','010-3623-1234','광주 광산구 월전동');
insert into stations values('20518','(주)혜성 주유소','윤군오','010-3623-1234','충남 아산시 음봉면 신수리');
insert into stations values('24817','오일랜드 주유소','강능자','010-3623-1234','경기 의정부시 신곡동');
insert into stations values('90766','포천자동차 충전소','유인식','010-3623-1234','경기 포천시 소흘읍 이동교리');
insert into stations values('90829','우정충전소 충전소','박민자','010-3623-1234','충남 천안시 목천읍 신계리');
insert into stations values('86205','덕우충전소 충전소','송진수','010-3623-1234','경기 화성시 팔탄면 덕우리');
insert into stations values('33339','고속(용전) 주유소','유광옥','010-3623-1234','광주 북구 용전동');
insert into stations values('85198','굿모닝충전 충전소','김영우','010-3623-1234','경북 구미시 사곡동');
insert into stations values('95198','굿모닝충전 충전소','황명숙','010-3623-1234','경북 구미시 사곡동');
insert into stations values('25193','삼척주유할 주유소','박연섭','010-3623-1234','강원 삼척시 노곡면 중마읍리');
insert into stations values('23906','플러스 주유소','김문곤','010-3623-1234','전북 전주시 덕진구 호성동1가');
insert into stations values('79901','서울본부 주유소','이보형','010-3623-1234','서울 중구 을지로2가');
insert into stations values('79902','경강본부 주유소','이보형','010-3623-1234','서울 중구 을지로2가');
insert into stations values('79903','충호본부 주유소','이보형','010-3623-1234','서울 중구 을지로2가');
insert into stations values('79904','SKN법인직  주유소','이보형','010-3623-1234','서울 중구 을지로2가');
insert into stations values('33445','행운 주유소','박기홍','010-3623-1234',' 서울 관악구 봉천동 ');
insert into stations values('12843','국제 주유소','이세복','010-3623-1234','경남 진주시 강남동');
insert into stations values('12936','SK흥국 주유소','김홍선','010-3623-1234','전북 전주시 덕진구 여의동');

--단골주유소 등록(유영미완료)
insert into myCheck values('ccw','79904','SKN법인직  주유소','이보형','010-3623-1234','서울 중구 을지로2가');  
insert into myCheck values('ccw','33445','행운 주유소','박기홍','010-3623-1234', '서울 관악구 봉천동 ');       
insert into myCheck values('ccw','12843','국제 주유소','이세복','010-3623-1234','경남 진주시 강남동');         
insert into myCheck values('ccw','12936','SK흥국 주유소','김홍선','010-3623-1234','전북 전주시 덕진구 여의동');

--주유실적
insert into fuelrecord values ('ccw','2017-01-01','분당주유소','50000','50');
insert into fuelrecord values ('ccw','2017-02-03','분당주유소','55000','105');
insert into fuelrecord values ('ccw','2017-02-28','분당주유소','15000','120');
insert into fuelrecord values ('ccw','2017-03-05','강남주유소','50000','170');
insert into fuelrecord values ('ccw','2017-04-15','강남주유소','50000','230');
insert into fuelrecord values ('ccw','2017-05-02','강남주유소','30000','260');
insert into fuelrecord values ('ccw','2017-06-01','판교주유소','30000','290');
insert into fuelrecord values ('ccw','2017-07-11','판교주유소','20000','310');
insert into fuelrecord values ('ccw','2017-07-29','판교주유소','35000','345');
insert into fuelrecord values ('ccw','2017-08-23','판교주유소','50000','395');
insert into fuelrecord values ('ccw','2017-10-01','판교주유소','65000','460');
insert into fuelrecord values ('ccw','2017-10-03','판교주유소','100000','560');
insert into fuelrecord values ('ccw','2017-10-05','판교주유소','60000','620');

