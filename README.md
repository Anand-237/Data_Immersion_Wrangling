# Customer Data Analysis: Data Wrangling & Exploratory Data Analysis (EDA)

This repository contains SQL scripts, Python analysis scripts, and cleaned datasets focused on customer profiles, behaviors, and financial spending. The project is organized into modular tasks to clean, enrich, and explore customer data.

## 📂 Repository Structure

The repository contains the following directories:

*   📁 **[task_1 data wrangling](./task_1%20data%20wrangling)**: Data hygiene, validation, and feature engineering.
    *   `customer_data.sql`: Main SQL cleaning and feature engineering script.
    *   `details.sql`: Database schema definition and constraint enforcement.
    *   `customerdatacleaned.csv` / `customerdetails_500_cleaned.csv` / `customerdetails_500_cleaned.xlsx`: Cleaned customer profile datasets.
    *   `README.md`: Specific documentation for Task 1 wrangling pipeline.
*   📁 **[task_2 EDA](./task_2%20EDA)**: Statistical modeling, visual analysis, and business reports.
    *   `Customer_EDA.sql`: SQL queries analyzing descriptive statistics, frequencies, and segments.
    *   `customer_eda.py`: Python script utilizing `pandas`, `matplotlib`, and `seaborn` to generate distribution, correlation, and segmentation charts.
    *   `Customer_Analytics_Dashboard.pptx`: Comprehensive presentation/slideshow outlining EDA insights.
    *   `Screenshot/`: Folder containing visualization screenshots generated from Python/SQL analysis.

---

## 🛠️ Task 1: Data Wrangling & Cleaning

### 1. Data Standardization
*   Formatted all name fields (`FirstName`, `LastName`) and `Email` to lowercase.
*   Trimmed leading/trailing whitespaces.
*   Handled missing/null values in core fields such as `DateOfBirth`, `Gender`, `Email`, and `Phone`.

### 2. Feature Engineering
*   **Customer Age**: Calculated dynamically based on `DateOfBirth`.
*   **Average Spend per Transaction**: Derived from `TotalSpent` and `TotalPurchases`.
*   **Customer Segmentation**: Classified customers into categories (`New`, `Regular`, `Premium`, `VIP`) based on total spend thresholds.

---

## 📊 Task 2: Exploratory Data Analysis (EDA)

### 1. Descriptive Statistics
*   Calculated average, minimum, and maximum values of customer spend (`TotalSpent`).
*   Analyzed customer segments distribution to understand high-value customer ratios.

### 2. Demographics & Engagement
*   **State-wise Revenue & Customer Count**: Summarized customer distribution and financial contributions across states.
*   **Active vs Inactive Customers**: Visualized retention and active customer status ratios.
*   **Gender Analysis**: Compared average spend values across gender groups.
*   **Top 10 Customers**: Identified high-value customers by overall spend.

---

## 🚀 Getting Started

1.  **Database Setup**:
    *   Set up a MySQL server instance and create a database named `customer_data`.
    *   Execute the `details.sql` script inside the `task_1` folder to initialize schema tables and define primary keys/constraints.
    *   Import data and run `customer_data.sql` to clean and segment the records.
2.  **Exploratory Analysis (Python)**:
    *   Install requirements: `pip install pandas matplotlib`
    *   Run `python "task_2 EDA/customer_eda.py"` to review generated visualizations.
