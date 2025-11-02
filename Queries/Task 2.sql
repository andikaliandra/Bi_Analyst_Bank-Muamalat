-- ✅ Cek relationship antara Customers → Orders
SELECT 
  COUNT(*) AS total_orders,
  COUNT(DISTINCT o.CustomerID) AS unique_customer_in_orders,
  COUNT(DISTINCT c.CustomerID) AS total_customers,
  COUNT(DISTINCT o.CustomerID) / COUNT(DISTINCT c.CustomerID) AS ratio
FROM `bank-muamalat-bi-analytics.Salesdata.Orders` AS o
LEFT JOIN `bank-muamalat-bi-analytics.Salesdata.Customers` AS c
ON o.CustomerID = c.CustomerID;
-- ✅ Cek relationship antara Products → Orders
SELECT 
  COUNT(*) AS total_orders,
  COUNT(DISTINCT o.ProdNumber) AS unique_prod_in_orders,
  COUNT(DISTINCT p.ProdNumber) AS total_products,
  COUNT(DISTINCT o.ProdNumber) / COUNT(DISTINCT p.ProdNumber) AS ratio
FROM `bank-muamalat-bi-analytics.Salesdata.Orders` AS o
LEFT JOIN `bank-muamalat-bi-analytics.Salesdata.Products` AS p
ON o.ProdNumber = p.ProdNumber;
-- ✅Cek relationship antara ProductCategory → Products
SELECT 
  COUNT(DISTINCT p.Category) AS unique_category_in_products,
  COUNT(DISTINCT pc.CategoryID) AS total_category,
  COUNT(DISTINCT p.Category) / COUNT(DISTINCT pc.CategoryID) AS ratio
FROM `bank-muamalat-bi-analytics.Salesdata.Products` AS p
LEFT JOIN `bank-muamalat-bi-analytics.Salesdata.ProductCategory` AS pc
ON p.Category = pc.CategoryID;