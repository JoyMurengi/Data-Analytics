# Device Financing & Loan Performance Dashboard | Tableau

An interactive Tableau dashboard built to monitor device financing performance, loan repayments, outstanding balances, and sales trends across multiple regions, shops, and mobile phone brands.

The dashboard uses **dynamic parameters** and **calculated fields** to allow users to switch between multiple financial metrics without navigating to different dashboards, creating a cleaner and more scalable reporting solution.

---

## Project Overview

Financial institutions need to monitor key lending metrics such as sales, repayments, and outstanding balances to understand portfolio performance and identify areas of financial risk.

This dashboard provides decision-makers with an interactive way to:

- Track loan portfolio performance
- Compare repayment behavior across regions and shops
- Analyze sales trends over time
- Monitor outstanding balances
- Evaluate device brand performance
- Switch between key business metrics using a single parameter

---

## Dashboard Preview

> Replace the images below with screenshots from your dashboard.
<img width="1920" height="1080" alt="Screenshot 2026-07-15 223717" src="https://github.com/user-attachments/assets/5e4dd390-767d-46cb-bc91-a9777402ccbc" />


![Dashboard 1](images/dashboard1.png)

![Dashboard 2](images/dashboard2.png)

![Dashboard 3](images/dashboard3.png)

---

## Key Features

- Interactive KPI dashboard
- Dynamic metric selection using Tableau Parameters
- Regional performance analysis
- Shop-level performance monitoring
- Device brand analysis
- Time-series trend analysis
- Loan status filtering
- Month filtering
- Clean and user-friendly dashboard design

---

## Dashboard KPIs

The dashboard tracks several important business metrics, including:

- Total Sales
- Amount Repaid
- Outstanding Balance
- Interest Paid

Example portfolio totals (April–June 2024):

| Metric | Value |
|---------|---------|
| Total Sales | 50,090 Devices |
| Amount Repaid | KES 836,438,377 |
| Outstanding Balance | KES 396,472,052 |

---

# Technical Implementation

## Dynamic Metric Switching

Instead of creating separate dashboards for every financial metric, a single dashboard dynamically updates all visualizations based on the user's selected metric.

This approach:

- Reduces dashboard duplication
- Improves maintainability
- Enhances user experience
- Makes future metric additions easier

---

## Tableau Parameter

**Parameter Name**

```
Select Metric
```

**Available Values**

- Total Sales
- Amount Repaid
- Outstanding Balance
- Interest Paid

---

## Calculated Field

A calculated field determines which measure should be displayed based on the selected parameter.

```tableau
CASE [Select Metric]

WHEN "Total Sales" THEN [Total Sales]

WHEN "Amount Repaid" THEN [Amount Repaid]

WHEN "Outstanding Balance" THEN [Outstanding Balance]

WHEN "Interest Paid" THEN [Interest Paid]

END
```

Every chart references this calculated field, allowing the entire dashboard to update instantly whenever the parameter changes.

---

## Dynamic Dashboard Titles

Worksheet titles automatically update using the selected parameter.

Examples include:

- Total Sales by Province
- Outstanding Balance by Province
- Amount Repaid by Shop
- Interest Paid Trend

This keeps the dashboard intuitive and eliminates ambiguity about the metric currently being displayed.

---

# Business Insights

### Regional Performance

- Eastern and Coast provinces recorded the highest sales volumes and repayment amounts.
- Coast Province also reported the largest outstanding balance, indicating a higher concentration of financial risk.

### Shop Performance

- Otieno's Shop consistently ranked as the top-performing shop across sales and repayments.

### Device Performance

- TECNO recorded the highest number of financed devices.
- INFINIX generated the highest repayment value while also carrying the largest outstanding balance.

### Sales Trends

- Loan disbursements and repayments peaked in mid-April before stabilizing into consistent weekly patterns during May and June.

---

# Tools & Technologies

- Tableau Public
- Parameters
- Calculated Fields
- CASE Statements
- Interactive Filters
- Time-Series Visualizations

---

# Skills Demonstrated

- Business Intelligence
- Dashboard Design
- Data Visualization
- Tableau Parameters
- Calculated Fields
- Interactive Reporting
- KPI Development
- Financial Data Analysis
- Loan Portfolio Analysis

---

# How to Use

1. Open the Tableau dashboard.
2. Select a metric using the **Select Metric** parameter.
3. Explore regional, shop, and device-level performance.
4. Apply filters for:
   - Loan Status
   - Day of Date Created
   - Month
5. Analyze trends and compare portfolio performance across different business dimensions.

---

# Dashboard

View the interactive dashboard on Tableau Public:

**🔗 Tableau Public:**  
*https://public.tableau.com/views/TotalsalesDashboard1/Dashboard3?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link*

---

# Author

**Joy Murengi**

 Data Analyst | BI Developer | Data Scientist



---
