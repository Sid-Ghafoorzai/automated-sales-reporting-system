# Data Cleaning Notes

## Dataset Overview

The dataset contains 1,017,209 rows and 18 columns of historical Rossmann retail sales and store performance data.

## Date Range

2013-01-01 to 2015-07-31

## Store Coverage

The dataset contains records for 1,115 stores.

## Cleaning Steps

- Standardized column names to snake_case.
- Converted the date column to datetime format.
- Checked for duplicate rows.
- Checked for duplicate store-date combinations.
- Reviewed missing values.

## Duplicate Check

- Duplicate rows: 0
- Duplicate store-date rows: 0

## Missing Values

Missing values were found in competition-related and Promo2-related columns.

These values were not removed because they carry business meaning:
- Missing competition distance means the competitor distance is unknown.
- Missing competition opening date means the competitor opening period is unknown.
- Missing Promo2 fields are expected when a store does not participate in Promo2.

## Decision

The dataset is suitable for PostgreSQL loading and BI analysis.