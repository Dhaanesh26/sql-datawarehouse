# 🗄️ Data Warehouse and Analytics Project

## 📌 Project Overview

This project demonstrates how to build a full-stack SQL Data Warehouse using **SQL Server**. It includes data ingestion through ETL processes, dimensional data modeling, and analytics-ready reporting layers. The pipeline transforms raw data into structured, meaningful insights for business intelligence and decision-making.

---

## 🧱 Tech Stack

- **Database:** SQL Server
- **ETL Tools:** SQL Server Integration Services (SSIS), T-SQL Scripts
- **Data Modeling:** Star Schema, Snowflake Schema
- **Analytics & Reporting:** SQL Queries, Power BI
- **Version Control:** Git & GitHub

---

## 🗂️ Project Requirements

### Building the Data Warehouse (Data Engineering)

### Objective 
Develop a modern data warehouse using SQL server to consolidate sales data, enabling analytical reporting and informed decision making

### 📋 Specifications

- **Data Sources**  
  - Data is imported from two primary systems:  
    - **CRM (Customer Relationship Management):** Provides customer profiles, contact information, and transaction history.  
    - **ERP (Enterprise Resource Planning):** Provides product data, inventory levels, order details, and financial records.  
  - The data is initially extracted as CSV files or via direct database connections for ETL processing.

- **Data Quality**  
  - Handles null values, duplicates, and inconsistent formatting in the staging area  
  - Validates data types and business rules (e.g., valid customer/product IDs for sales records)  
  - Normalizes date formats, currency types, and categorical values  
  - Logs ETL errors and rejected rows for review

- **Integration**  
  - Staging tables integrate data from multiple systems using common keys  
  - Surrogate keys and lookup mappings are used to build clean dimensional tables  
  - Conformed dimensions ensure consistent reporting across different domains

- **Scope**  
  - Focuses on historical and current sales data for the past 3 years  
  - Core business domains: **Sales**, **Customers**, **Products**, **Regions**, **Time**  
  - Designed for **monthly refresh**, with support for incremental loads  
  - Enables reporting on KPIs like revenue trends, top customers/products, and regional sales

- **Documentation**  
  - **ETL Flow Diagram:** Available in `/docs/etl-diagram.png`  
  - **Data Model Schemas:** Star schema diagrams and table structures in `/models/schema-designs/`  
  - **Data Dictionary:** Field-level metadata and definitions in `/docs/data-dictionary.md`  
  - All SQL scripts include inline comments and follow naming conventions for clarity

### 📊 BI Analytics & Reporting

#### 🎯 Objective
The primary goal of the BI Analytics & Reporting layer is to transform integrated and modeled data into actionable business insights through interactive dashboards and meaningful KPIs. This enables data-driven decision-making across Sales, Marketing, and Operations teams.

---

#### 📌 Key Metrics & KPIs

- **Total Sales Revenue**  
- **Monthly Revenue Trends**  
- **Top 10 Products by Revenue & Quantity Sold**  
- **Customer Lifetime Value (CLTV)**  
- **Average Order Value (AOV)**  
- **Regional Sales Performance**  
- **Repeat vs New Customers**  
- **Discount Impact on Sales**

---

#### 🧾 Sample Analytical Use Cases

- **What are the top-performing products by region?**  
- **How has revenue grown year-over-year and month-over-month?**  
- **Which customer segments contribute most to revenue?**  
- **What is the impact of discounts on profit margins?**  
- **Which regions have declining sales trends that need attention?**

---

#### 📍 Tools Used

- **SQL Server** for writing analytical queries on fact and dimension tables  
- **Power BI** *(or Tableau)* for creating visual dashboards (optional)  
- **Views & Stored Procedures** created in SQL Server to support reporting layer

---

#### 📤 Output Formats

- Tabular reports from SQL queries  
- Interactive dashboards (Power BI) with slicers by region, category, time  
- Exportable formats: Excel, PDF for stakeholder review

---

---

### 🪪 License

📄 **MIT License**

This project is licensed under the **[MIT License](LICENSE)** — you are free to:

- ✅ **Use** the project for personal or commercial purposes  
- ✅ **Modify** the codebase to suit your needs  
- ✅ **Distribute** copies or adaptations  
- ✅ **Merge** with other projects

---

### 👨‍💻 About Me

Hi! I'm **Dhaanesh**, a final-year student graduating in **2025**, currently focused on building real-world **Data Engineering** and **Data Analytics** projects.

- 🎯 Passionate about data pipelines, SQL optimization, and end-to-end analytics solutions  
- 🏗️ Working on hands-on projects involving **ETL processes**, **data warehousing**, and **BI reporting**  
- 💡 Eager to explore tools like **SQL Server**, **Apache Airflow**, **Power BI**, and **Python-based data engineering**  
- 🌱 Always learning and open to collaboration on open-source or academic data projects

📫 Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/dhaanesh-s) or explore more on my [GitHub Profile](https://github.com/Dhaanesh26)







