/*создание таблицы orders*/
DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
   Row_ID        INTEGER  NOT NULL PRIMARY KEY 
  ,Order_ID      VARCHAR(14) NOT NULL
  ,Order_Date    DATE  NOT NULL
  ,Ship_Date     DATE  NOT NULL
  ,Ship_Mode     VARCHAR(14) NOT NULL
  ,Customer_ID   VARCHAR(8) NOT NULL
  ,Customer_Name VARCHAR(22) NOT NULL
  ,Segment       VARCHAR(11) NOT NULL
  ,Country       VARCHAR(13) NOT NULL
  ,City          VARCHAR(17) NOT NULL
  ,State         VARCHAR(20) NOT NULL
  ,Postal_Code   VARCHAR(50) --varchar because can start from 0
  ,Region        VARCHAR(7) NOT NULL
  ,Product_ID    VARCHAR(15) NOT NULL
  ,Category      VARCHAR(15) NOT NULL
  ,SubCategory   VARCHAR(11) NOT NULL
  ,Product_Name  VARCHAR(127) NOT NULL
  ,Sales         NUMERIC(9,4) NOT NULL
  ,Quantity      INTEGER  NOT NULL
  ,Discount      NUMERIC(4,2) NOT NULL
  ,Profit        NUMERIC(21,16) NOT NULL
);

--создание таблицы people
DROP TABLE IF EXISTS stg.people;
CREATE TABLE stg.people (
      Person VARCHAR(20),
      Region VARCHAR(10));
INSERT INTO stg.people (Person, Region) 
VALUES 
 ('Anna Andreadi','West'), 
 ('Chuck Magee','East'), 
 ('Kelly Williams','Central'), 
 ('Cassandra Brandow','South');
 
--создание таблицы return
CREATE TABLE stg."return" (
	returned varchar(14) NULL,
	order_id varchar(14) NULL
);
