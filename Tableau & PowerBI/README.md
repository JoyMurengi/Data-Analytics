# 📊 Device Financing & Loan Performance Dashboard

![Tableau](https://img.shields.io/badge/tool-Tableau%20Public-E97627)
![BI](https://img.shields.io/badge/domain-Business%20Intelligence-blue)
![Finance](https://img.shields.io/badge/domain-Loan%20Portfolio%20Analytics-success)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

An interactive Tableau dashboard for monitoring device financing performance — loan repayments, outstanding balances, and sales trends across regions, shops, and mobile phone brands. Four separate metric views (sales, repayments, outstanding balance, interest) are condensed into a **single parameter-driven dashboard**, rather than four static ones, using dynamic parameters and calculated fields.

**🔗 [Live Dashboard (Tableau Public)](https://public.tableau.com/views/TotalsalesDashboard1/Dashboard3?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

**TL;DR**: One dashboard, one parameter, four KPIs — tracking **50,090 financed devices**, **KES 836.4M repaid**, and **KES 396.5M in outstanding balance** across regions, shops, and device brands (Apr–Jun 2024 sample window), with sub-second metric switching and zero dashboard duplication.

## Business Problem

Device financing lenders need to monitor sales, repayments, and outstanding balances simultaneously to understand portfolio health and flag concentration risk by region, shop, or device brand. The naive approach — one dashboard per metric — multiplies maintenance work every time a KPI is added or a filter changes. This dashboard solves that with a single parameter-driven design: one set of visualizations that re-renders for whichever metric the user selects, cutting dashboard count from 4 to 1 without losing any of the underlying detail.

## Table of Contents
- [Dashboard Preview](#dashboard-preview)
- [Data](#data)
- [1. Dashboard Design & KPIs](#1-dashboard-design--kpis)
- [2. Technical Implementation](#2-technical-implementation)
- [3. Business Insights](#3-business-insights)
- [4. How to Use](#4-how-to-use)
- [Design Decisions & Known Limitations](#design-decisions--known-limitations)
- [Next Steps](#next-steps)
- [Tools & Skills](#tools--skills)

---

## Dashboard Preview

*Four dashboards condensed into one using the parameter switch:*

<img width="1920" height="1080" alt="Total Sales by Province view" src="https://github.com/user-attachments/assets/5e4dd390-767d-46cb-bc91-a9777402ccbc" />

<img width="1920" height="1080" alt="Amount Repaid by Shop view" src="https://github.com/user-attachments/assets/37a760b7-2007-4f76-bb92-ee374f215396" />

<img width="1920" height="1080" alt="Outstanding Balance view" src="https://github.com/user-attachments/assets/7d52685b-b548-40e3-8adb-b8185a903259" />

<img width="1920" height="1080" alt="Interest Paid Trend view" src="https://github.com/user-attachments/assets/085cb906-2a98-4cb8-9cb8-9642cea13918" />

---

## Data

Transaction-level device financing records covering region (province), shop, device brand, loan status, and disbursement date, aggregated to four core KPIs:

| Metric | Value (Apr–Jun 2024 sample) |
|---|---|
| Total Sales | 50,090 devices |
| Amount Repaid | KES 836,438,377 |
| Outstanding Balance | KES 396,472,052 |
| Interest Paid | tracked via the same parameter switch |

Dimensions available for slicing: **Province**, **Shop**, **Device Brand**, **Loan Status**, **Day/Month of Date Created**.

## 1. Dashboard Design & KPIs

Core KPIs tracked: **Total Sales**, **Amount Repaid**, **Outstanding Balance**, **Interest Paid**. Rather than building a fixed dashboard per KPI, every worksheet — bar charts, trend lines, regional maps — references a single calculated field driven by one parameter, so all visuals update together and stay visually consistent regardless of which metric is selected.

## 2. Technical Implementation

**Parameter**

```
Select Metric
```
Available values: `Total Sales`, `Amount Repaid`, `Outstanding Balance`, `Interest Paid`

**Calculated field** — every chart in the dashboard references this single field:

```tableau
CASE [Select Metric]
WHEN "Total Sales" THEN [Total Sales]
WHEN "Amount Repaid" THEN [Amount Repaid]
WHEN "Outstanding Balance" THEN [Outstanding Balance]
WHEN "Interest Paid" THEN [Interest Paid]
END
```

**Dynamic titles** — worksheet titles update automatically with the parameter (e.g. *"Total Sales by Province"* → *"Outstanding Balance by Province"*), so the metric currently on screen is never ambiguous.

This pattern — one parameter, one calculated field, every visual wired to it — is what collapses four dashboards into one: adding a fifth KPI later means extending the `CASE` statement, not building a new dashboard.

## 3. Business Insights

- **Regional performance**: Eastern and Coast provinces recorded the highest sales volumes and repayment amounts. Coast Province also carries the largest outstanding balance — a higher concentration of financial risk in that region specifically, not just higher volume.
- **Shop performance**: Otieno's Shop consistently ranked top across both sales and repayments — a candidate for case-study analysis on what's driving above-average performance there.
- **Device performance**: TECNO had the highest unit volume financed; INFINIX generated the highest repayment value while also carrying the largest outstanding balance — worth flagging, since high repayment value alongside high outstanding balance can mean either high volume or slower repayment velocity, and the dashboard doesn't yet distinguish which.
- **Sales trends**: disbursements and repayments peaked in mid-April before settling into a consistent weekly pattern through May and June.

## 4. How to Use

1. Open the [live dashboard](https://public.tableau.com/views/TotalsalesDashboard1/Dashboard3?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link).
2. Select a metric from the **Select Metric** parameter.
3. Explore regional, shop, and device-level breakdowns.
4. Filter by **Loan Status**, **Day of Date Created**, or **Month**.
5. Compare portfolio performance across regions, shops, and brands under the selected metric.

---

## Design Decisions & Known Limitations

Being upfront about what this dashboard does and doesn't do:

- **Extract-based, not live-connected**: the dashboard reflects a data snapshot as of the last extract refresh, not a real-time feed. Fine for portfolio review cadence, not for intraday monitoring.
- **Aggregate-only, no drill-through to individual loans**: by design, for performance and (in a real deployment) data-privacy reasons — but it means an analyst spotting a risk signal at the shop or region level still has to go elsewhere for the underlying loan-level records.
- **INFINIX's repayment-value vs. outstanding-balance pattern isn't decomposed** in the current dashboard — it can't yet distinguish "high volume, normal repayment behavior" from "slower repayment velocity specifically for this brand." That decomposition would need a repayment-rate or days-past-due metric added to the parameter set.
- **Apr–Jun 2024 is a fixed sample window** shown here for illustration, not a live rolling date range — a production version would need this parameterized too.

## Next Steps

- Add a repayment-rate / days-past-due metric to disambiguate high-value-but-slow-repaying segments (like the INFINIX pattern above) from genuinely high-performing ones.
- Move from extract to a live or scheduled-refresh connection if the reporting cadence needs to tighten.
- Add loan-level drill-through (row-level detail on click) for analysts investigating a flagged region or shop.
- Parameterize the date range so the "current window" updates automatically rather than being hardcoded to a fixed quarter.

## Tools & Skills

**Tools**: Tableau Public · Parameters · Calculated Fields · CASE Statements · Interactive Filters · Time-Series Visualization

**Skills demonstrated**: Business Intelligence · Dashboard Design · Data Visualization · KPI Development · Financial/Loan Portfolio Analysis · Interactive Reporting Architecture

---

## Author

**Joy Murengi** — Data Analyst | BI Developer | Data Scientist
