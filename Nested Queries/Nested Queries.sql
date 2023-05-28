/*1.Write a query that returns firstname and lastname of those employees 
who work in the offices located in the USA ,San Francisco */
select firstName,lastName from employees
where officeCode in (select officeCode from offices where country='USA' and city='SanFrancisco' );


/*
2.Write a query that returns the customer Name who has the pay more than 1000 and less 5000 payment
*/
select customerName from customers
where customerNumber in (select customerNumber from payments where amount>=1000 and amount<5000);


/*
3. Write a query to find customers Name and phone number who order year is 2003 and shipped date is also 2003.
*/
select customerName,phone from customers
where customerNumber in (select customerNumber from orders where year(orderDate)='2003');


/*
4.Write a query to find the customers who have on hold status of orders
*/
select * from customers
where customerNumber in (select customerNumber from orders where status='on Hold');


/*
5.write a query to display product code and name whose order quantity is greater than 30 and less than 50.
*/
select productCode,productName from products 
where productCode in (select productCode from orderdetails where quantityOrdered>=30 and quantityOrdered<=50);

/*
6.Write a query to display customers name whose order status is Cancelled
*/
select customerName from customers
where customerNumber in (select customerNumber from orders where status='cancelled');

/*
7.Write a query that display order number of those orders whose total amount are greater than 6K.
*/
select orderNumber from orders
where customerNumber in (select customerNumber from payments where amount >6000);