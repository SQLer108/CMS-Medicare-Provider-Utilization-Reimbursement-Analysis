# CMS Medicare Provider Utilization & Reimbursement Analysis

## Overview

Source: CMS Medicare Physician & Other Practitioners by Provider and Service Dataset

The dataset contains provider-level Medicare utilization, service volume, beneficiary counts, submitted charges, Medicare allowed amounts, and Medicare payment information..

## Dataset

CMS Medicare Physician & Other Practitioners by Provider and Service Dataset

## Key Fields

- Provider NPI
- Provider State
- Provider Type
- HCPCS Procedure Code
- Total Beneficiaries
- Total Services
- Average Submitted Charge
- Average Medicare Allowed Amount
- Average Medicare Payment Amount

## Business Questions

1. Which provider specialties receive the highest average Medicare reimbursement?
2. Which provider specialties serve the largest Medicare beneficiary populations?
3. Which states account for the highest Medicare service utilization?
4. Which specialties experience the largest reimbursement gaps between submitted charges and Medicare payments?
5. Which HCPCS procedures generate the highest service volume?

## Methodology

1. Downloaded CMS Medicare Physician & Other Practitioners data.
2. Imported the dataset into SQLite.
3. Cleaned payment and charge fields for numerical analysis.
4. Developed SQL queries to analyze provider utilization, beneficiary volume, service volume, and Medicare reimbursement patterns.
5. Documented findings and SQL queries in GitHub.

## Key Findings

- Medicare reimbursement varied substantially across provider specialties, reflecting differences in service complexity and provider practice patterns.
- Primary care specialties served the largest Medicare beneficiary populations, indicating their central role in Medicare healthcare delivery.
- Medicare service utilization varied across states, with several states accounting for a disproportionately large share of total services.
- Significant differences existed between provider submitted charges and Medicare payment amounts, highlighting reimbursement variation across specialties.
- A relatively small number of HCPCS procedures accounted for a large portion of overall Medicare service volume.

## Tools Used

- SQLite
- SQL
- GitHub
- CMS Medicare Provider Utilization and Payment Dataset

## Skills Demonstrated

- SQL
- Data Cleaning
- Data Aggregation
- Healthcare Analytics
- Medicare Data Analysis
- Healthcare Reimbursement Analysis
- Provider Utilization Analysis
- Healthcare Financial Analysis
- Data Exploration
- Data Validation
- SQLite
- GitHub Documentation
