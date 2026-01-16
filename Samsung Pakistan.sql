create database Samsung_Pakistan

use Samsung_Pakistan

CREATE TABLE Stores (
    StoreID INT PRIMARY KEY,
    StoreName VARCHAR(100),
    City VARCHAR(50),
    StoreType VARCHAR(50)  -- Experience Store / Distributor / Online
);

INSERT INTO Stores VALUES
(1,'Samsung Experience Karachi DHA','Karachi','Experience Store'),
(2,'Samsung Experience Karachi Saddar','Karachi','Experience Store'),
(3,'Samsung Lahore Gulberg','Lahore','Experience Store'),
(4,'Samsung Lahore Johar Town','Lahore','Experience Store'),
(5,'Samsung Islamabad Blue Area','Islamabad','Experience Store'),
(6,'Samsung Rawalpindi','Rawalpindi','Distributor'),
(7,'Samsung Faisalabad','Faisalabad','Distributor'),
(8,'Samsung Multan','Multan','Distributor'),
(9,'Samsung Peshawar','Peshawar','Distributor'),
(10,'Samsung Quetta','Quetta','Distributor'),
(11,'Samsung Online Daraz','Online','Online'),
(12,'Samsung Online PriceOye','Online','Online'),
(13,'Samsung Hyderabad','Hyderabad','Distributor'),
(14,'Samsung Sialkot','Sialkot','Distributor'),
(15,'Samsung Gujranwala','Gujranwala','Distributor'),
(16,'Samsung Bahawalpur','Bahawalpur','Distributor'),
(17,'Samsung Sahiwal','Sahiwal','Distributor'),
(18,'Samsung Abbottabad','Abbottabad','Distributor'),
(19,'Samsung Mardan','Mardan','Distributor'),
(20,'Samsung Skardu','Skardu','Distributor');


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),   -- Mobile / TV / AC / Fridge
    CostPrice DECIMAL(10,2),
    MSRP DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1,'Galaxy S23','Mobile',180000,220000),
(2,'Galaxy S23 Ultra','Mobile',230000,300000),
(3,'Galaxy A54','Mobile',85000,110000),
(4,'Galaxy A34','Mobile',65000,85000),
(5,'Galaxy Z Fold','Mobile',320000,400000),
(6,'Samsung 55 LED','TV',140000,180000),
(7,'Samsung 65 QLED','TV',220000,280000),
(8,'Samsung 43 LED','TV',90000,120000),
(9,'Samsung Split AC 1.5T','AC',160000,200000),
(10,'Samsung Inverter AC','AC',190000,240000),
(11,'Samsung Double Door Fridge','Fridge',130000,170000),
(12,'Samsung Washing Machine','Washer',95000,130000),
(13,'Galaxy Buds','Accessories',18000,25000),
(14,'Samsung Sound Bar','Accessories',35000,50000),
(15,'Samsung Microwave','Appliances',55000,75000),
(16,'Samsung Oven','Appliances',65000,90000),
(17,'Galaxy A14','Mobile',45000,60000),
(18,'Galaxy A04','Mobile',32000,45000),
(19,'Samsung Tablet S8','Tablet',135000,180000),
(20,'Samsung Smart Watch','Wearables',65000,95000);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Gender VARCHAR(10),
    City VARCHAR(50),
    LoyaltyMember VARCHAR(10)  -- Yes / No
);

INSERT INTO Customers VALUES
(1,'Male','Karachi','Yes'),
(2,'Female','Lahore','No'),
(3,'Male','Islamabad','Yes'),
(4,'Female','Rawalpindi','No'),
(5,'Male','Faisalabad','No'),
(6,'Female','Multan','Yes'),
(7,'Male','Peshawar','No'),
(8,'Female','Quetta','No'),
(9,'Male','Hyderabad','Yes'),
(10,'Female','Gujranwala','No'),
(11,'Male','Sialkot','Yes'),
(12,'Female','Bahawalpur','No'),
(13,'Male','Sahiwal','No'),
(14,'Female','Abbottabad','Yes'),
(15,'Male','Mardan','No'),
(16,'Female','Skardu','Yes'),
(17,'Male','Karachi','No'),
(18,'Female','Lahore','Yes'),
(19,'Male','Islamabad','No'),
(20,'Female','Rawalpindi','Yes');


CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    StoreID INT,
    ProductID INT,
    CustomerID INT,
    SaleDate DATE,
    Quantity INT,
    Discount DECIMAL(10,2),
    NetSales DECIMAL(12,2),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Sales VALUES
(1,1,1,1,'2024-01-05',1,5000,215000),
(2,2,3,2,'2024-01-10',2,3000,207000),
(3,3,6,3,'2024-02-02',1,7000,173000),
(4,4,9,4,'2024-02-08',1,10000,190000),
(5,5,11,5,'2024-02-15',1,8000,162000),
(6,6,4,6,'2024-03-01',2,4000,166000),
(7,7,7,7,'2024-03-05',1,12000,268000),
(8,8,10,8,'2024-03-12',1,9000,231000),
(9,9,13,9,'2024-03-18',3,1500,73500),
(10,10,14,10,'2024-04-02',1,5000,45000),
(11,11,2,11,'2024-04-10',1,10000,290000),
(12,12,5,12,'2024-04-15',1,15000,385000),
(13,13,8,13,'2024-05-01',1,6000,114000),
(14,14,12,14,'2024-05-05',1,5000,125000),
(15,15,15,15,'2024-05-12',1,4000,71000),
(16,16,16,16,'2024-06-01',1,6000,84000),
(17,17,17,17,'2024-06-07',1,3000,57000),
(18,18,18,18,'2024-06-10',1,2000,43000),
(19,19,19,19,'2024-06-15',1,9000,171000),
(20,20,20,20,'2024-06-18',1,8000,87000);


CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY,
    SaleID INT,
    ReturnDate DATE,
    ReturnReason VARCHAR(100),
    FOREIGN KEY (SaleID) REFERENCES Sales(SaleID)
);

INSERT INTO Returns VALUES
(1,2,'2024-01-15','Defective'),
(2,4,'2024-02-12','Buyer Remorse'),
(3,6,'2024-03-05','Defective'),
(4,7,'2024-03-10','Late Delivery'),
(5,8,'2024-03-18','Defective'),
(6,9,'2024-03-25','Buyer Remorse'),
(7,10,'2024-04-05','Wrong Item'),
(8,11,'2024-04-12','Defective'),
(9,12,'2024-04-20','Buyer Remorse'),
(10,13,'2024-05-05','Defective'),
(11,14,'2024-05-10','Late Delivery'),
(12,15,'2024-05-15','Buyer Remorse'),
(13,16,'2024-06-05','Defective'),
(14,17,'2024-06-10','Buyer Remorse'),
(15,18,'2024-06-15','Wrong Item'),
(16,19,'2024-06-20','Defective'),
(17,20,'2024-06-25','Buyer Remorse'),
(18,1,'2024-01-08','Defective'),
(19,3,'2024-02-05','Late Delivery'),
(20,5,'2024-02-18','Buyer Remorse');

CREATE TABLE Sales_Targets (
    TargetID INT PRIMARY KEY,
    StoreID INT,
    TargetMonth DATE,
    TargetAmount DECIMAL(12,2),
    FOREIGN KEY (StoreID) REFERENCES Stores(StoreID)
);

INSERT INTO Sales_Targets VALUES
(1,1,'2024-01-01',300000),
(2,2,'2024-01-01',250000),
(3,3,'2024-02-01',400000),
(4,4,'2024-02-01',350000),
(5,5,'2024-02-01',300000),
(6,6,'2024-03-01',280000),
(7,7,'2024-03-01',260000),
(8,8,'2024-03-01',240000),
(9,9,'2024-03-01',200000),
(10,10,'2024-04-01',180000),
(11,11,'2024-04-01',500000),
(12,12,'2024-04-01',450000),
(13,13,'2024-05-01',220000),
(14,14,'2024-05-01',210000),
(15,15,'2024-05-01',200000),
(16,16,'2024-06-01',190000),
(17,17,'2024-06-01',180000),
(18,18,'2024-06-01',170000),
(19,19,'2024-06-01',160000),
(20,20,'2024-06-01',150000);


CREATE TABLE Promotions (
    PromotionID INT PRIMARY KEY,
    ProductID INT,
    PromotionType VARCHAR(50),   -- Eid Sale / New Launch / Clearance
    DiscountPercent DECIMAL(5,2),
    StartDate DATE,
    EndDate DATE,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Promotions VALUES
(1,1,'New Launch',5,'2024-01-01','2024-01-31'),
(2,2,'New Launch',7,'2024-01-01','2024-01-31'),
(3,3,'Eid Sale',10,'2024-03-15','2024-04-15'),
(4,4,'Eid Sale',12,'2024-03-15','2024-04-15'),
(5,5,'Clearance',15,'2024-04-01','2024-04-30'),
(6,6,'Summer Sale',8,'2024-05-01','2024-05-31'),
(7,7,'Summer Sale',10,'2024-05-01','2024-05-31'),
(8,8,'Clearance',12,'2024-06-01','2024-06-30'),
(9,9,'Summer Sale',7,'2024-06-01','2024-06-30'),
(10,10,'Summer Sale',9,'2024-06-01','2024-06-30'),
(11,11,'Eid Sale',10,'2024-03-15','2024-04-15'),
(12,12,'Eid Sale',12,'2024-03-15','2024-04-15'),
(13,13,'Accessory Promo',5,'2024-02-01','2024-02-28'),
(14,14,'Accessory Promo',6,'2024-02-01','2024-02-28'),
(15,15,'Clearance',10,'2024-05-01','2024-05-31'),
(16,16,'Clearance',12,'2024-05-01','2024-05-31'),
(17,17,'Student Offer',8,'2024-01-01','2024-01-31'),
(18,18,'Student Offer',7,'2024-01-01','2024-01-31'),
(19,19,'Bundle Deal',9,'2024-04-01','2024-04-30'),
(20,20,'Bundle Deal',10,'2024-04-01','2024-04-30');

---------------------------------------------------------------------

-- 1. Which cities generate the highest total sales revenue?

SELECT 
    st.City,
    SUM(s.NetSales) AS TotalRevenue
FROM Sales s
JOIN Stores st ON s.StoreID = st.StoreID
GROUP BY st.City
ORDER BY TotalRevenue DESC;

-- 2. Which products are the top 5 revenue generators?

SELECT TOP 5
    p.ProductName,
    SUM(s.NetSales) AS Revenue
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC;

-- 3. Which stores failed to meet their sales targets?

WITH StoreSales AS (
    SELECT 
        StoreID,
        SUM(NetSales) AS ActualSales
    FROM Sales
    GROUP BY StoreID
)
SELECT 
    st.StoreName,
    ss.ActualSales,
    t.TargetAmount
FROM StoreSales ss
JOIN Sales_Targets t ON ss.StoreID = t.StoreID
JOIN Stores st ON ss.StoreID = st.StoreID
WHERE ss.ActualSales < t.TargetAmount;

-- 4. Who are the repeat customers (purchased more than once)?

SELECT *
FROM Customers
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales
    GROUP BY CustomerID
    HAVING COUNT(SaleID) > 1  
);

-- 5. What is the monthly sales trend?

SELECT 
    FORMAT(SaleDate,'yyyy-MM') AS SaleMonth,
    SUM(NetSales) AS MonthlyRevenue
FROM Sales
GROUP BY FORMAT(SaleDate,'yyyy-MM')
ORDER BY SaleMonth;

-- 6. Which stores have the highest return rate?

SELECT 
    st.StoreName,
    COUNT(r.ReturnID) AS TotalReturns
FROM Returns r
JOIN Sales s ON r.SaleID = s.SaleID
JOIN Stores st ON s.StoreID = st.StoreID
GROUP BY st.StoreName
ORDER BY TotalReturns DESC;

-- 7. Rank products by revenue within each category

SELECT 
    p.Category,
    p.ProductName,
    SUM(s.NetSales) AS Revenue,
    RANK() OVER (
        PARTITION BY p.Category 
        ORDER BY SUM(s.NetSales) DESC
    ) AS CategoryRank
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
GROUP BY p.Category, p.ProductName;

-- 8. What is the contribution % of each sales channel?

SELECT 
    st.StoreType,
    SUM(s.NetSales) AS Revenue,
    ROUND(
        100.0 * SUM(s.NetSales) / SUM(SUM(s.NetSales)) OVER (),
        2
    ) AS RevenuePercentage
FROM Sales s
JOIN Stores st ON s.StoreID = st.StoreID
GROUP BY st.StoreType;

-- 9. Did promotions increase sales volume?

SELECT 
    pr.PromotionType,
    COUNT(s.SaleID) AS TotalSales
FROM Promotions pr
JOIN Sales s 
    ON pr.ProductID = s.ProductID
    AND s.SaleDate BETWEEN pr.StartDate AND pr.EndDate
GROUP BY pr.PromotionType
ORDER BY TotalSales DESC;

-- 10. Cumulative sales growth over time

SELECT 
    SaleDate,
    SUM(NetSales) AS DailySales,
    SUM(SUM(NetSales)) OVER (ORDER BY SaleDate) AS CumulativeSales
FROM Sales
GROUP BY SaleDate
ORDER BY SaleDate;

--- Sare Stores ke naam aur unki cities list karein.

select StoreName , City
from Stores

-- SELECT * FROM CUSTOMERS WHERE City = 'Lahore';

select * from Customers
where City = 'Lahore' ; 

-- Samsung ke wo products dikhayein jinki MSRP (Price) 50,000 se zyada hai

select * from Products
where MSRP > 50000 ;

-- Total kitne unique customers Loyalty Members hain?

select count( distinct CustomerID ) as UniqueLoyalityMembers 
from Customers
where LoyaltyMember = 'Yes' ; 

-- 2024 mein hone wali tamam Sales ki list nikalen.

select * from Sales
where year(saledate) = '2024' ; 

-- Kaunsi product categories available hain? (Unique categories only)

select distinct ( Category) as UniqueCtegory
from Products

-- Top 5 highest priced products kaunse hain?

select top 5 ProductName , MSRP as HighestPricedProducts 
from Products
order by HighestPricedProducts  desc ; 

--Wo sales dikhayein jahan Discount 0 tha (No Discount Sales).

select * from Sales

select * from Sales
where Discount > 3000 ;  

-- ' Distributor ' store type ke tamam stores filter karein.

select * from Stores
where StoreType = 'Distributor' ; 

-- SaleID 1001 ki details aur Quantity check karein ? 

select SaleID , Quantity  
from Sales 
where SaleID = 11 ; 

-- Har Store se total kitni revenue (NetSales) generate hui?

select st.StoreName , sum(s.NetSales) as TotalNetSales 
from Stores st 
join Sales s on st.StoreID = s.SaleID 
group by st.StoreName

-- Product Category wise total quantity sold batayein.

select p.Category , SUM(s.quantity) as TotalQtySold 
from Products p 
join Sales s on p.ProductID = s.ProductID
group by p.Category

-- Har Customer ne total kitni purchases ki hain? (High value customers)

select top 5 c. CustomerID , sum(s.netsales) as TotalPurchase
from Customers c 
join Sales s on c.CustomerID = s.CustomerID
group by c.CustomerID
order by TotalPurchase desc 

-- Kis City mein sabse zyada sales (revenue) hui hai except online?

select top 1 st.City , sum(s.netsales) as Revenue 
from Stores st
join Sales s on st.StoreID = s.StoreID 
where city not in ('Online') 
group by st.City 
order by Revenue  desc ; 

-- Average selling price (NetSales) per sale kya hai?

select avg(netsales) as AverageSellingSales 
from sales	

-- Wo products jo kabhi sale nahi huye (Products with no sales).

select p.ProductName
from Products p 
left join Sales s on p.ProductID = s.ProductID 
where s.SaleID is not null ; 

-- Har Store ke liye Total Returns count karein.

select st.StoreName  , count(r.returnid) as TotalReturns 
from Stores st
join Sales s on st.StoreID = s.StoreID 
join Returns r on s.SaleID = r.SaleID 
group by st.StoreName ; 

-- Monthly Sales Trend (Year-Month wise revenue).

select FORMAT(saledate,'yyyy-mm') as YearMonth , 
sum(netsales) as MonthlySalesTrend 
from sales		
group by FORMAT(saledate,'yyyy-mm') 

-- Male vs Female customers ka contribution (Sales wise) kya hai? 

select c.Gender , sum(netsales) as SaleWiseContribution 
from Customers c
join sales s on c.CustomerID = s.CustomerID
group by c.Gender 

-- Kis Promotion Type ne sabse zyada products beche?

select p.PromotionType , count(s.saleid) as TotalSoldQty 
from Promotions p 
join Sales s on p.ProductID = s.ProductID 
group by p.PromotionType 

-- Sirf un Stores ki list dein jinhone 1 Million se zyada sale ki hai.

select st.StoreID  , sum(s.netsales) as TotalSales
from Stores st 
join Sales s on st.StoreID = s.StoreID 
group by st.StoreID
Having sum(s.netsales)  > 100000 ; 

-- Return Reason breakdown: Sabse common return reason kya hai?

select ReturnReason , count(*) as Frequency 
from Returns
group by ReturnReason 
order by Frequency  desc 

--Store Performance vs Target: Kis store ne apna target achieve kiya?

with TargetSales as ( 
select sum(s.NetSales) as ActualSales , st.TargetAmount ,ss.StoreName
from sales s
join Sales_Targets st on s.StoreID = st.StoreID
join Stores ss on s.StoreID = ss.StoreID 
group by st.TargetAmount ,ss.StoreName
) 

select StoreName ,  ActualSales , targetamount ,  
( ActualSales - TargetAmount ) as Variance 
from TargetSales 
where ActualSales >= TargetAmount

-- Kis Product Category ka Return Rate sabse high hai?

SELECT P.Category , (count(r.returnid) * 100.0  / count(s.SaleID))   ReturnRate 
FROM Products P 
JOIN Sales S on p.ProductID = p.ProductID
left join Returns r on s.SaleID = r.SaleID 
group by P.Category  

-- Wo Customers jo Loyalty Member hain lekin pichle 
-- 6 mahine se koi shopping nahi ki (Churn Risk).

select CustomerID 
from Customers 
where LoyaltyMember = 'yes' 
and CustomerID not in ( select CustomerID from Sales 
                        where SaleDate >= DATEADD(month,-6,getdate()) 
					  ) ; 

-- Average Discount har Product Category par kya diya ja raha hai? 

select p.category , AVG(s.discount) as Avg_Discount 
from Products p 
join Sales s on p.ProductID = s.ProductID 
group by p.Category

-- Kaunsa din (Weekday) sabse busy hota hai? 

select top 1 DATENAME(weekday,SaleDate) as SaleDay , 
count(*) as TotalSales 
from Sales 
group by DATENAME(weekday,SaleDate)
order by TotalSales desc 

-- Multi-product sales: Ek transaction mein kitni baar 1 se 
-- zyada quantity biki?

select count(*) as QtySales  
from Sales
where  Quantity > 1 

-- Profit Margin Analysis (Sales - Cost).

select p.CostPrice * S.Quantity AS Sales , 
sum(s.netsales - p.CostPrice * S.Quantity ) as ProfitMargin 
from Products p 
join sales s on p.ProductID = s.ProductID 
group by p.CostPrice , s.Quantity

-- Current Promotions jo abhi active hain.

select * from Promotions
where GETDATE() not between 2024-01-01 and 2024-04-30 ; 

-- Har Category mein Top 3 selling products nikalein (Ranking).

WITH RankedProducts AS (
select p.Category , P.ProductName , sum(s.NetSales) as Sales , 
rank () over ( partition by p.category order by sum(s.netsales ) desc ) as pricerank 
from Products p 
join Sales s on p.ProductID = s.ProductID 
group by p.Category , P.ProductName 
) 

select * from  RankedProducts
where pricerank <= 3 ; 

-- Month-over-Month (MoM) Sales Growth calculate karein.

WITH MoM_SALES AS ( 

select MONTH(saledate) as sale_month ,
sum(netsales) as Current_sales 
from Sales 
where year(saledate) = 2024 
group by MONTH(saledate) 
) 

select sale_month , Current_sales , 
lag(current_sales) over ( order by sale_month) as Prev_sales , 
Current_sales - lag(current_sales) over ( order by sale_month) as MomGrowth 
from MoM_SALES