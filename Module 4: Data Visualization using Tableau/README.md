# Module 4: Data Visualization using Tableau

### Coursework Project — IIT Guwahati Data Analytics Program

![Tableau](https://img.shields.io/badge/Tableau-Desktop-E97627?logo=tableau&logoColor=white)
![Data_Viz](https://img.shields.io/badge/Data_Visualization-Dashboards-0052CC?logo=databricks&logoColor=white)

---

## 1. Module Overview

This module focuses on transforming raw datasets into interactive, visual business intelligence (BI) solutions. The coursework demonstrates advanced Tableau functionalities, including parameter creation, complex calculated fields, discrete aggregation, and professional dashboard layout design for comparative analysis.

## 2. Project Breakdown

### Regional Sales Analysis Dashboard

Designed an interactive comparative dashboard using the `Sample-Superstore` dataset to evaluate regional sales performance side-by-side.

* **Dynamic Parameterization:** Created `Primary Region` and `Secondary Region` string parameters to allow users to independently select two distinct geographical areas for direct comparison.

* **Advanced Calculated Fields:** Engineered custom calculations to isolate metrics based on user selection. 
  * *Example logic:* `IF [Region] = [Primary Region] THEN [Sales] END`
  * Applied distinct counts (`COUNTD`) to accurately calculate total orders, unique customers, and distinct products sold per region.

* **KPI Worksheet Development:** Built 10 individual worksheets to track critical retail metrics across both selected regions, including:
  * Total Revenue (Sales)
  * Average Sales per Order
  * Total Order Count
  * Unique Customer Volume
  * Distinct Products Sold

* **Dashboard Architecture:** Assembled the final "Regional Sales Analysis" dashboard utilizing vertical and horizontal layout containers. Integrated parameter dropdown controls for a seamless, interactive user experience.

## 3. Tech Stack

| Skill / Tool | Application in Project | 
| ----- | ----- | 
| **Tableau Desktop** | Primary visualization and dashboarding platform | 
| **Parameters** | Enabling user-driven, dynamic regional filtering | 
| **Calculated Fields** | Logic-based metric isolation (`IF/THEN`, `COUNTD`) | 
| **Data Aggregation** | Toggling between `SUM` and `AVG` for nuanced insights | 
| **Dashboard Layout** | Container-based UI structuring for comparative views | 

## 4. Repository File Structure

This folder contains the detailed visual report documenting the Tableau workspace configurations, calculated field formulas, the final dashboard view, and the verified module credential.

*(Note: Reports are provided in `.docx` format as per repository specifications.)*

```text
Mod4_Tableau_BI/
│
├── Regional_Sales_Analysis_Report.docx  # Step-by-step Tableau configuration and final dashboard visuals
├── Certificate_Tableau_BI.pdf           # Verified module completion credential
└── README.md                            # This file
```

## 5. Author

**Akansha Chowdhury**

* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)

---
