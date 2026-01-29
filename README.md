# Data Warehouse and Analytics Project

Welcome to the Data Warehouse and Analytics Project repository 🚀  
This project demonstrates an end-to-end data warehousing and analytics solution, from building a modern data warehouse to generating actionable business insights. It is designed as a portfolio project and follows industry best practices in data engineering and analytics.

---

## Data Architecture

This project follows the Medallion Architecture using three layers:

<img width="631" height="316" alt="Screenshot 2026-01-29 202611" src="https://github.com/user-attachments/assets/900a9238-331d-42a8-aabc-e8d261280295" />


### Bronze Layer
- Stores raw data exactly as received from source systems  
- Data is ingested from CSV files into a SQL Server database

### Silver Layer
- Performs data cleansing, standardization, and normalization  
- Prepares high-quality data for analytical use

### Gold Layer
- Contains business-ready data  
- Modeled using a star schema for reporting and analytics

---

## Project Overview

This project includes the following components:

- Data Architecture: Designing a modern data warehouse using Bronze, Silver, and Gold layers  
- ETL Pipelines: Extracting, transforming, and loading data from ERP and CRM systems  
- Data Modeling: Creating fact and dimension tables optimized for analytics  
- Analytics and Reporting: Developing SQL-based insights for decision-making  

---

## Skills Demonstrated

This repository is useful for showcasing skills in:

- SQL Development  
- Data Architecture  
- Data Engineering  
- ETL Pipeline Development  
- Data Modeling  
- Data Analytics  

---

## Tools and Resources

All tools used in this project are free:

- Datasets: CSV files used as source data  
- SQL Server Express: Database engine  
- SQL Server Management Studio (SSMS): Database management tool  
- GitHub: Version control and collaboration  
- Draw.io: Data architecture and modeling diagrams  
- Notion: Project planning and task tracking  

---

## Project Requirements

### Building the Data Warehouse (Data Engineering)

Objective:  
Develop a modern data warehouse using SQL Server to consolidate sales data and support analytical reporting.

Specifications:
- Import data from ERP and CRM source systems provided as CSV files  
- Clean and resolve data quality issues  
- Integrate data into a single analytical data model  
- Focus only on the latest dataset (no historization required)  
- Provide clear documentation for business and analytics teams  

### Analytics and Reporting (Data Analysis)

Objective:  
Develop SQL-based analytics to generate insights on:

- Customer behavior  
- Product performance  
- Sales trends  

These insights support data-driven decision-making.

For more details, see docs/requirements.md.

---

## Repository Structure

## Repository Structure

```text
sql_data_warehouse_project/
│
├── datasets/                     Raw ERP and CRM datasets
│
├── docs/                         Documentation and architecture files
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming-conventions.md
│
├── scripts/                      SQL scripts for ETL
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/                        Test and data quality scripts
│   ├── quality_checks_silver.sql
│   └── quality_checks_gold.sql
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt




---

## License

This project is licensed under the MIT License.  
You are free to use, modify, and share this project with proper attribution.

---

## About Me

Hi, I’m Alifa Rahman, a 21-year-old recent graduate with interests in data analytics, data engineering, software development, game development, and web development. I am highly motivated, quick to learn, and continuously building strong technical skills.

---

## Stay Connected

Feel free to connect and follow for more learning resources and projects.
