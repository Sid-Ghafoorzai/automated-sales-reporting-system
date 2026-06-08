-- ============================================================
-- Project: Automated Retail Sales Reporting System - Rossmann
-- File: 02_data_quality_checks.sql
-- Purpose: Validate imported Rossmann sales data in PostgreSQL
-- ============================================================

-- 1. Check total number of rows
SELECT 
    COUNT(*) AS total_rows
FROM rossmann_sales;


-- 2. Check date range and number of stores
SELECT
    MIN(date) AS first_date,
    MAX(date) AS last_date,
    COUNT(DISTINCT store) AS number_of_stores
FROM rossmann_sales;


-- 3. Preview first records
SELECT *
FROM rossmann_sales
LIMIT 5;


-- 4. Check duplicate store-date records
-- Expected result: no rows
SELECT
    store,
    date,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY store, date
HAVING COUNT(*) > 1;


-- 5. Check missing values in nullable columns
SELECT
    COUNT(*) FILTER (WHERE competition_distance IS NULL) AS missing_competition_distance,
    COUNT(*) FILTER (WHERE competition_open_since_month IS NULL) AS missing_competition_open_month,
    COUNT(*) FILTER (WHERE competition_open_since_year IS NULL) AS missing_competition_open_year,
    COUNT(*) FILTER (WHERE promo2_since_week IS NULL) AS missing_promo2_since_week,
    COUNT(*) FILTER (WHERE promo2_since_year IS NULL) AS missing_promo2_since_year,
    COUNT(*) FILTER (WHERE promo_interval IS NULL) AS missing_promo_interval
FROM rossmann_sales;


-- 6. Check store open/closed distribution
SELECT
    open,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY open
ORDER BY open;


-- 7. Check promotion distribution
SELECT
    promo,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY promo
ORDER BY promo;


-- 8. Check state holiday categories
SELECT
    state_holiday,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY state_holiday
ORDER BY state_holiday;


-- 9. Check school holiday distribution
SELECT
    school_holiday,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY school_holiday
ORDER BY school_holiday;


-- 10. Check store type categories
SELECT
    store_type,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY store_type
ORDER BY store_type;


-- 11. Check assortment categories
SELECT
    assortment,
    COUNT(*) AS records
FROM rossmann_sales
GROUP BY assortment
ORDER BY assortment;