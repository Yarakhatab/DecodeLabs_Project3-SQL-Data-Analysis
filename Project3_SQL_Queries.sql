USE DecodeLabs_Project3;
 --Select--

 select * from orders;

 select OrderID , Product , TotalPrice from orders;

 --Where--
 select * from orders where OrderStatus='shipped';

 select * from orders where TotalPrice between 1000 and 1500;

 select * from orders where Product ='Laptop' and OrderStatus ='Delivered';

 --Order by--
 select OrderID , PRODUCT , totalprice from orders
 order by Totalprice Desc;

 select OrderID , PRODUCT , totalprice from orders
 order by product ASC;


 --GROUP BY + COUNT + SUM + AVG--

 select PRODUCT , count(*) as TotalOrders from orders
 Group by product 
 order by TotalOrders Desc

 select product , sum (totalprice) as TotalRevenue from orders
 group by product 
 order by TotalRevenue

 select PaymentMethod ,AVG(totalprice) as AVG_Order_Value from orders
 group by PaymentMethod
 order by AVG_Order_Value

 --HAVING--

 select product , count(*) as Total_Orders from orders
 group by product 
 having count(*) >50


