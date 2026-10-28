# Healthcare Management: Patient Readmission Prediction
### Capstone Data Analytics Project — Akansha Chowdhury

![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.0%2B-150458?logo=pandas&logoColor=white)
![Seaborn](https://img.shields.io/badge/Seaborn-0.12%2B-4C72B0)
![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?logo=mysql&logoColor=white)
![Tableau](https://img.shields.io/badge/Tableau-Desktop-E97627?logo=tableau&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-Advanced-217346?logo=microsoftexcel&logoColor=white)

---

## Table of Contents

1. [Project Overview](#1-project-overview)
2. [Dataset Information](#2-dataset-information)
3. [Tech Stack](#3-tech-stack)
4. [Key Findings](#4-key-findings)
5. [Repository File Structure](#5-repository-file-structure)
6. [Visualisations](#6-visualisations)
7. [Recommendations Summary](#7-recommendations-summary)
8. [Author](#8-author)

---

## 1. Project Overview

This project applies a **multi-platform data analytics workflow** to over 100,000 structured clinical records. The goal is to analyze the likelihood of a diabetic patient being readmitted to a healthcare facility within 30 days after discharge, converting raw clinical data into evidence-based operational recommendations across three domains:

| Domain | Operational Question |
|---|---|
| **Resource Allocation** | How does clinical intensity (medications, lab procedures) correlate with length of stay? |
| **Risk Profiling** | Which demographic segments (age, race) present the highest readmission risk and clinical load? |
| **Readmission Prevention** | How can we identify "super-utilizers" to deploy proactive intervention resources before discharge? |

### Analytical Workflow

```
Step 1: Data Preparation (Excel) → Format standardization, handling age brackets, baseline descriptive stats
Step 2: Metric Extraction (SQL)  → Schema design, multi-table UNIONs for diagnosis frequency, aggregations
Step 3: Exploratory EDA (Python) → Correlation matrices, outlier detection (super-utilizers), distributions
Step 4: Interactive BI (Tableau) → Custom calculated fields, dynamic bubble charts, clinical load dashboard
Step 5: Business Application     → Targeted proactive care recommendations to reduce readmission costs
```

---

## 2. Dataset Information

| Attribute | Detail |
|---|---|
| **Source** | Clinical Healthcare Network (Diabetic Data) |
| **Records** | 101,766 patient encounters |
| **Unique Encounters** | 32,743 |
| **Columns** | 50+ attributes (demographics, clinical, admission) |

### Key Schema Elements

| Column | Type | Description |
|---|---|---|
| `encounter_id` | integer | Unique identifier of an encounter |
| `age` | categorical | Patient age grouped in 10-year intervals (e.g., [70-80)) |
| `time_in_hospital` | integer | Inpatient bed-days (1–14 days) |
| `num_medications` | integer | Number of distinct generic names administered |
| `num_lab_procedures`| integer | Number of lab tests performed during the encounter |
| `diag_1`, `diag_2` | string | Primary and secondary ICD-9 diagnoses |
| `readmitted` | categorical | Days to inpatient readmission: <30, >30, or NO |

---

## 3. Tech Stack

| Tool / Library | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, range parsing, Data Analysis Toolpak (Descriptive Statistics) |
| **MySQL Workbench** | Relational database schema, `UNION ALL` queries, volume aggregations |
| **Python 3.10+** | Core exploratory programming |
| **Pandas & NumPy** | Data ingestion, missing value imputation, statistical calculations |
| **Matplotlib & Seaborn**| Correlation heatmaps, boxplot outlier detection, frequency distributions |
| **Tableau Desktop** | Executive KPI dashboarding, dynamic parameters, clinical load bubble charts |
| **Jupyter Notebook** | Interactive Python environment |

---

## 4. Key Findings

### Hospital-Wide KPIs

| Metric | Value |
|---|---|
| Total patient encounters | 101,766 |
| Readmission rate (<30 Days) | 11.28% |
| No readmission rate | 56.18% |
| Average length of stay | 4.40 days |
| Average medications prescribed | 16.02 (Max: 81) |
| Average lab procedures | 43.10 (Max: 132) |
| Top diagnosis | Code 250 (Diabetes) followed by 428 (Heart Failure) |

### Finding 1 — Readmission Risk by Age Group

| Age Group | Patient Count | Medication Average | Highest Risk Factor |
|---|---|---|---|
| 50–60 | 17,018 | 16.58 | Moderate |
| 60–70 | 22,083 | 17.17 | High |
| **70–80** | **25,528** | 16.43 | **Highest Volume & Risk** |
| 80–90 | 16,872 | 15.35 | High |

> **Insight:** Patients aged 51+ (specifically the 70-80 demographic) account for the vast majority of hospital encounters and represent the highest readmission risk. 

### Finding 2 — Clinical Intensity and Length of Stay

| Metric | Value |
|---|---|
| Pearson r (LOS vs Medications) | **+0.47** (Moderate Positive) |
| Pearson r (LOS vs Lab Tests) | +0.32 (Weak Positive) |

> **Insight:** The longer a patient stays, the more medications they receive. However, intensive diagnostic testing (lab procedures) often occurs early in admission regardless of total stay duration.

### Finding 3 — The "Super-Utilizer" Outliers

| Metric | Extreme Outlier Value |
|---|---|
| Emergency visits in a year | Up to 76 visits |
| Inpatient stays in a year | Up to 21 stays |
| Medications in one encounter | 81 medications |

> **Insight:** A small group of "super-utilizer" patients with extreme counts represent the highest cost and urgency for the system, requiring hyper-targeted care plans.

---

## 5. Repository File Structure

```text
Capstone_Healthcare_Management/
│
├── C_P_HEALTHCARE_MANAGEMENT_Akansha_C.ipynb                 # Python EDA and Visualization notebook
├── Capstone_Project_Healthcare_Management_Detection_Akansha_C_.sql # MySQL metric extraction script
├── Capstone_Project_Healthcare_Management_Akansha_C_Report.pdf     # Full Report (Excel, Tableau, Insights & Certificate)
└── README.md                                                 # This file
```

---

## 6. Visualisations

Key visualizations available in the Python Notebook and the final PDF Report:

| Figure / Dashboard | Platform | Finding |
|---|---|---|
| Correlation Heatmap | Seaborn | +0.47 correlation between LOS and medications |
| Outlier Boxplots | Seaborn | Identifies extreme super-utilizers (76 emergencies) |
| Readmission vs Age | Matplotlib | Confirms 70-80 age bracket as highest risk |
| Clinical Load Bubble Chart | Tableau | Large clusters in high-med/high-lab regions |
| Executive KPI Dashboard | Tableau | Consolidated demographic and readmission insights |

---

## 7. Recommendations Summary

| # | Programme | Data Anchor | Target |
|---|---|---|---|
| 1 | **Proactive Geriatric Intervention** | 70-80 age bucket represents highest volume | Deploy targeted post-discharge monitoring for patients over 60 |
| 2 | **Super-Utilizer Flagging** | Outliers with >20 visits/year | Implement automated EHR alerts for extreme clinical complexity cases |
| 3 | **Medication Transition Management** | r = +0.47 (LOS vs Meds) | Enhance pharmacy consultations prior to discharge for high-medication patients |

---

## 8. Author

**Akansha Chowdhury**

- **Project:** Healthcare Management: Patient Readmission Prediction (Capstone)
- **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)
- **Tools:** Python · SQL · Tableau · Advanced Excel

---
