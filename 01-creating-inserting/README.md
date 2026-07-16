# Student Management Database Schema

## Overview
This repository contains the foundational relational database schema for a Student Management System. The schema is designed to store and manage student demographics, academic performance (marks), proctor/advisor assignments, and parent/guardian contact information.

## Files Included

- `creating-tables.sql`: creates the student management database schema and all required tables.
- `inserting-values-fixed.sql`: inserts corrected sample data into the tables for testing and practice.
- `inserting-values-interactive.sql`: inserts sample data in an interactive manner for guided practice and manual entry.

## Database Schema

The database consists of four primary tables, all linked by the student's Registration Number (RegNo) which acts as the Primary Key for each table, ensuring a 1:1 relationship across the entities.

### 1. Student_Details
Stores the primary academic and contact information for the student.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| Name | VARCHAR(50) | NOT NULL | Full name of the student. |
| RegNo | VARCHAR(9) | PRIMARY KEY, CHECK (length=9) | Unique 9-character registration number. |
| School | VARCHAR(20) | None | School or faculty the student belongs to. |
| Course | VARCHAR(20) | None | Enrolled course or major. |
| Email | VARCHAR(30) | None | Student's email address. |
| mobileNo | VARCHAR(10) | CHECK (length=10) | Student's 10-digit mobile number. |

### 2. Marks
Stores the academic scores for up to five subjects.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| Name | VARCHAR(50) | NOT NULL | Full name of the student. |
| RegNo | VARCHAR(9) | PRIMARY KEY, CHECK (length=9) | Unique 9-character registration number. |
| Sub1 to Sub5 | INTEGER | DEFAULT 0, CHECK (0-100) | Marks for Subjects 1 through 5. |

### 3. Proctor_Details
Tracks the assigned academic proctor or advisor for each student.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| Std_Name | VARCHAR(50) | NOT NULL | Full name of the student. |
| RegNo | VARCHAR(9) | PRIMARY KEY, CHECK (length=9) | Unique 9-character registration number. |
| ProcName | VARCHAR(50) | NOT NULL | Full name of the assigned proctor. |
| Proc_email | VARCHAR(30) | None | Proctor's email address. |
| Proc_mobileNo | VARCHAR(10) | CHECK (length=10) | Proctor's 10-digit mobile number. |

### 4. Parents_Details
Maintains emergency contact information and addresses for the student's parents.

| Column Name | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| Std_Name | VARCHAR(50) | NOT NULL | Full name of the student. |
| RegNo | VARCHAR(9) | PRIMARY KEY, CHECK (length=9) | Unique 9-character registration number. |
| FatherName | VARCHAR(50) | NOT NULL | Full name of the father. |
| Father_email | VARCHAR(30) | None | Father's email address. |
| Father_mobileNo | VARCHAR(10) | CHECK (length=10) | Father's 10-digit mobile number. |
| MotherName | VARCHAR(50) | NOT NULL | Full name of the mother. |
| Mother_email | VARCHAR(30) | None | Mother's email address. |
| Mother_mobileNo | VARCHAR(10) | CHECK (length=10) | Mother's 10-digit mobile number. |
| Address | VARCHAR(100) | None | Home address. |

---

## Data Validations & Constraints
To ensure data integrity, the following constraints have been implemented at the database level:
* **Registration Numbers:** Must be exactly 9 characters long.
* **Mobile Numbers:** Must be exactly 10 characters long across all tables (Students, Proctors, Parents).
* **Marks:** Subject scores are constrained between 0 and 100 and default to 0 if not provided.
* **Mandatory Fields:** Names and Registration numbers cannot be NULL.

---

## Setup & Installation

To initialize the database, run `creating-tables.sql` first to create the schema, then run either `inserting-values-fixed.sql` for prewritten sample data or `inserting-values-interactive.sql` for an interactive data-entry workflow using your preferred SQL client.