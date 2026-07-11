# SuperStore-Data-Warehouse
Data Warehouse implementation for the SuperStore dataset using SQL Server Integration Services (SSIS) and SQL Server.
# SuperStore Data Warehouse

## 📌 Project Overview

This project focuses on designing and implementing a **Data Warehouse solution** based on the SuperStore sales dataset.

The main goal of this project was to transform raw sales data from an Excel source into a structured Data Warehouse using **SQL Server and SSIS**, applying Data Warehouse design principles and ETL processes.

This project represents my first Data Warehouse implementation and helped me gain practical experience in:

* Data Warehouse Design
* ETL Development
* Data Integration
* Dimensional Modeling
* SQL Server Data Management

---

## 🏗️ Project Architecture

The project follows an ETL-based Data Warehouse architecture:

**Source Data → ETL Process → Data Warehouse → Analysis Layer**

The workflow includes:

1. Extracting raw data from Excel files
2. Transforming and cleaning data using SSIS
3. Loading transformed data into SQL Server Data Warehouse
4. Designing dimensional models for analytical purposes

The complete architecture is available in:

[Project Architecture](Images/SuperStoreDW_Diagram.png)

---

## 📂 Dataset

**Dataset Name:** SuperStore Sales Dataset

**Source Format:** Excel (.xlsx)

**Number of Records:** 9,994 sales records

The dataset contains sales-related information including:

* Orders
* Customers
* Products
* Geographic information
* Shipping methods
* Sales performance metrics

---

## 🛠️ Technology Stack

| Technology                             | Usage                                      |
| -------------------------------------- | ------------------------------------------ |
| SQL Server                             | Database and Data Warehouse implementation |
| SQL Server Management Studio (SSMS)    | Database development and management        |
| Visual Studio                          | SSIS package development                   |
| SQL Server Integration Services (SSIS) | ETL implementation                         |
| Microsoft Excel                        | Data source                                |

---

## 🔄 ETL Process

The ETL pipeline was developed using **SQL Server Integration Services (SSIS)**.

### Implemented SSIS Components:

* **Data Flow Task**

  * Data movement and transformation workflow

* **Lookup Transformation**

  * Mapping source data with dimension tables

* **Data Conversion**

  * Handling data type transformations

* **Execute SQL Task**

  * Implementing Full Load strategy

The ETL process was responsible for preparing raw data and loading it into the designed Data Warehouse structure.

---

## 🏛️ Data Warehouse Design

The Data Warehouse was designed using a **Snowflake Schema** approach.
[Snowflake Schema](Images/Snowflake_Schema.png)

### Fact Table

### FactOrder

Contains transactional measures:

* Sales
* Quantity
* Discount
* Profit

Each record represents an order transaction containing:

* Sales
* Quantity
* Discount
* Profit
* Order Date Key
* Ship Date Key
* Customer Surrogate Key
* Ship Mode Surrogate Key
* Product Surrogate Key

---

## 📊 Dimension Tables

The following dimension tables were created:

### DimDate

Stores date-related attributes for time analysis.

### DimCustomer

Contains customer information.

### DimGeography

Contains geographic information related to customers.

### DimProduct

Stores product-related attributes.

### DimShipMode

Contains shipping method information.

---

## 📁 Repository Structure

```
SuperStore-Data-Warehouse

│
├── SQL
│   └── SQL Scripts
│
├── SSIS
│   └── SSIS Packages
│
├── Images
│   ├── Architecture.png
│   └── Snowflake_Schema.png
│
└── Data
    └── Source Dataset
```

---

## 📚 Learning Outcomes

Through this project, I gained practical experience in:

* Designing a Data Warehouse from raw data
* Implementing Snowflake Schema
* Developing ETL workflows using SSIS
* Importing and transforming Excel data into SQL Server
* Creating Fact and Dimension tables
* Understanding the data integration process

---

## 🚀 Future Improvements

Potential improvements for this project include:

* Developing Power BI dashboards for business analysis
* Implementing Incremental Load instead of Full Load
* Adding performance optimization techniques
* Applying advanced data quality checks
* Expanding the warehouse with additional analytical models
