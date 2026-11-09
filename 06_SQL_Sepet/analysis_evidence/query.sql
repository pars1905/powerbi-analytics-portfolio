WITH popular AS (
 SELECT stock FROM sales
 WHERE invoice_date>='2011-01-01' AND invoice_date<'2011-12-01'
 AND stock GLOB '[0-9]*'
 GROUP BY stock ORDER BY COUNT(DISTINCT invoice) DESC,stock LIMIT 60
), items AS (
 SELECT DISTINCT s.invoice,s.stock FROM sales s JOIN popular p ON s.stock=p.stock
 WHERE s.invoice_date>='2011-01-01' AND s.invoice_date<'2011-12-01'
), pairs AS (
 SELECT a.stock AS product_a,b.stock AS product_b,COUNT(*) AS pair_orders
 FROM items a JOIN items b ON a.invoice=b.invoice AND a.stock<b.stock
 GROUP BY a.stock,b.stock HAVING COUNT(*)>=30
), singles AS (
 SELECT stock,COUNT(*) AS orders FROM items GROUP BY stock
), population AS (
 SELECT COUNT(*) AS n FROM invoices WHERE invoice_date>='2011-01-01' AND invoice_date<'2011-12-01'
)
SELECT p.*,a.orders AS a_orders,b.orders AS b_orders,n.n AS all_orders,
 1.0*p.pair_orders/n.n AS support,
 1.0*p.pair_orders/a.orders AS confidence_a_to_b,
 1.0*p.pair_orders*n.n/(a.orders*b.orders) AS lift
FROM pairs p JOIN singles a ON a.stock=p.product_a JOIN singles b ON b.stock=p.product_b CROSS JOIN population n
ORDER BY lift DESC,pair_orders DESC,product_a,product_b;
