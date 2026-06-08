# KPI Results Notes

## KPI 1: Total Sales and Customers

SQL file: `sql/03_kpi_queries.sql`

Result:

- Total sales: 5,873,180,623
- Total customers: 644,041,755

Business interpretation:

Across all open store-days in the dataset, the stores generated total sales of 5.87 billion and served 644.04 million customers. This provides the overall scale of business activity covered by the dataset.

## KPI 2: Average Daily Sales and Customers

Result:

- Average daily sales: 6,955.51
- Average daily customers: 762.73

Business interpretation:

On an average open store-day, a store generated 6,955.51 in sales and served approximately 762.73 customers. These values can be used as baseline performance indicators for comparing store types, promotions, holidays, and individual stores.

## KPI 3: Average Sales per Customer

Result:

- Average sales per customer: 9.12

Business interpretation:

Each customer generated approximately 9.12 in sales value on average. This metric helps measure customer spending efficiency and can later be compared across promotions, store types, holidays, and assortment categories.

## KPI 4: Monthly Sales Trend

Result summary:

The monthly sales trend covers the period from January 2013 to July 2015.

Key observations:

- December 2013 had the highest monthly sales in the dataset, with 231,710,561 in total sales.
- December 2014 also showed strong performance, with 202,120,592 in total sales.
- Sales per customer was highest in December 2014 at 9.72, followed closely by December 2013 at 9.70.
- In 2015, the average sales per customer remained relatively high, often above 9.3.
- July 2015 showed strong sales performance, with 212,322,616 in total sales and 9.54 average sales per customer.
- The year 2015 should be interpreted carefully because the dataset only includes data up to July 2015.


## KPI 5: Sales by store type

The monthly trend suggests clear seasonality in retail sales, especially around December. Higher sales per customer during December may indicate stronger basket values during the holiday shopping period. The 2015 data also suggests improved sales per customer compared with many earlier months, but full-year comparison is not possible because the dataset ends in July 2015.

Store type `a` generated the highest total sales and customer volume, indicating that it contributes the largest share of overall business activity. Store type `b` had the highest average daily sales, but the lowest total sales, which may indicate fewer stores or fewer operating days in this category. Store type `d` showed the highest average sales per customer, suggesting stronger basket value per visit. Store type `b`, despite high average daily sales, had the lowest sales per customer, suggesting high customer traffic with lower average spending per customer.

This KPI shows why total sales, average daily sales, and sales per customer should be analyzed together instead of relying on only one metric.


## KPI 6: Store Type Count Check

Store type `a` has the highest total sales partly because it has the largest number of stores and open store-days. Store type `b` has only 17 stores, but showed the highest average daily sales in the previous KPI. This confirms that store type performance should be analyzed using both total contribution and normalized metrics such as average daily sales and average sales per customer.



KPI 6: Assortment Count Check

Result:

| Assortment | Number of Stores | Open Store-Days |

| a |           593 |               444,909 |
| c |            513 |               391,271 |
| b |            9 |                 8,212 |

Business interpretation:

Assortment `a` has the largest footprint in the dataset, with 593 stores and 444,909 open store-days. This helps explain why it generated the highest total sales. Assortment `c` has a slightly smaller footprint but showed stronger average daily sales and sales per customer, suggesting stronger customer spending per visit. Assortment `b` has only 9 stores, so its performance should be interpreted carefully because it represents a much smaller group.



KPI 7: Promotion Impact

Result:

| Promo | Open Store-Days | Total Sales | Total Customers | Average Daily Sales | Average Daily Customers | Average Sales per Customer |

| 0 | 467,496 | 2,771,974,337 | 325,777,807 | 5,929.41 | 696.86 | 8.51 |
| 1 | 376,896 | 3,101,206,286 | 318,263,948 | 8,228.28 | 844.43 | 9.74 |

Business interpretation:

Promotion days showed stronger performance than non-promotion days across all major metrics. Average daily sales increased from 5,929.41 on non-promotion days to 8,228.28 on promotion days, representing an increase of approximately 38.8%. Average daily customer traffic also increased from 696.86 to 844.43, an increase of approximately 21.2%. Average sales per customer increased from 8.51 to 9.74.

This suggests that promotions were associated with both higher customer traffic and higher spending per customer. However, this result shows association, not necessarily pure causation, because other factors such as seasonality, holidays, and store type may also influence sales.



 KPI 8: Promotion Impact by Store Type

Result:

| Store Type | Promo | Open Store-Days | Average Daily Sales | Average Daily Customers | Average Sales per Customer |
|---|---:|---:|---:|---:|---:|
| a | 0 | 252,556 | 5,808.50 | 713.81 | 8.14 |
| a | 1 | 204,521 | 8,304.10 | 896.07 | 9.27 |
| b | 0 | 9,623 | 9,566.86 | 1,941.80 | 4.93 |
| b | 1 | 5,940 | 11,307.99 | 2,151.45 | 5.26 |
| c | 0 | 62,240 | 6,028.06 | 758.71 | 7.95 |
| c | 1 | 50,738 | 8,042.00 | 885.09 | 9.09 |
| d | 0 | 143,077 | 5,855.27 | 556.29 | 10.53 |
| d | 1 | 115,697 | 8,017.83 | 668.23 | 12.00 |

Business interpretation:

Promotions were associated with higher average daily sales across all store types. Store type `a` showed the strongest relative uplift, with average daily sales increasing from 5,808.50 without promotion to 8,304.10 with promotion, an increase of approximately 43.0%. Store type `d` also showed strong uplift and maintained the highest sales per customer, increasing from 10.53 to 12.00. Store type `b` had the highest average daily sales both with and without promotion, but its relative uplift was lower than other store types.

This suggests that promotions are broadly effective, but the strength of promotion impact differs by store type.



## KPI 9: Sales by Day of Week

Result:

| Day of Week | Open Store-Days | Total Sales | Total Customers | Average Daily Sales | Average Daily Customers | Average Sales per Customer |
|---:|---:|---:|---:|---:|---:|---:|
| 1 | 137,560 | 1,130,203,012 | 117,675,012 | 8,216.07 | 855.44 | 9.60 |
| 2 | 143,961 | 1,020,411,930 | 110,848,063 | 7,088.11 | 769.99 | 9.21 |
| 3 | 141,936 | 954,962,863 | 105,117,642 | 6,728.12 | 740.60 | 9.08 |
| 4 | 134,644 | 911,177,709 | 101,732,938 | 6,767.31 | 755.57 | 8.96 |
| 5 | 138,640 | 980,555,941 | 108,384,820 | 7,072.68 | 781.77 | 9.05 |
| 6 | 144,058 | 846,317,735 | 95,103,854 | 5,874.84 | 660.18 | 8.90 |
| 7 | 3,593 | 29,551,433 | 5,179,426 | 8,224.72 | 1,441.53 | 5.71 |

Business interpretation:

Day 1 generated the highest total sales and showed one of the strongest average daily sales values, suggesting that the start of the week is an important sales period. Day 6 had lower average daily sales and customer traffic compared with most weekdays. Day 7 is unusual because it has only 3,593 open store-days, far fewer than the other days. This likely reflects limited Sunday openings. Although Day 7 has high average customer traffic, it should be interpreted carefully because it represents a small and special subset of the data.

This KPI shows that weekday performance differs significantly and that Sunday should be analyzed separately from normal operating days.

## KPI 10: State Holiday Impact

Result:

| State Holiday | Open Store-Days | Total Sales | Total Customers | Average Daily Sales | Average Daily Customers | Average Sales per Customer |
|---|---:|---:|---:|---:|---:|---:|
| 0 | 843,482 | 5,865,164,768 | 642,797,995 | 6,953.52 | 762.08 | 9.12 |
| a | 694 | 5,890,305 | 887,746 | 8,487.47 | 1,279.17 | 6.64 |
| b | 145 | 1,433,744 | 244,599 | 9,887.89 | 1,686.89 | 5.86 |
| c | 71 | 691,806 | 111,415 | 9,743.75 | 1,569.23 | 6.21 |

Business interpretation:

Normal non-holiday days dominate the dataset, with 843,482 open store-days. However, stores that were open during state holidays showed higher average daily sales and higher average customer traffic compared with normal days. At the same time, average sales per customer were lower on holiday categories than on normal days.

This suggests that holiday openings may attract more customer visits but lower spending per customer. However, the number of open holiday records is small, especially for Easter and Christmas holiday categories, so these results should be interpreted carefully.


## KPI 11: School Holiday Impact

Result:

| School Holiday | Open Store-Days | Total Sales | Total Customers | Average Daily Sales | Average Daily Customers | Average Sales per Customer |
|---:|---:|---:|---:|---:|---:|---:|
| 0 | 680,935 | 4,696,260,531 | 516,035,131 | 6,896.78 | 757.83 | 9.10 |
| 1 | 163,457 | 1,176,920,092 | 128,006,624 | 7,200.18 | 783.12 | 9.19 |

Business interpretation:

School holiday periods showed slightly stronger store performance than non-school-holiday periods. Average daily sales increased from 6,896.78 to 7,200.18, an uplift of approximately 4.4%. Average daily customer traffic also increased from 757.83 to 783.12, while average sales per customer increased slightly from 9.10 to 9.19.

This suggests that school holidays are associated with modestly higher sales and customer traffic, although the effect is much smaller than the promotion impact.


## KPI 12: Competition Distance Impact

Result:

| Competition Distance Group | Open Store-Days | Total Sales | Total Customers | Average Daily Sales | Average Daily Customers | Average Sales per Customer |
|---|---:|---:|---:|---:|---:|---:|
| Very close (<500m) | 166,547 | 1,268,130,555 | 161,444,645 | 7,614.25 | 969.36 | 7.85 |
| Medium (1-3km) | 222,853 | 1,535,935,806 | 167,378,606 | 6,892.15 | 751.07 | 9.18 |
| Very far (10km+) | 142,611 | 973,285,990 | 94,112,264 | 6,824.76 | 659.92 | 10.34 |
| Far (3-10km) | 227,343 | 1,528,948,289 | 150,490,765 | 6,725.29 | 661.95 | 10.16 |
| Close (500-999m) | 82,852 | 554,896,154 | 69,406,845 | 6,697.44 | 837.72 | 7.99 |
| Unknown | 2,186 | 11,983,829 | 1,208,630 | 5,482.08 | 552.90 | 9.92 |

Business interpretation:

Stores located very close to competitors, within 500 meters, showed the highest average daily sales and customer traffic. This suggests that close competition may also indicate high-traffic commercial locations rather than only competitive pressure. However, stores with farther competitors showed higher average sales per customer, especially the 10km+ and 3-10km groups.

This suggests a possible tradeoff: stores near competitors attract more customers but generate lower spending per customer, while stores farther from competitors attract fewer customers but achieve higher spending per customer. The unknown group is small and should be interpreted carefully.


