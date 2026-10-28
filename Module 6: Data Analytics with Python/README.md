# Module 6: Data Analytics with Python

### Coursework Project — IIT Guwahati Data Analytics Program

## 1. Module Overview

This module focuses on performing end-to-end exploratory data analysis (EDA) and statistical visualization using Python. The coursework demonstrates the ability to ingest raw data, handle datetime parsing, normalize numerical features, and generate visual business insights using industry-standard libraries like Pandas, Matplotlib, and Seaborn.

## 2. Project Breakdown

### Retail Sales Analysis Report

Developed a comprehensive Jupyter Notebook to analyze a quarterly retail sales dataset, uncovering trends in regional performance and demographic purchasing behaviors.

* **Data Preparation & Cleaning:**
  * Ingested 7,560 records, successfully parsing custom string dates into valid Python `datetime` objects.
  * Conducted data integrity checks using `.isna()` and `.notna()`, verifying 100% data completeness with zero missing values.

* **Data Normalization:**
  * Utilized Scikit-Learn’s `MinMaxScaler` to normalize the 'Unit' and 'Sales' features.
  * Transformed high-variance numerical columns to a standard scale between 0.0 and 1.0 for balanced statistical modeling.

* **Exploratory Data Analysis (EDA) & Visualization:**
  * **Time-Series Analysis:** Segmented the data into monthly DataFrames (October, November, December) using the `.loc` function and plotted continuous line charts to visualize daily fluctuations.
  * **Statistical Spread:** Generated Seaborn boxplots to evaluate distribution. Discovered October had a wide-spread variance, while December recorded the highest overall mean sales (4.51M).
  * **Categorical Breakdowns:** Created Pie charts using `.groupby()` and `.pivot_table()` aggregates to uncover key business drivers:
    * **Geography:** Over 70% of total volume comes from just three states (KY: 31%, NY: 22%, FL: 17%).
    * **Demographics & Time:** Proved that sales are perfectly equi-distributed (25% each) across Men, Women, Kids, and Seniors, as well as evenly distributed across Morning, Afternoon, and Evening shifts.

## 3. Tech Stack

| Skill / Tool | Application in Project | 
| ----- | ----- | 
| **Python 3.10+** | Core data manipulation and analytical programming | 
| **Pandas & NumPy** | Dataframe structuring, datetime parsing, and statistical aggregations | 
| **Scikit-Learn** | Data scaling and normalization (`MinMaxScaler`) | 
| **Matplotlib & Seaborn** | Building boxplots, line charts, and pie charts | 
| **Jupyter Notebook** | Interactive analytical environment | 

## 4. Repository File Structure

This folder contains the detailed visual report documenting the Python code cells, analytical charts, statistical findings, and the verified module credential.

*(Note: Reports are provided in `.docx` format as per repository specifications.)*

```text
Mod6_Python_Analytics/
│
├── Sales_Analysis_Report.docx       # Step-by-step Python EDA, visual charts, and business insights
├── Sales_Analysis_Report.ipynb      # Python Notebook
├── Certificate_Python_Analytics.pdf # Verified module completion credential
└── README.md                        # This file
```

## 5. Author

**Akansha Chowdhury**

* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)

---
