WITH monthly AS (
 SELECT month,country,SUM(revenue) AS revenue_gbp,COUNT(*) AS orders
 FROM invoices WHERE invoice_date >= '2011-01-01' AND invoice_date < '2011-12-01'
 GROUP BY month,country
), totals AS (
 SELECT month,SUM(revenue_gbp) AS total_gbp FROM monthly GROUP BY month
), enriched AS (
 SELECT m.*, t.total_gbp, m.revenue_gbp/NULLIF(t.total_gbp,0) AS share,
 DENSE_RANK() OVER(PARTITION BY m.month ORDER BY m.revenue_gbp DESC) AS country_rank
 FROM monthly m JOIN totals t ON m.month=t.month
), with_previous AS (
 SELECT *,LAG(total_gbp) OVER(ORDER BY month) AS previous_gbp FROM totals
)
SELECT e.*,p.previous_gbp,(e.total_gbp-p.previous_gbp)/NULLIF(p.previous_gbp,0) AS total_mom
FROM enriched e JOIN with_previous p ON e.month=p.month
ORDER BY e.month,e.country_rank,e.country;
