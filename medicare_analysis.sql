/* Query 1 Average Medicare Payment by Specialty */

SELECT
    Rndrng_Prvdr_Type,
    ROUND(
        AVG(
            CAST(
                REPLACE(REPLACE(Avg_Mdcr_Pymt_Amt,'$',''),',','')
                AS REAL
            )
        ),
        2
    ) AS Avg_Payment
FROM medicare_sample_data
GROUP BY Rndrng_Prvdr_Type
ORDER BY Avg_Payment DESC;

/* Query 2
Beneficiaries by Specialty
*/

SELECT
Rndrng_Prvdr_Type,
SUM(Tot_Benes) AS Total_Beneficiaries
FROM medicare_sample_data
GROUP BY Rndrng_Prvdr_Type
ORDER BY Total_Beneficiaries DESC
LIMIT 10;

/* Query 3
Service Volume by State
*/

SELECT
Rndrng_Prvdr_State_Abrvtn,
SUM(Tot_Srvcs) AS Total_Services
FROM medicare_sample_data
GROUP BY Rndrng_Prvdr_State_Abrvtn
ORDER BY Total_Services DESC
LIMIT 10;

/* Query 4
Average Reimbursement Gap by Specialty
*/

SELECT
    Rndrng_Prvdr_Type,
    ROUND(
        AVG(
            CAST(REPLACE(REPLACE(Avg_Sbmtd_Chrg,'$',''),',','') AS REAL)
            -
            CAST(REPLACE(REPLACE(Avg_Mdcr_Pymt_Amt,'$',''),',','') AS REAL)
        ),
        2
    ) AS Avg_Reimbursement_Gap
FROM medicare_sample_data
GROUP BY Rndrng_Prvdr_Type
ORDER BY Avg_Reimbursement_Gap DESC;

/* Query 5
Top Procedures by Service Volume
*/

SELECT
    HCPCS_Cd,
    HCPCS_Desc,
    SUM(Tot_Srvcs) AS Total_Services
FROM medicare_sample_data
GROUP BY HCPCS_Cd, HCPCS_Desc
ORDER BY Total_Services DESC
LIMIT 10;
