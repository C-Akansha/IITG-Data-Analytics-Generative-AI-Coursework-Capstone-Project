# Module 2: Relational Database Modeling & SQL Analytics
### Coursework Project — IIT Guwahati Data Analytics Program

![MySQL](https://img.shields.io/badge/MySQL-8.0%2B-4479A1?logo=mysql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Advanced-informational?logo=sqlite&logoColor=white)

---

## 1. Module Overview

This module focuses on the architecture, querying, and optimization of relational databases using MySQL. The coursework includes two distinct industry scenarios—Human Resources and Airline Logistics—demonstrating the ability to design Entity-Relationship (E-R) schemas, write complex nested queries, and extract business metrics using advanced SQL logic.

---

## 2. Project Breakdown

### Project 1: Employee Performance Mapping (HR Analytics)
Designed a comprehensive relational database to evaluate departmental performance, assign rankings, and standardize job roles across a global data science team.
* **Schema Design & ER Modeling:** Formatted raw data, altered data types, and architected E-R diagrams by enforcing primary and foreign key constraints across `emp_record_table`, `proj_table`, and `data_science_team`.
* **Advanced Querying & Aggregation:** Utilized window functions (`RANK()`, `MAX() OVER PARTITION BY`) to rank employees by experience and evaluate peak performance dynamically within respective departments.
* **Database Automation (Stored Functions):** Engineered a deterministic stored function `JobProfile(expYears)` to automate role assignments based on experience, comparing actual roles against organizational standards to flag mismatches.
* **Optimization:** Created indexes (`idx_first_name`) and analyzed query execution plans using `EXPLAIN` to optimize data retrieval speeds.

### Project 2: Air Cargo Analysis (Logistics Analytics)
Developed an analytics database for airline transport data to track cargo routing, passenger metrics, and revenue benchmarks.
* **Relational Logic:** Standardized date formats and designed normalized data schemas for customers, flight routes, and ticket details.
* **Metric Extraction & Views:** Built dynamic virtual tables (`CREATE VIEW`) to isolate high-value business class customers and utilized nested subqueries to calculate average passengers per flight route.
* **Advanced Aggregation:** Applied `GROUP BY ... WITH ROLLUP` functions to calculate total prices across different aircraft and passenger subsets.
* **Programmability & Security:** Developed stored procedures (`get_long_routes`) to automate the extraction of long-haul flights (>2000 miles) and executed Database Administrator (DBA) tasks by creating new users and granting specific database privileges.

---

## 3. Tech Stack

| Skill / Tool | Application in Project |
|---|---|
| **MySQL / SQL Dialect** | Core database scripting language |
| **Relational Design (DDL)** | E-R Diagrams, Primary/Foreign Keys, `ALTER TABLE` |
| **Advanced Querying (DQL)** | Window Functions, Multi-table `JOIN`s, Subqueries, `UNION` |
| **Database Programming**| Stored Procedures, Custom Deterministic Functions |
| **Performance & Admin** | Indexing, `EXPLAIN` Execution Plans, User Privileges (`GRANT`) |

---

## 4. Repository File Structure

This folder contains the detailed analytical reports with visual E-R diagrams, query outputs, and the verified module credential.

```text
Mod2_SQL_Databases/
│
├── Employee_Performance_Mapping_Report.doc  # HR Database queries, logic, and ER diagram
├── Air_Cargo_Analysis_Report.doc            # Logistics queries, stored procedures, and ER diagram
├── Certificate_SQL_Databases.pdf            # Verified module completion credential
└── README.md                                # This file
```

---

## 5. Author

**Akansha Chowdhury**
* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)

---
