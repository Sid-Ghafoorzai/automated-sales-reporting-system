-- ============================================================
-- Project: Automated Retail Sales Reporting System - Rossmann
-- File: 01_create_tables.sql
-- Purpose: Create the main PostgreSQL table for cleaned Rossmann sales data
-- ============================================================

DROP TABLE IF EXISTS rossmann_sales;

CREATE TABLE rossmann_sales (
    id SERIAL PRIMARY KEY,

    store INTEGER NOT NULL,
    day_of_week INTEGER NOT NULL,
    date DATE NOT NULL,

    sales INTEGER NOT NULL,
    customers INTEGER NOT NULL,

    open INTEGER NOT NULL,
    promo INTEGER NOT NULL,
    state_holiday VARCHAR(10) NOT NULL,
    school_holiday INTEGER NOT NULL,

    store_type VARCHAR(10) NOT NULL,
    assortment VARCHAR(20) NOT NULL,

    competition_distance NUMERIC,
    competition_open_since_month NUMERIC,
    competition_open_since_year NUMERIC,

    promo2 INTEGER NOT NULL,
    promo2_since_week NUMERIC,
    promo2_since_year NUMERIC,
    promo_interval VARCHAR(50)
);