# Module 1: Business Analytics with Excel
### Coursework Project — IIT Guwahati Data Analytics Program

![Excel](https://img.shields.io/badge/Excel-Advanced-217346?logo=microsoftexcel&logoColor=white)
![Data Analytics](https://img.shields.io/badge/Data_Analytics-Dashboarding-0078D4)

---

## 1. Module Overview

This module focuses on transforming raw transactional data into interactive, dynamic business intelligence dashboards using Microsoft Excel. The coursework demonstrates advanced data manipulation, relational table mapping, and the implementation of user-controlled form controls to analyze sales performance across multiple dimensions.

---

## 2. Project Breakdown

### Interactive Retail Sales Dashboard
Engineered a dynamic, multi-panel sales dashboard to analyze monthly and regional performance trends based on user-selected product categories.

* **Data Architecture:** Structured the workbook into three distinct environments: `Sales Data` (raw ingestion), `Analysis` (computational backend), and `Dashboard` (frontend visualization).
* **Data Aggregation:** Utilized Pivot Tables to build backend calculation matrices for:
  * Sales and Profit aggregated by Month.
  * Sales distribution aggregated by global Regions.
* **Dynamic User Controls:** Integrated a Developer Combo Box linked to a cell index, allowing the end-user to toggle the entire dashboard by Product Category (Auto & Accessories, Electronic, Fashion, Home & Furniture).
* **Advanced Formula Integration:** Developed nested `OFFSET` and `MATCH` functions (e.g., `=OFFSET($A$5,MATCH(G7,$A$6:$A$17,0),$L$6)`) to automate real-time data retrieval from the pivot tables into the dashboard staging area based on the combo box selection.
* **Visual Analytics:** Designed linked Bar Plots to continuously monitor sales-to-profit ratios and regional revenue distributions.

---

## 3. Tech Stack

| Skill / Tool | Application in Project |
|---|---|
| **Microsoft Excel** | Primary analytics and visualization platform |
| **Advanced Formulas** | `OFFSET`, `MATCH`, absolute/relative referencing |
| **Data Aggregation** | Pivot Tables |
| **Interactive UI** | Developer Tab, Form Controls (Combo Box) |
| **Data Visualization**| Dynamic Bar Charts |

---

## 4. Repository File Structure

This folder contains the detailed analytical report showing the step-by-step dashboard creation and the verified module credential.

```text
Mod1_Excel_Analytics/
│
├── Excel_Sales_Dashboard_Report.doc     # Detailed project report with formula breakdowns and dashboard visuals
├── Certificate_Business_Analytics.pdf   # Verified module completion credential
└── README.md                            # This file
```

---

## 5. Author

**Akansha Chowdhury**
* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)

---
