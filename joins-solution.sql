--1. Get all customers and their addresses.
SELECT *
FROM "customers"
JOIN "addresses" 
ON "customers"."id" = "addresses"."customer_id";

--2. Get all orders and their line items (orders, quantity and product).
SELECT *
FROM "orders"
JOIN "line_items"
ON "orders"."id" = "line_items"."order_id";

--3. Which warehouses have cheetos?
SELECT "warehouse"."warehouse"
FROM "products"
JOIN "warehouse_product"
ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse"
ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "warehouse_product"."product_id" = 5;
delta
--4. Which warehouses have diet pepsi?
SELECT "warehouse"."warehouse"
FROM "products"
JOIN "warehouse_product"
ON "products"."id" = "warehouse_product"."product_id"
JOIN "warehouse"
ON "warehouse"."id" = "warehouse_product"."warehouse_id"
WHERE "warehouse_product"."product_id" = 6;
alpha, delta, gamma

--5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT *--"customers"."last_name", count("orders".),
FROM "customers"
JOIN "addresses" 
ON "customers"."id" = "addresses"."customer_id"
JOIN "orders"
ON "addresses"."id"="orders"."address_id";

--6. How many customers do we have?
SELECT count(*) FROM "customers"; 
4

--7. How many products do we carry?
SELECT count(*) FROM "products"; 
7

--8. What is the total available on-hand quantity of diet pepsi?

--s9. How much was the total cost for each order?

--s10. How much has each customer spent in total?

--s11. How much has each customer spent in total? Customers who have spent $0 should still show up in the table. It should say 0, not NULL (research coalesce).
