# Module 3: Extract, Transform, and Load (ETL) using AWS Cloud
### Coursework Project — IIT Guwahati Data Analytics Program

![AWS](https://img.shields.io/badge/AWS-Cloud_ETL-FF9900?logo=amazonaws&logoColor=white)
![S3](https://img.shields.io/badge/Amazon_S3-Storage-569A31?logo=amazons3&logoColor=white)
![Glue](https://img.shields.io/badge/AWS_Glue-Data_Integration-8C4FFF?logo=awsglue&logoColor=white)

---

## 1. Module Overview

This module demonstrates the ability to build scalable, cloud-native data pipelines using the Amazon Web Services (AWS) ecosystem. The coursework focuses on configuring secure storage, managing identity and access, automating schema discovery, and utilizing visual ETL workflows to transform raw CSV data into highly optimized Parquet formats.

---

## 2. Project Breakdown

### Project 1: Retail Data Management
Engineered a production-ready retail data pipeline to unify transaction and product details.
* **Cloud Infrastructure (S3 & IAM):** Configured secure Amazon S3 staging buckets (`etl-cep-01-15`) with separate directories for `transaction-files` and `product-files`. Implemented secure `glue-role` IAM access policies.
* **Schema Discovery:** Defined custom data classifiers and built automated AWS Glue Crawlers (`retail-crawl`) to infer schemas and populate the `abc-retail` Data Catalog database.
* **Visual ETL Pipeline:** Designed an AWS Glue Visual ETL job to ingest the raw CSVs, perform multi-table Joins, drop redundant fields, and load the processed data into a target S3 bucket (`etl-cep-output-01-15`) as Snappy-compressed Parquet files.

### Project 2: Social Media Data Integration
Architected a cloud infrastructure to integrate, clean, and analyze disparate social media streams (Twitter and Blog data).
* **Data Ingestion:** Staged unstructured `sample_tweets.csv` and `sample_blogs.csv` files into isolated S3 directories (`blog-data`, `etl-social-media`).
* **Advanced Data Cataloging:** Created custom `twitter_data` and `blog_data` classifiers, deploying dedicated Glue Crawlers to structure the raw inputs into the `social_media_data` database.
* **Complex Transformations:** Built a comprehensive Glue Visual ETL workflow utilizing advanced nodes: **Join**, **DropFields**, **Regex Extractor**, and **Aggregate**.
* **Data Optimization:** Successfully transformed and partitioned the aggregated social media insights into compressed `.parquet` formats, drastically reducing query latency and storage costs.

---

## 3. Tech Stack

| Skill / Tool | Application in Project |
|---|---|
| **Amazon S3** | Data Lake storage, staging raw inputs, and landing transformed outputs |
| **AWS IAM** | Security, permissions, and Role-Based Access Control (RBAC) |
| **AWS Glue Data Catalog** | Custom Classifiers, automated schema inference (Crawlers), Metadata management |
| **AWS Glue Visual ETL** | Serverless data integration, Joins, Regex extraction, and Aggregation |
| **Data Optimization** | Transforming raw CSVs into Snappy-compressed Parquet datasets |

---

## 4. Repository File Structure

This folder contains the detailed visual reports documenting the AWS console configuration, pipeline execution, and the verified module credential. 

*(Note: Reports are provided in `.docx` format as per repository specifications.)*

```text
Mod3_AWS_ETL/
│
├── Retail_Data_Management_Report.docx         # Step-by-step AWS configuration and pipeline output for Retail
├── Social_Media_Data_Integration_Report.docx  # Complex ETL workflow and Regex transformations for Social Media
├── Certificate_AWS_ETL.pdf                    # Verified module completion credential
└── README.md                                  # This file
```

---

## 5. Author

**Akansha Chowdhury**
* **Program:** Professional Certificate in Data Analytics & Generative AI (IIT Guwahati)

---
