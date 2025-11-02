SELECT
  o.Date AS order_date,
  pc.CategoryName AS category_name,
  p.ProdName AS product_name,
  p.Price AS product_price,
  o.Quantity AS order_qty,
  (o.Quantity * p.Price) AS total_sales,
  c.CustomerEmail AS cust_email,
  c.CustomerCity AS cust_city
FROM `bank-muamalat-bi-analytics.Salesdata.Orders` AS o
JOIN `bank-muamalat-bi-analytics.Salesdata.Customers` AS c
  ON o.CustomerID = c.CustomerID
JOIN `bank-muamalat-bi-analytics.Salesdata.Products` AS p
  ON o.ProdNumber = p.ProdNumber
JOIN `bank-muamalat-bi-analytics.Salesdata.ProductCategory` AS pc
  ON p.Category = pc.CategoryID
ORDER BY o.Date ASC;
