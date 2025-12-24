# 🛍️ E-Commerce Fashion Data Analysis using PostgreSQL

## 📌 Project Overview
This project analyzes a fashion e-commerce dataset using **PostgreSQL** to extract meaningful business insights related to **brands, pricing, discounts, categories, and size inclusivity**.

The objective of this project is to demonstrate **practical SQL skills** by working with real-world data that includes missing values, outliers, and inconsistent pricing information.

---

## 📊 Dataset Description
- Domain: Fashion E-Commerce (Women’s Apparel)
- Total Records: ~30,000 products
- Data Source: CSV file
- Dataset File: `FashionDataset_clean.csv`

### Key Categories
- Westernwear-Women  
- Indianwear-Women  
- Footwear-Women  
- Jewellery-Women  
- Watches-Women  
- Lingerie & Nightwear-Women  

---

## 🗃️ Database Table: `products_clean`

### Table Schema

| Column Name | Description |
|------------|------------|
| product_id | Unique product identifier |
| brandname | Brand name |
| details | Product description |
| sizes | Available sizes (raw text) |
| size_count | Number of available sizes |
| mrp | Maximum Retail Price |
| sellprice | Actual selling price |
| discount | Discount percentage |
| category | Product category |

---

## 🧹 Data Cleaning & Assumptions
- Some products have **missing MRP but valid selling prices**
- Some brands do not offer discounts (discount values are NULL)
- Size data was converted into a numerical `size_count` column
- Outliers (e.g. lingerie products with many size combinations) were retained and explained
- Data filtering (`WHERE ... IS NOT NULL`) was applied **based on analysis context**, not globally

---

## 📈 Business Questions Answered

### 1️⃣ Which brands have the most products listed?
Identifies brands dominating the product catalog.

### 2️⃣ What is the average selling price for products in each category?
Compares pricing levels across categories.

### 3️⃣ Which brands offer the highest average discount?
Highlights brands with aggressive discount strategies.

### 4️⃣ Which categories are the most expensive on average?
Uses MRP to identify premium product categories.

### 5️⃣ Which brands are the most size-inclusive?
Analyzes average number of sizes offered per product.

### 6️⃣ Which brands are premium and which are budget brands?
Classifies brands based on average selling price.

### 7️⃣ Is there a relationship between discount percentage and selling price?
Finds no strong correlation, indicating discounting is not price-dependent.

---

## 🛠️ Tools & Technologies Used
- PostgreSQL
- pgAdmin
- SQL (Aggregation, Filtering, Grouping)
- CSV Dataset

---

## ▶ How to Run the Analysis
1. Import `FashionDataset_clean.csv` into PostgreSQL.
2. Create the `products_clean` table.
3. Open `fashion_ecommerce_analysis.sql` (or equivalent) in pgAdmin.
4. Execute queries sequentially to view results and insights.
---

## 👤 Author
**Vinit Yadav**  
MCA Student | Aspiring Data Analyst  

📧 Email: vinityadav2902yourname@email.com  
🔗 LinkedIn: https://www.linkedin.com/in/vinit-yadav-423236366

