# Task 2: Exploratory Data Analysis (EDA)

This folder contains SQL scripts, Python analysis scripts, visual assets, and slide presentations focused on analyzing the cleaned customer dataset. It covers customer profiles, segment distributions, state-level performance, gender comparisons, and engagement metrics.

## 📂 Files Overview

*   📜 **[Customer_EDA.sql](./Customer_EDA.sql)**: SQL queries for computing descriptive statistics (average, min, max spend), distribution of customer segments, state-wise customer counts and revenues, activity ratios, and identifies the top 10 highest-value customers.
*   📜 **[customer_eda.py](./customer_eda.py)**: Python script utilizing `pandas`, `matplotlib`, and `seaborn` to generate distribution plots, scatter plots, correlation heatmaps, and segment contribution charts.
*   📊 **[Customer_Analytics_Dashboard.pptx](./Customer_Analytics_Dashboard.pptx)**: Presentation slide deck summarizing key insights and business recommendations from the EDA.
*   📸 **[Screenshot/](./Screenshot/)**: Rendered data visualizations exported from the Python script.

---

## 📊 Key Highlights & Insights

1.  **Descriptive Statistics**:
    *   Overview of minimum, average, and maximum spending trends.
    *   Ratio of Active vs. Inactive customers.
2.  **State-wise Breakdown**:
    *   Top income-generating states (Kolkata, Mumbai, Hyderabad, Pune, Bengaluru, etc.).
    *   Customer density per region.
3.  **Customer Tiers**:
    *   Breakdown of the client base into `New`, `Regular`, `Premium`, and `VIP` groups based on transaction volume and revenue thresholds.
4.  **Correlation Analysis**:
    *   Explores relationships between customer Age, total purchases, average transaction value, and total spend.

---

## 🛠️ Setup & Execution

### Python Requirements
Install the required packages using pip:
```bash
pip install pandas matplotlib seaborn
```

### Run Python Scripts
Execute the script from the root repository or inside this directory:
```bash
python customer_eda.py
```
This generates and saves data charts directly to the folder.
