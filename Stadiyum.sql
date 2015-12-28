create table stadium(
stadium_id number primary key, 
stadium_name varchar2(200) not null
);

insert into stadium (stadium_id, stadium_name) values (1, 'Darrell K Royal Texas Memorial Stadium');
insert into stadium (stadium_id, stadium_name) values (2, 'Amon Carter Stadium');
insert into stadium (stadium_id, stadium_name) values (3, 'Bill Snyder Football Stadium');
insert into stadium (stadium_id, stadium_name) values (4, 'Boone Pickens Stadium');
insert into stadium (stadium_id, stadium_name) values (5, 'Jones AT&T Stadium');
insert into stadium (stadium_id, stadium_name) values (6, 'McLane Stadium');
insert into stadium (stadium_id, stadium_name) values (7, 'Memorial Stadium');
insert into stadium (stadium_id, stadium_name) values (8, 'Mountaineer Field');
insert into stadium (stadium_id, stadium_name) values (9, 'Trice Stadium');
insert into stadium (stadium_id, stadium_name) values (10, 'Benson Field at Yulman Stadium');
insert into stadium (stadium_id, stadium_name) values (11, 'Yager Stadium');
insert into stadium (stadium_id, stadium_name) values (12, 'Williams-Brice Stadium');
insert into stadium (stadium_id, stadium_name) values (13, 'War Memorial Stadium');
insert into stadium (stadium_id, stadium_name) values (14, 'Wallace Wade Stadium');
insert into stadium (stadium_id, stadium_name) values (15, 'Waldo Stadium');
insert into stadium (stadium_id, stadium_name) values (16, 'Veterans Memorial Stadium');
insert into stadium (stadium_id, stadium_name) values (17, 'Vaught Hemingway Stadium');
insert into stadium (stadium_id, stadium_name) values (18, 'Vanderbilt Stadium');
insert into stadium (stadium_id, stadium_name) values (19, 'UB Stadium');
insert into stadium (stadium_id, stadium_name) values (20, 'University Stadium');
insert into stadium (stadium_id, stadium_name) values (21, 'Tiger Stadium');
insert into stadium (stadium_id, stadium_name) values (22, 'TCF Bank Stadium');
insert into stadium (stadium_id, stadium_name) values (23, 'Sun Life Stadium');
insert into stadium (stadium_id, stadium_name) values (24, 'Sun Devil Stadium, Frank Kush Field');
insert into stadium (stadium_id, stadium_name) values (25, 'Sun Bowl stadium' );
insert into stadium (stadium_id, stadium_name) values (26, 'Summa Field at InfoCision Stadium');
insert into stadium (stadium_id, stadium_name) values (27, 'Stanford Stadium');
insert into stadium (stadium_id, stadium_name) values (28, 'Spartan Stadium');
insert into stadium (stadium_id, stadium_name) values (29, 'Skelly Field at H. A. Chapman Stadium');
insert into stadium (stadium_id, stadium_name) values (30, 'Sonny Lubick Field at Hughes Stadium');

/* Create Vendor table and insert records */
create table vendor(
vendor_id number primary key, 
vendor_name varchar2(50) not null, 
stadium_id number, 
foreign key(stadium_id) references stadium(stadium_id)
);

insert into vendor (vendor_id, vendor_name, stadium_id) values (1, 'Burger King', 1);
insert into vendor (vendor_id, vendor_name, stadium_id) values (2, 'Taco Bell', 2);
insert into vendor (vendor_id, vendor_name, stadium_id) values (3, 'Pizza Hut', 3);
insert into vendor (vendor_id, vendor_name, stadium_id) values (4, 'Buffalo Wild Wings', 4);
insert into vendor (vendor_id, vendor_name, stadium_id) values (5, 'Whataburger', 5);
insert into vendor (vendor_id, vendor_name, stadium_id) values (6, 'Wingstop', 6);
insert into vendor (vendor_id, vendor_name, stadium_id) values (7, 'Little Caesars', 7);
insert into vendor (vendor_id, vendor_name, stadium_id) values (8, 'Round Table Pizza', 8);
insert into vendor (vendor_id, vendor_name, stadium_id) values (9, 'Tim Hortons', 9);
insert into vendor (vendor_id, vendor_name, stadium_id) values (10, 'WingStreet', 10);
insert into vendor (vendor_id, vendor_name, stadium_id) values (11, 'Sbarro', 11);
insert into vendor (vendor_id, vendor_name, stadium_id) values (12, 'Carrows', 12);
insert into vendor (vendor_id, vendor_name, stadium_id) values (13, 'Golden Chick', 13);
insert into vendor (vendor_id, vendor_name, stadium_id) values (14, 'Shake Shack', 14);
insert into vendor (vendor_id, vendor_name, stadium_id) values (15, 'Subway', 15);
insert into vendor (vendor_id, vendor_name, stadium_id) values (16, 'Umami Burger', 16);
insert into vendor (vendor_id, vendor_name, stadium_id) values (17, 'Panda Express', 17);
insert into vendor (vendor_id, vendor_name, stadium_id) values (18, 'Krispy Kreme', 18);
insert into vendor (vendor_id, vendor_name, stadium_id) values (19, 'Fatburger', 19);
insert into vendor (vendor_id, vendor_name, stadium_id) values (20, 'El Pollo Loco', 20);
insert into vendor (vendor_id, vendor_name, stadium_id) values (21, 'Baja Fresh', 21);
insert into vendor (vendor_id, vendor_name, stadium_id) values (22, 'Johnny Rockets', 22);
insert into vendor (vendor_id, vendor_name, stadium_id) values (23, 'Dairy Queen', 23);
insert into vendor (vendor_id, vendor_name, stadium_id) values (24, 'Port of Subs', 24);
insert into vendor (vendor_id, vendor_name, stadium_id) values (25, 'Popeyes Chicken', 25);
insert into vendor (vendor_id, vendor_name, stadium_id) values (26, 'Wienerschnitzel', 26);
insert into vendor (vendor_id, vendor_name, stadium_id) values (27, 'Naugles', 27);
insert into vendor (vendor_id, vendor_name, stadium_id) values (28, 'Kewpee', 28);
insert into vendor (vendor_id, vendor_name, stadium_id) values (29, 'Big Boy', 29);
insert into vendor (vendor_id, vendor_name, stadium_id) values (30, 'Burgerville', 30);
    
/*    # Create Menu_item table and insert records*/
create table menu_item(
menu_item_id number primary key, 
menu_item_name varchar2(50) not null, 
vendor_id number, foreign key(vendor_id) references vendor(vendor_id),
menu_item_price number(9,2) not null
);

insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (1, 'Hamburger', 1, 4.99);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (2, 'Hot dog', 2, 7.89);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (3, 'Pizza', 3, 10.50);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (4, 'Nachos', 4, 6.99);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (5, 'Coke', 5, 2.99);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (6, 'Water', 6, 3.45);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (7, 'Peanuts', 7, 4.55);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (8, 'Sausage Wrap', 8, 8.99);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (9, 'Pretzel', 9, 5.49);
insert into menu_item (menu_item_id, menu_item_name, vendor_id, menu_item_price) values (10, 'Popcorn', 10, 3.49);


/*Create Courier table and insert records*/
create table courier(
courier_id number primary key, 
last_name varchar2(50) not null, 
first_name varchar2(50) not null
);

insert into  courier (courier_id, last_name, first_name) values (1, 'Smith', 'John');
insert into  courier (courier_id, last_name, first_name) values (2, 'Perry', 'Phill');
insert into  courier (courier_id, last_name, first_name) values (3, 'Lee', 'Lynda');
insert into  courier (courier_id, last_name, first_name) values (4, 'Carpenter', 'Susan');
insert into  courier (courier_id, last_name, first_name) values (5, 'James', 'Rick');
insert into  courier (courier_id, last_name, first_name) values (6, 'Jackson', 'Phill');
insert into  courier (courier_id, last_name, first_name) values (7, 'Morris', 'Garret');
insert into  courier (courier_id, last_name, first_name) values (8, 'Pendelton', 'Terry');
insert into  courier (courier_id, last_name, first_name) values (9, 'Lange', 'Tom');
insert into  courier (courier_id, last_name, first_name) values (10, 'Buck', 'Joe');
insert into  courier (courier_id, last_name, first_name) values (11, 'Garner', 'James');
insert into  courier (courier_id, last_name, first_name) values (12, 'Snell', 'Steve');
insert into  courier (courier_id, last_name, first_name) values (13, 'Brady', 'Tom');
insert into  courier (courier_id, last_name, first_name) values (14, 'Petty', 'Tom');
insert into  courier (courier_id, last_name, first_name) values (15, 'Madison', 'James');
insert into  courier (courier_id, last_name, first_name) values (16, 'Edison', 'Thomas');
insert into  courier (courier_id, last_name, first_name) values (17, 'Watts', 'Jimmy');
insert into  courier (courier_id, last_name, first_name) values (18, 'Baron', 'Red');
insert into  courier (courier_id, last_name, first_name) values (19, 'Bartlet', 'Jack');
insert into  courier (courier_id, last_name, first_name) values (20, 'Wooten', 'Victor');
insert into  courier (courier_id, last_name, first_name) values (21, 'Dean', 'Jimmy');
insert into  courier (courier_id, last_name, first_name) values (22, 'Morgan', 'J.P.');
insert into  courier (courier_id, last_name, first_name) values (23, 'Gates', 'Bill');
insert into  courier (courier_id, last_name, first_name) values (24, 'Parker', 'Peter');
insert into  courier (courier_id, last_name, first_name) values (25, 'Aaron', 'Hank');
insert into  courier (courier_id, last_name, first_name) values (26, 'Kelly', 'Gene');
insert into  courier (courier_id, last_name, first_name) values (27, 'Lauren', 'Ralph');
insert into  courier (courier_id, last_name, first_name) values (28, 'Lee', 'Geddy');
insert into  courier (courier_id, last_name, first_name) values (29, 'Lewis', 'Jerry');
insert into  courier (courier_id, last_name, first_name) values (30, 'Bradley', 'Omar');

/*Create Customer table and insert records*/
create table customer(
customer_id number primary key, 
last_name varchar2(50) not null, 
first_name varchar2(50) not null,
login varchar2(50) not null,
password varchar2(50) not null
);

insert into  customer (customer_id, last_name, first_name,login,password) values (1, 'Richardson', 'Steve','testing1','password');
insert into  customer (customer_id, last_name, first_name,login,password) values (2, 'Clayton', 'Adam','cbryant1','vwKeNY');
insert into  customer (customer_id, last_name, first_name,login,password) values (3, 'Michael', 'George','jwatkins2','ClwkxSAx');
insert into  customer (customer_id, last_name, first_name,login,password) values (4, 'Murray', 'Bill','kgriffin3','XxESTT');
insert into  customer (customer_id, last_name, first_name,login,password) values (5, 'Dean', 'James','wparker4','ppBn5h873Jh');
insert into  customer (customer_id, last_name, first_name,login,password) values (6, 'Everett', 'Chad','lbrown5','BjFuuW64aNh');
insert into  customer (customer_id, last_name, first_name,login,password) values (7, 'Seymour', 'Jane','bcole6','MjISXwghlB5X');
insert into  customer (customer_id, last_name, first_name,login,password) values (8, 'Martin', 'Steve','jrice7','zdgseDXixcRx');
insert into  customer (customer_id, last_name, first_name,login,password) values (9, 'Simon', 'Paul','hortiz2a','nQf7lJsUfIu1');
insert into  customer (customer_id, last_name, first_name,login,password) values (10, 'Stewart', 'Jimmy','cmartin8','FuCkkYi1');
insert into  customer (customer_id, last_name, first_name,login,password) values (11, 'Craig', 'Jenny','ejohnson9','HLGZWxaEnk');
insert into  customer (customer_id, last_name, first_name,login,password) values (12, 'Oliver', 'John','jwesta','he0nPd672aQ5');
insert into  customer (customer_id, last_name, first_name,login,password) values (13, 'Duncan', 'Sandy','thansenb','nIXNnuCjp');
insert into  customer (customer_id, last_name, first_name,login,password) values (14, 'Willis', 'Bruce','djohnstonc','RS6LqXbjjW6x');
insert into  customer (customer_id, last_name, first_name,login,password) values (15, 'Joel', 'Billy','kwebbd','cQiQ4pwPAPNt');
insert into  customer (customer_id, last_name, first_name,login,password) values (16, 'Jordan', 'Michael','mhayese','AHW5u3');
insert into  customer (customer_id, last_name, first_name,login,password) values (17, 'Howard', 'Ron','lberryf','OIzFOOSLl');
insert into  customer (customer_id, last_name, first_name,login,password) values (18, 'Howard', 'Thomas','anicholsg','nwCxwePo3rSN');
insert into  customer (customer_id, last_name, first_name,login,password) values (19, 'Gabriel', 'Peter','jgarretth','5uUNUXWqA');
insert into  customer (customer_id, last_name, first_name,login,password) values (20, 'Scott', 'Willard','rboydi','4YWHTWr');
insert into  customer (customer_id, last_name, first_name,login,password) values (21, 'Shelley', 'Mary','dlawsonj','ZsdArbui4');
insert into  customer (customer_id, last_name, first_name,login,password) values (22, 'Grant', 'Hugh','crileyk','qecvgW46zIjb');
insert into  customer (customer_id, last_name, first_name,login,password) values (23, 'Hannah', 'Darryl','aadamsl','w6jBypDjd');
insert into  customer (customer_id, last_name, first_name,login,password) values (24, 'Gordon', 'Jeff','elynchm','dselhEfjAwA');
insert into  customer (customer_id, last_name, first_name,login,password) values (25, 'Hope', 'Bob','slanen','rs83iE');
insert into  customer (customer_id, last_name, first_name,login,password) values (26, 'Allen', 'Debbie','rboydo','ahFt2sQ8sJx');
insert into  customer (customer_id, last_name, first_name,login,password) values (27, 'Alexander', 'William','rthompsonp','O2EI0kLHWr5G');
insert into  customer (customer_id, last_name, first_name,login,password) values (28, 'Lee', 'Stan','mwilliamsq','4w4VNRd');
insert into  customer (customer_id, last_name, first_name,login,password) values (29, 'Lewis', 'Carl','efisherr','6k16up5FmgQ4');
insert into  customer (customer_id, last_name, first_name,login,password) values (30, 'Benny', 'Jack','jgilberts','nCsHJPdHO1V');

/*Create Payment_Method table and insert records*/
create table payment_method(
payment_method_id number primary key, 
payment_description varchar2(50) not null
);

insert into  payment_method (payment_method_id, payment_description) values (1, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (2, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (3, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (4, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (5, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (6, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (7, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (8, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (9, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (10, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (11, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (12, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (13, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (14, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (15, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (16, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (17, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (18, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (19, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (20, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (21, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (22, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (23, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (24, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (25, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (26, 'Visa');
insert into  payment_method (payment_method_id, payment_description) values (27, 'American Express');
insert into  payment_method (payment_method_id, payment_description) values (28, 'Discover');
insert into  payment_method (payment_method_id, payment_description) values (29, 'MasterCard');
insert into  payment_method (payment_method_id, payment_description) values (30, 'Visa');

/*Create Payment table and insert records*/
create table payment(
payment_id number primary key, 
payment_amount number not null, 
service_fee number not null, 
courier_payment number not null, 
courier_id number not null, 
payment_method_id number not null, 
customer_id number not null, 
foreign key(courier_id) references courier(courier_id), 
foreign key(payment_method_id) references payment_method(payment_method_id), 
foreign key(customer_id) references customer(customer_id)
);

insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (1, 12.32, 3.00, 4.50, 1, 1, 1);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (2, 75.88, 3.00, 4.50, 2, 2, 2);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (3, 22.66, 3.00, 4.50, 3, 3, 3);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (4, 75.98, 3.00, 4.50, 5, 5, 5);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (6, 52.12, 3.00, 4.50, 6, 6, 6);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (7, 45.72, 3.00, 4.50, 7, 7, 7);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (8, 27.18, 3.00, 4.50, 8, 8, 8);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (9, 67.29, 3.00, 4.50, 9, 9, 9);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (10, 38.84, 3.00, 4.50, 10, 10, 10);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (11, 54.19, 3.00, 4.50, 11, 11, 11);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (12, 62.31, 3.00, 4.50, 12, 12, 12);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (13, 71.92, 3.00, 4.50, 13, 13, 13);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (14, 100.78, 3.00, 4.50, 14, 14, 14);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (15, 76.25, 3.00, 4.50, 15, 15, 15);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (16, 85.49, 3.00, 4.50, 16, 16, 16);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (17, 37.82, 3.00, 4.50, 17, 17, 17);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (18, 28.58, 3.00, 4.50, 18, 18, 18);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (19, 67.11, 3.00, 4.50, 19, 19, 19);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (20, 98.23, 3.00, 4.50, 20, 20, 20);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (21, 27.91, 3.00, 4.50, 21, 21, 21);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (22, 44.99, 3.00, 4.50, 22, 22, 22);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (23, 70.74, 3.00, 4.50, 23, 23, 23);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (24, 26.33, 3.00, 4.50, 24, 24, 24);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (25, 65.36, 3.00, 4.50, 25, 25, 25);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (26, 32.89, 3.00, 4.50, 26, 26, 26);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (27, 28.38, 3.00, 4.50, 27, 27, 27);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (28, 26.43, 3.00, 4.50, 28, 28, 28);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (29, 57.90, 3.00, 4.50, 29, 29, 29);
insert into payment (payment_id, payment_amount, service_fee, courier_payment, courier_id, payment_method_id, customer_id) values (30, 48.39, 3.00, 4.50, 30, 30, 30);

/*Create Orders table and insert records*/
create table orders(orders_id number primary key, 
total_price number not null, 
customer_id number, 
courier_id number, 
foreign key(customer_id) references customer(customer_id), 
foreign key(courier_id) references courier(courier_id)
);

insert into orders (orders_id, total_price, customer_id, courier_id) values (1, 3.54, 1, 1);
insert into orders (orders_id, total_price, customer_id, courier_id) values (2, 10.30, 2, 2);
insert into orders (orders_id, total_price, customer_id, courier_id) values (3, 7.89, 3, 3);
insert into orders (orders_id, total_price, customer_id, courier_id) values (4, 12.32, 4, 4);
insert into orders (orders_id, total_price, customer_id, courier_id) values (5, 8.22, 5, 5);
insert into orders (orders_id, total_price, customer_id, courier_id) values (6, 25.16, 6, 6);
insert into orders (orders_id, total_price, customer_id, courier_id) values (7, 32.09, 7, 7);
insert into orders (orders_id, total_price, customer_id, courier_id) values (8, 20.10, 8, 8);
insert into orders (orders_id, total_price, customer_id, courier_id) values (9, 17.18, 9, 9);
insert into orders (orders_id, total_price, customer_id, courier_id) values (10, 21.50, 10, 10);
insert into orders (orders_id, total_price, customer_id, courier_id) values (11, 13.24, 11, 11);
insert into orders (orders_id, total_price, customer_id, courier_id) values (12, 31.59, 12, 12);
insert into orders (orders_id, total_price, customer_id, courier_id) values (13, 25.16, 13, 13);
insert into orders (orders_id, total_price, customer_id, courier_id) values (14, 55.62, 14, 14);
insert into orders (orders_id, total_price, customer_id, courier_id) values (15, 12.88, 15, 15);
insert into orders (orders_id, total_price, customer_id, courier_id) values (16, 50.14, 16, 16);
insert into orders (orders_id, total_price, customer_id, courier_id) values (17, 48.11, 17, 17);
insert into orders (orders_id, total_price, customer_id, courier_id) values (18, 22.07, 18, 18);
insert into orders (orders_id, total_price, customer_id, courier_id) values (19, 15.10, 19, 19);
insert into orders (orders_id, total_price, customer_id, courier_id) values (20, 45.38, 20, 20);
insert into orders (orders_id, total_price, customer_id, courier_id) values (21, 16.50, 21, 21);
insert into orders (orders_id, total_price, customer_id, courier_id) values (22, 65.17, 22, 22);
insert into orders (orders_id, total_price, customer_id, courier_id) values (23, 18.62, 23, 23);
insert into orders (orders_id, total_price, customer_id, courier_id) values (24, 27.96, 24, 24);
insert into orders (orders_id, total_price, customer_id, courier_id) values (25, 100.12, 25, 25);
insert into orders (orders_id, total_price, customer_id, courier_id) values (26, 19.56, 26, 26);
insert into orders (orders_id, total_price, customer_id, courier_id) values (27, 60.79, 27, 27);
insert into orders (orders_id, total_price, customer_id, courier_id) values (28, 49.00, 28, 28);
insert into orders (orders_id, total_price, customer_id, courier_id) values (29, 18.89, 29, 29);
insert into orders (orders_id, total_price, customer_id, courier_id) values (30, 35.23, 30, 30);

CREATE SEQUENCE order_id_seq start with 31
INCREMENT BY 1
MINVALUE 31
MAXVALUE 99999999999999999999999;

/*Create Order_Details table and insert records*/
create table order_details (menu_item_id number not null, orders_id number not null, quantity number not null, primary key(menu_item_id, orders_id), foreign key(menu_item_id) references menu_item(menu_item_id), foreign key(orders_id) references orders(orders_id));
insert into order_details (menu_item_id, orders_id, quantity) values (1, 1, 5);
insert into order_details (menu_item_id, orders_id, quantity) values (2, 2, 3);
insert into order_details (menu_item_id, orders_id, quantity) values (3, 3, 10);
insert into order_details (menu_item_id, orders_id, quantity) values (4, 4, 7);
insert into order_details (menu_item_id, orders_id, quantity) values (5, 5, 4);
insert into order_details (menu_item_id, orders_id, quantity) values (6, 6, 4);
insert into order_details (menu_item_id, orders_id, quantity) values (7, 7, 9);
insert into order_details (menu_item_id, orders_id, quantity) values (8, 8, 8);
insert into order_details (menu_item_id, orders_id, quantity) values (9, 9, 7);
insert into order_details (menu_item_id, orders_id, quantity) values (10, 10, 10);
insert into order_details (menu_item_id, orders_id, quantity) values (9, 11, 3);
insert into order_details (menu_item_id, orders_id, quantity) values (8, 12, 6);
insert into order_details (menu_item_id, orders_id, quantity) values (7, 13, 7);
insert into order_details (menu_item_id, orders_id, quantity) values (6, 14, 4);
insert into order_details (menu_item_id, orders_id, quantity) values (5, 15, 9);
insert into order_details (menu_item_id, orders_id, quantity) values (4, 16, 10);
insert into order_details (menu_item_id, orders_id, quantity) values (3, 17, 8);
insert into order_details (menu_item_id, orders_id, quantity) values (2, 18, 6);
insert into order_details (menu_item_id, orders_id, quantity) values (1, 19, 5);
insert into order_details (menu_item_id, orders_id, quantity) values (2, 20, 3);
insert into order_details (menu_item_id, orders_id, quantity) values (3, 21, 8);
insert into order_details (menu_item_id, orders_id, quantity) values (4, 22, 10);
insert into order_details (menu_item_id, orders_id, quantity) values (5, 23, 9);
insert into order_details (menu_item_id, orders_id, quantity) values (6, 24, 6);
insert into order_details (menu_item_id, orders_id, quantity) values (7, 25, 3);
insert into order_details (menu_item_id, orders_id, quantity) values (8, 26, 8);
insert into order_details (menu_item_id, orders_id, quantity) values (9, 27, 9);
insert into order_details (menu_item_id, orders_id, quantity) values (10, 28, 10);
insert into order_details (menu_item_id, orders_id, quantity) values (1, 29, 3);
insert into order_details (menu_item_id, orders_id, quantity) values (2, 30, 5);;
  
/*Create Status table and insert records*/
create table status (status_id number primary key, status_name varchar2(50) not null, orders_id number, foreign key(orders_id) references orders(orders_id));
insert into status (status_id, status_name, orders_id) values (1, 'Order Received', 1);
insert into status (status_id, status_name, orders_id) values (2, 'Food Prepared', 2);
insert into status (status_id, status_name, orders_id) values (3, 'Food En Route', 3);
insert into status (status_id, status_name, orders_id) values (4, 'Food Delivered', 4);
insert into status (status_id, status_name, orders_id) values (5, 'Order Received', 5);
insert into status (status_id, status_name, orders_id) values (6, 'Food Prepared', 6);
insert into status (status_id, status_name, orders_id) values (7, 'Order Received', 7);
insert into status (status_id, status_name, orders_id) values (8, 'Food Prepared', 8);
insert into status (status_id, status_name, orders_id) values (9, 'Order Received', 9);
insert into status (status_id, status_name, orders_id) values (10, 'Food En Route', 10);
insert into status (status_id, status_name, orders_id) values (11, 'Food Delivered', 11);
insert into status (status_id, status_name, orders_id) values (12, 'Order Received', 12);
insert into status (status_id, status_name, orders_id) values (13, 'Order Received', 13);
insert into status (status_id, status_name, orders_id) values (14, 'Food En Route', 14);
insert into status (status_id, status_name, orders_id) values (15, 'Order Received', 15);
insert into status (status_id, status_name, orders_id) values (16, 'Food Prepared', 16);
insert into status (status_id, status_name, orders_id) values (17, 'Food En Route', 17);
insert into status (status_id, status_name, orders_id) values (18, 'Food Delivered', 18);
insert into status (status_id, status_name, orders_id) values (19, 'Order Received', 19);
insert into status (status_id, status_name, orders_id) values (20, 'Food Prepared', 20);
insert into status (status_id, status_name, orders_id) values (21, 'Food En Route', 21);
insert into status (status_id, status_name, orders_id) values (22, 'Food Delivered', 22);
insert into status (status_id, status_name, orders_id) values (23, 'Order Received', 23);
insert into status (status_id, status_name, orders_id) values (24, 'Food Prepared', 24);
insert into status (status_id, status_name, orders_id) values (25, 'Food En Route', 25);
insert into status (status_id, status_name, orders_id) values (26, 'Food Delivered', 26);
insert into status (status_id, status_name, orders_id) values (27, 'Order Received', 27);
insert into status (status_id, status_name, orders_id) values (28, 'Food Prepared', 28);
insert into status (status_id, status_name, orders_id) values (29, 'Food En Route', 29);
insert into status (status_id, status_name, orders_id) values (30, 'Food Delivered', 30);

/*Create Seat table and insert records*/
create table seat (seat_id number primary key, seat_number varchar2(50) not null, customer_id number, foreign key(customer_id) references customer(customer_id));
insert into seat (seat_id, seat_number, customer_id) values (1, '12C', 1);
insert into seat (seat_id, seat_number, customer_id) values (2, '178B', 2);
insert into seat (seat_id, seat_number, customer_id) values (3, '144FF', 3);
insert into seat (seat_id, seat_number, customer_id) values (4, '204DD', 4);
insert into seat (seat_id, seat_number, customer_id) values (5, '356AA', 5);
insert into seat (seat_id, seat_number, customer_id) values (6, '10A', 6);
insert into seat (seat_id, seat_number, customer_id) values (7, '232B', 7);
insert into seat (seat_id, seat_number, customer_id) values (8, '166EE', 8);
insert into seat (seat_id, seat_number, customer_id) values (9, '134AC', 9);
insert into seat (seat_id, seat_number, customer_id) values (10, '364CA', 10);
insert into seat (seat_id, seat_number, customer_id) values (11, '212BD', 11);
insert into seat (seat_id, seat_number, customer_id) values (12, '123AC', 12);
insert into seat (seat_id, seat_number, customer_id) values (13, '342DA', 13);
insert into seat (seat_id, seat_number, customer_id) values (14, '400DD', 14);
insert into seat (seat_id, seat_number, customer_id) values (15, '200FC', 15);
insert into seat (seat_id, seat_number, customer_id) values (16, '412FF', 16);
insert into seat (seat_id, seat_number, customer_id) values (17, '100BC', 17);
insert into seat (seat_id, seat_number, customer_id) values (18, '378DD', 18);
insert into seat (seat_id, seat_number, customer_id) values (19, '450FA', 19);
insert into seat (seat_id, seat_number, customer_id) values (20, '329BE', 20);
insert into seat (seat_id, seat_number, customer_id) values (21, '119AC', 21);
insert into seat (seat_id, seat_number, customer_id) values (22, '432B', 22);
insert into seat (seat_id, seat_number, customer_id) values (23, '156E', 23);
insert into seat (seat_id, seat_number, customer_id) values (24, '142F', 24);
insert into seat (seat_id, seat_number, customer_id) values (25, '267A', 25);
insert into seat (seat_id, seat_number, customer_id) values (26, '498F', 26);
insert into seat (seat_id, seat_number, customer_id) values (27, '362AE', 27);
insert into seat (seat_id, seat_number, customer_id) values (28, '452AA', 28);
insert into seat (seat_id, seat_number, customer_id) values (29, '371BE', 29);
insert into seat (seat_id, seat_number, customer_id) values (30, '300BF', 30);

