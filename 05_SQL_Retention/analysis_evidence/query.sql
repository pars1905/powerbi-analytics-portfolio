WITH eligible AS (
 SELECT * FROM invoices WHERE customer IS NOT NULL
), first_purchase AS (
 SELECT customer,MIN(month) AS cohort FROM eligible GROUP BY customer
), activity AS (
 SELECT DISTINCT customer,month FROM eligible
), grid AS (
 SELECT f.customer,f.cohort,substr(date(f.cohort||'-01','+1 month'),1,7) AS next_month
 FROM first_purchase f
), sizes AS (
 SELECT g.cohort,COUNT(*) AS cohort_size,MAX(g.next_month) AS next_month,
 SUM(CASE WHEN a.customer IS NOT NULL THEN 1 ELSE 0 END) AS returned_next_month
 FROM grid g LEFT JOIN activity a ON a.customer=g.customer AND a.month=g.next_month
 GROUP BY g.cohort
)
SELECT cohort,cohort_size,next_month,
 CASE WHEN next_month<'2011-12' THEN returned_next_month ELSE NULL END AS returned_next_month,
 CASE WHEN next_month<'2011-12' THEN 1.0*returned_next_month/cohort_size ELSE NULL END AS retention_m1,
 CASE WHEN next_month<'2011-12' THEN 'observable' ELSE 'right_censored' END AS status
FROM sizes ORDER BY cohort;
