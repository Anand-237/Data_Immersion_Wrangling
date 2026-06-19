# Data Immersion & Wrangling: Customer Data Analysis

A collection of SQL scripts and datasets designed for cleaning, transforming, and analyzing customer profiles. This repository focuses on data hygiene (standardizing strings, handling missing values, identifying anomalies) and feature engineering (calculating customer age, average spend, and tier segmentation).

## 📂 Project Structure

- **`customer_data.sql`**: The main data cleaning and analysis pipeline. Contains updates to lower/trim names, email format validation, calculation of customer age and average spend, and SQL logic for customer tier segmentation.
- **`details.sql`**: Schema modification script specifying constraints (primary keys, `NOT NULL` constraints, column data types) for database structure enforcement.
- **`customerdetails_500_cleaned.csv`**: Cleaned dataset in CSV format containing customer information.
- **`customerdetails_500_cleaned.xlsx`**: Cleaned dataset in Excel format containing customer information.

## 🛠️ Data Wrangling Tasks Performed

### 1. Data Cleaning & Standardization
- **Text Formatting**: Trimmed whitespace and converted `FirstName`, `LastName`, and `Email` fields to lowercase.
- **Missing Value Handling**: Replaced missing fields in `DateOfBirth`, `Gender`, `Email`, and `Phone` with default placeholders (`'none'` or `NULL`).
- **Data Validation**: 
  - Searched for invalid email patterns (e.g., matching the `%@%.%` pattern).
  - Detected logical anomalies, such as customers with a `LastPurchaseDate` that occurs before their `JoinDate`.
- **Duplicate Detection**: Grouped records by `CustomerID` to identify any duplicate entries.

### 2. Feature Engineering
- **Customer Age**: Computed the dynamic age of each customer using:
  ```sql
  TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE())
  ```
- **Average Spend per Transaction**: Derived the average value spent per order using:
  ```sql
  TotalSpent / TotalPurchases
  ```
- **Customer Segmentation**: Categorized customers based on their spending levels:
  - **`New`**: Spend $\le$ \$4,000
  - **`Regular`**: Spend $\le$ \$13,000
  - **`Premium`**: Spend $\le$ \$43,000
  - **`VIP`**: Spend $>$ \$43,000

### 3. Schema & Integrity Enforcement
- Set primary keys on `CustomerId`.
- Handled data type modifications (`DATE`, `VARCHAR`, etc.) and enforced `NOT NULL` rules to guarantee database integrity.

## 🚀 Getting Started

1. Set up a MySQL database (e.g., `customer_data`).
2. Run the queries inside `details.sql` to apply standard constraints and definitions to your table.
3. Import the clean dataset or run `customer_data.sql` to clean existing messy records and perform feature extraction.
