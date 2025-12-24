
-- View Sample Data
SELECT * 
FROM products_clean
LIMIT 10;


/*Question 1: Which brands have the most products listed?*/
SELECT
    brandname,
    COUNT(*) AS product_count
FROM products_clean
GROUP BY brandname
ORDER BY product_count DESC
LIMIT 5;


/* Question 2: What is the average selling price for products in each category? */
SELECT
    category,
    ROUND(AVG(sellprice), 0) AS average_selling_price
FROM products_clean
WHERE sellprice IS NOT NULL
GROUP BY category
ORDER BY average_selling_price DESC;


/* Question 3: Which brands offer the highest average discount? */
SELECT
    brandname,
    ROUND(AVG(discount), 0) AS average_discount
FROM products_clean
WHERE discount IS NOT NULL
GROUP BY brandname
ORDER BY average_discount DESC
LIMIT 5;


/*  Question 4: Which categories are the most expensive on average (based on MRP)?*/
SELECT
    category,
    ROUND(AVG(mrp), 0) AS average_mrp
FROM products_clean
WHERE mrp IS NOT NULL
GROUP BY category
ORDER BY average_mrp DESC;


/* Question 5: Which brands offer the highest average  number of sizes per product? */
SELECT
    brandname,
    ROUND(AVG(size_count), 0) AS average_size_count
FROM products_clean
WHERE size_count IS NOT NULL
GROUP BY brandname
ORDER BY average_size_count DESC
LIMIT 5;


/* Question 6: Which brands are premium brands and which are budget brands? */
SELECT
    brandname,
    ROUND(AVG(sellprice), 0) AS average_sell_price
FROM products_clean
WHERE sellprice IS NOT NULL
GROUP BY brandname
ORDER BY average_sell_price DESC;


/* Question 7: Is there a relationship between discount percentage and selling price? */
SELECT
    discount,
    ROUND(AVG(sellprice), 0) AS avg_selling_price
FROM products_clean
WHERE discount IS NOT NULL
  AND sellprice IS NOT NULL
GROUP BY discount
ORDER BY discount;


-- Some products have missing MRP but valid selling price
-- Some brands do not offer discounts
-- Certain categories (e.g., lingerie) have unusually high size counts
-- These cases were handled contextually per analysis
