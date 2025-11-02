-- ✅ CEK PRIMARY KEY UNTUK TABEL CUSTOMERS
SELECT 
  COUNT(DISTINCT CustomerID) AS unique_count,
  COUNT(*) AS total_count
FROM `bank-muamalat-bi-analytics.Salesdata.Customers`;
-- ✅ CEK PRIMARY KEY UNTUK TABEL PRODUCTS
SELECT 
  COUNT(DISTINCT ProdNumber) AS unique_count,
  COUNT(*) AS total_count
FROM `bank-muamalat-bi-analytics.Salesdata.Products`;
-- ✅ CEK PRIMARY KEY UNTUK TABEL ORDERS
SELECT 
  COUNT(DISTINCT OrderID) AS unique_count,
  COUNT(*) AS total_count
FROM `bank-muamalat-bi-analytics.Salesdata.Orders`;
-- ✅ CEK PRIMARY KEY UNTUK TABEL PRODUCTCATEGORY
SELECT 
  COUNT(DISTINCT CategoryID) AS unique_count,
  COUNT(*) AS total_count
FROM `bank-muamalat-bi-analytics.Salesdata.ProductCategory`;