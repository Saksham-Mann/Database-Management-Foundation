# Customer Database Schema

## Overview
This repository contains the foundational relational database schema for a Customer Management System. The schema is designed to store and manage customer profile information and purchase transaction details.

## Files Included

- `creating-tables.sql`: creates the customer database schema and the required customer and transaction tables.
- `inserting-values.sql`: inserts sample customer and transaction data for testing and practice.

## Database Schema

The database consists of two primary tables linked through the customer identifier.

### 1. Customer
Stores the basic personal and contact information for each customer.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| CustomerID | VARCHAR(5) | PRIMARY KEY | Unique identifier for the customer. |
| CustomerName | VARCHAR(50) | NOT NULL | Full name of the customer. |
| Gender | VARCHAR(6) | None | Customer gender. |
| Age | INT | CHECK (Age BETWEEN 0 AND 100) | Customer age. |
| City | VARCHAR(20) | None | Customer city. |
| Email | VARCHAR(30) | None | Customer email address. |

### 2. Transaction
Stores purchase-related information for each transaction.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| TransactionID | VARCHAR(7) | PRIMARY KEY | Unique identifier for the transaction. |
| CustomerID | VARCHAR(5) | None | Reference to the associated customer. |
| TransactionDate | VARCHAR(10) | NOT NULL | Date of the transaction. |
| ProductName | VARCHAR(50) | NOT NULL | Name of the purchased product. |
| Quantity | INT | None | Quantity purchased. |
| UnitPrice | FLOAT | DEFAULT 0.0 | Price per unit. |
| TotalAmount | FLOAT | DEFAULT 0.0 | Total amount for the transaction. |

---

## Data Validations & Constraints
To ensure data integrity, the following constraints have been implemented at the database level:
* **Customer ID:** Must be unique and act as the primary key.
* **Age:** Must be between 0 and 100.
* **Required Fields:** Customer name and transaction date/product name cannot be NULL.

---

## Setup & Installation

To initialize the database, run `creating-tables.sql` first to create the schema, then run `inserting-values.sql` to load sample data into the tables using your preferred SQL client.

## Citation

- **Dataset Name:** Customer Transactions Dataset
- **Source:** Kaggle
- **Author:** Yamin H.
- **Link:** https://www.kaggle.com/datasets/yaminh/customer-transactions-dataset
