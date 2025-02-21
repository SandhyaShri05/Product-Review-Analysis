create database  sqlproject
use sqlproject
create table customer(cust_id int primary key,cust_name varchar(30),cust_email varchar(225))
create table product(pro_id int primary key,pro_name varchar(30),pro_description varchar(225),category_id int,price int, foreign key(category_id) references categoriess(category_id))
create table reviews(review_id int primary key,review_text varchar(225),pro_id int, foreign key(pro_id) references product(pro_id),cust_id int,foreign key(cust_id) references customer(cust_id))
create table ratings(cust_id int, foreign key (cust_id) references customer(cust_id),pro_id int, foreign key (pro_id) references product(pro_id),ratings int)
create table feedback_products(cust_id int, foreign key (cust_id) references customer(cust_id),review_id int ,foreign key (review_id) references reviews(review_id),feedback_text varchar(225),feedback_date date)
create table categoriess(category_id int primary key,category_name varchar(226),category_description varchar(225))
insert into customer values(1,"Alice","alice@gmail.com"),(2,"Bob","bob@gmail.com"),(3,"Charlie","charlie@gmail.com"),(4,"David","david@gmail.com"),(5,"Emma","emma@gmail.com"),(6,"Fiona","fiona@gmail.com"),(7,"George","george@gmail.com"),(8,"Hannah","hannah@gmail.com"),(9,"Ian","ian@gmail.com"),(10,"Julia","julia@gmail.com"),(11,"Kevin","kevin@gmail.com"),(12,"Laura","laura@gmail.com"),(13,"Mike","mike@gmail.com"),(14,"Nora","nora@gmail.com"),(15,"Oliver","oliver@gmail.com"),(16,"Pam","pam@gmail.com"),(17,"Quinn","quinn@gmail.com"),(18,"Rachel","rachel@gmail.com"),(19,"Sam","sam@gmail.com"),(20,"Tom","tom@gmail.com"),(21,"Ursula","ursula@gmail.com"),(22,"Wendy","wendy@gmail.com"),(24,"Xavier","xavier@gmail.com"),(25,"Yara","yara@gmail.com"),(26,"Zoe","zoe@gmail.com"),(27,"Adam","adam@gmail.com"),(28,"Brian","brian@gmail.com"),(29,"Carla","carla@gmail.com"),(30,"Daniel","daniel@gmail.com")	
select * from customer
insert into categoriess values(1,"Electronics","Electronic devices and gadgets"),(2,"Wearable Tech","Smartwatches and fitness bands"),(3,"Home Appliances","Kitchen and household items"),(4,"Personal Care","Items for personal grooming"),(5,"Office Supplies","Furniture and work essentials"),(6,"Kitchen Appliances","Appliances for cooking and food prep"),(7,"Sports & Outdoors","Equipment for exercise and outdoor use"),(8,"Lighting & Decor","Home lighting and decoration")
select * from categoriess
insert into product values(201,"Wireless Headphones","Bluetooth headphones",1,99.99),(202,"Smartwatch","Fitness tracking smartwatch",2,199.99),(203,"Coffee Maker","Programmable coffee machine",3,49.99),(204,"Electric Toothbrush","Sonic electric toothbrush",4,79.99),(205,"Laptop Stand","Adjustable laptop stand",5,29.99),(206,"Blender","High-speed countertop blender",6,149.99),(207,"Yoga Mat","Non-slip yoga mat",7,25.99),(208,"LED Desk","Lamp Adjustable LED desk lamp",8,34.99),(209,"Wireless Charger","Fast wireless phone charger",1,19.99),(210,"Smart Thermostat","Wi-Fi connected thermostat",2,299.99),(211,"Massage Gun","Portable massager",3,99.9),(212,"Air Fryer","Digital air fryer",4,129.99),(213,"Hair Dryer","Professional hair dryer",5,59.99),(214,"Electric Kettle","Stainless steel kettle",6,39.99),(215,"Smart TV","55-inch 4K UHD Smart TV",7,499.99),(216,"Portable Speaker","Bluetooth portable speaker",8,59.99),(217,"Gaming Mouse","High-DPI gaming mouse",1,59.99),(218,"Power Bank","10000mAh portable power bank",2,24.99),(219,"Smart Doorbell","Wi-Fi doorbell with camera",3,199.99),(220,"Waterproof Backpack","Durable waterproof backpack",4,89.99)
select * from product
insert into reviews values(1001,"Excellent sound quality and comfort!",201,1),(1002,"Good features, but a bit expensive.",202,2),(1003,"Works well, easy to use.",203,3),(1004,"Very effective, worth the price.",204,4),(1005,"Sturdy and adjustable. Great buy!",205,5),(1006,"Blends perfectly, easy to clean.",206,6),(1007,"Non-slip surface is great for workouts.",207,7),(1008,"Very bright and adjustable. Love it!",208,8),(1009,"Quick charge, very convenient.",209,9),(1010,"Expensive but very efficient.",210,10),(1011,"Compact and powerful. Highly recommend!",211,11),(1012,"Great for quick meals, easy to use.",212,12),(1013,"Good quality, dries hair fast.",213,13),(1014,"Nice design and works well.",214,14),(1015,"Amazing picture quality, a bit pricey.",215,15),(1016,"Portable and reliable for travel.",216,16),(1017,"Great for gaming, very responsive.",217,17),(1018,"Charges my devices quickly and efficiently.",218,18),(1019,"Very convenient, clear camera quality.",219,19),(1020,"Keeps my belongings dry, very spacious.",220,20)
select * from reviews
insert into ratings values(1,201,5),(2,202,5),(3,203,4),(4,204,5),(5,205,5),(6,206,5),(7,207,5),(8,208,4),(9,209,4),(10,210,5),(11,211,5),(12,212,4),(13,213,4),(14,214,4),(15,215,5),(16,216,5),(17,217,5),(18,218,4),(19,219,4),(20,220,5)
select * from ratings
insert into feedback_products values(2,1001,"I agree, the sound quality is amazing!","2023-05-06"),(3,1002,"Could you share more about battery life?","2024-07-08"),(4,1003,"Does it come with a warranty?","2023-01-02"),(5,1004,"Best toothbrush I've used so far.","2023-02-04"),(6,1005,"Is it easy to assemble?","2023-07-09"),(7,1006,"Works great for smoothies!","2024-09-11"),(8,1007,"The mat is very comfortable.","2023-08-03"),(9,1008,"I use it all the time for studying.","2024-06-10"),(10,1009,"Charges my phone very quickly.","2024-07-03"),(11,1010,"The installation was very simple.","2023-11-12")
select * from feedback_products

-------- Scenario 1:Rename the price column and change the datatype -------------

alter table product change price Prices decimal(10,2)

-------- scenario 2:To retrieve all the details of the customers whose cust_id is either 1, 4, or 10.-----------

select * from customer where cust_id in (1,4,10)

--------- scenario 3: To retrieve all the records from the ratings table where the rating value is equal to 5.--------

select * from ratings where ratings = 5

---------scenario 4: To retrieve the first 10 records from the customer table.------

select * from customer limit 10

----------scenario 5:To retrieve all records from the customer table where the cust_name starts with the letter "A".-----------

select * from customer where cust_name like "A%"

----------scenario 6:To calculate the total price (Prices) of all products for each category.---------

select sum(Prices) as total,category_id from product group by category_id

--------scenario 7:To calculate the average price (Prices) of all products for each category in ascending order based on the average price.--------

select avg(Prices) as average,category_id from product group by category_id  order by average asc

---------scenario 8:To find the maximum price (Prices) of products for each category with the corresponding category_id  where the maximum price is greater than or equal to 100.------

select max(Prices) as maximum,category_id from product group by category_id having maximum >=100

--------scenario 9:To retrieve all records from the ratings table where the ratings value is 5 and the cust_id is greater than or equal to 15.----------

select * from ratings where ratings = 5 and cust_id >= 15

--------scenario 10:To retrieve all records from the product table where the Prices is greater than 100 or the pro_id is greater than 110.----------

select * from product where Prices > 100 or pro_id > 110

---------scenario 11:To retrieve the distinct customer IDs  customer names and customer emails from the customer table where the customer's name starts with a vowel -------

select distinct cust_id,cust_name,cust_email from customer where cust_name REGEXP '^[aeiouAEIOU]';

---------scenario 12:To retrieve the review_id, review_text, and ratings for each customer by combining information from both the reviews and ratings tables based on the matching cust_id.--------

select a.review_id,a.review_text,b.ratings
from reviews as a
inner join ratings as b on a.cust_id = b.cust_id

---------scenario 13:to retrieve the pro_id, pro_name, pro_description, and category_id for each product. The query should include all products, even if they do not belong to any category. If a product does not have a matching category, the category_id should be shown as NULL.----------

select a.pro_id,a.pro_name,a.pro_description,b.category_id
from product as a
left join categoriess as b on a.category_id = b.category_id

---------scenario 14:To create a view named viewratings that filters and stores all records from the ratings table where the rating is equal to 5.-------

create view viewratings as select * from ratings where ratings = 5
select * from viewratings

-------scenario 15:To create a view named viewreviews that contains all records from the reviews table where the pro_id is equal to 201.---------

create view viewreviews as select * from reviews where pro_id = 201
update viewreviews set review_text ="Good quality and sound" where pro_id=201
select * from viewreviews

-------scenario 16:filtering feedback_products based on null and not nul lcust_id-----------

select * from  feedback_products where cust_id is null
select * from feedback_products where cust_id is not null

-------------scenario 17:Categorizing product based on Prices into qualityofprice------------

SELECT 
    pro_id,
    pro_name,
    pro_description,
    CASE 
        WHEN Prices > 100 THEN 'above'
        WHEN Prices < 100 THEN 'below'
        ELSE 'less than'
    END AS qualityofprices
FROM product;

-------scenario 18:Categoriess from product with prices greater than 100.-------

select * from categoriess where category_id	IN (select category_id from product where Prices > 100)

------scenario 19:Reviews for products from ratings where ratings is greater than 4.----------

select * from reviews where pro_id = any (select pro_id from ratings where ratings > 4)

---------scenario 20:Stored procedure to retrive products based on Price and category_id.------

DELIMITER //

CREATE PROCEDURE Analyst12(
    IN in_price DECIMAL(10,2),
    IN in_category_id INT
)
BEGIN
    SELECT * FROM product
    WHERE Prices = in_price AND category_id = in_category_id;
END //

DELIMITER ;
call Analyst12(26,7)
drop procedure Analyst12

-----------scenario21:Stored Procedure to retrive product name based on product id.-------

DELIMITER //

CREATE PROCEDURE offi245(
    IN in_pro_id int,
    OUT in_pro_name varchar(30)
)
BEGIN
    SELECT pro_name into in_pro_name FROM product
    WHERE pro_id = in_pro_id 
    limit 5;
END //

DELIMITER ;
call offi245(101,@_pro_name);
select @_pro_name;