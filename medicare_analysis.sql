-- Which specialties receive the highest Medicare payments?

SELECT
Rndrng_Prvdr_Type,
AVG(Avg_Mdcr_Pymt_Amt) AS Avg_Payment
FROM medicare_data
GROUP BY Rndrng_Prvdr_Type
ORDER BY Avg_Payment DESC;
