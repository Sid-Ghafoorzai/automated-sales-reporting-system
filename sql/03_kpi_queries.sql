-- ============================================================
-- Project: Automated Retail Sales Reporting System - Rossmann
-- File: 03_kpi_queries.sql
-- Purpose: Business KPI queries for sales, customers, promotions,
--          holidays, store performance, and competition analysis
-- ============================================================

-- 1. Total sales and total customers
SELECT
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers
FROM rossmann_sales
WHERE open = 1;

-- 2. Average daily sales and customers on open store days
SELECT
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(AVG(customers), 2) AS avg_daily_customers
FROM rossmann_sales
WHERE open = 1;

-- 3. Average sales per customer
SELECT
    ROUND(SUM(sales)::numeric / NULLIF(SUM(customers), 0), 2) AS avg_sales_per_customer
FROM rossmann_sales
WHERE open = 1;

-- 4. Monthly sales trend
SELECT
    DATE_TRUNC('month', date)::date AS month,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(SUM(sales)::numeric / NULLIF(SUM(customers), 0), 2) AS avg_sales_per_customer
FROM rossmann_sales
WHERE open = 1
GROUP BY DATE_TRUNC('month', date)
ORDER BY month;

-- 5. Sales and customers by store type
SELECT
    store_type,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(SUM(sales)::numeric / NULLIF(SUM(customers), 0), 2) AS avg_sales_per_customer
FROM rossmann_sales
WHERE open = 1
GROUP BY store_type
ORDER BY total_sales DESC;

-- 6. Sales and customers by assortment type
SELECT
    assortment,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(SUM(sales)::numeric / NULLIF(SUM(customers), 0), 2) AS avg_sales_per_customer
FROM rossmann_sales
WHERE open = 1
GROUP BY assortment
ORDER BY total_sales DESC;


-- 7. Top 10 stores by total sales
SELECT
    store,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales
FROM rossmann_sales
WHERE open = 1
GROUP BY store
ORDER BY total_sales DESC
LIMIT 10;

-- 8. Bottom 10 stores by total sales
SELECT
    store,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales
FROM rossmann_sales
WHERE open = 1
GROUP BY store
ORDER BY total_sales ASC
LIMIT 10;

-- 9. Sales performance with and without promotion
SELECT
    promo,
    COUNT(*) AS open_store_days,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(AVG(customers), 2) AS avg_daily_customers,
    ROUND(SUM(sales)::numeric / NULLIF(SUM(customers), 0), 2) AS avg_sales_per_customer
FROM rossmann_sales
WHERE open = 1
GROUP BY promo
ORDER BY promo;

-- 10. Sales performance during school holidays
SELECT
    school_holiday,
    COUNT(*) AS open_store_days,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(AVG(customers), 2) AS avg_daily_customers
FROM rossmann_sales
WHERE open = 1
GROUP BY school_holiday
ORDER BY school_holiday;


-- 11. Sales performance by state holiday type
SELECT
    state_holiday,
    COUNT(*) AS open_store_days,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(AVG(customers), 2) AS avg_daily_customers
FROM rossmann_sales
WHERE open = 1
GROUP BY state_holiday
ORDER BY state_holiday;


-- 12. Sales by day of week
SELECT
    day_of_week,
    COUNT(*) AS open_store_days,
    SUM(sales) AS total_sales,
    SUM(customers) AS total_customers,
    ROUND(AVG(sales), 2) AS avg_daily_sales,
    ROUND(AVG(customers), 2) AS avg_daily_customers
FROM rossmann_sales
WHERE open = 1
GROUP BY day_of_week
ORDER BY day_of_week;