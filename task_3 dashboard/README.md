# Task 3: Interactive Customer Data Dashboard

An interactive Power BI Dashboard designed to explore and analyze customer demographics, behavior, segments, and spending patterns. This dashboard uses the cleaned and enriched customer dataset to provide key stakeholders with actionable business insights.

## 📂 Folder Contents

*   📊 **[dashboard.pbix](./dashboard.pbix)**: The primary Power BI template containing all visualization pages, data models, and DAX measures.
*   📄 **[customerdatacleaned.csv](./customerdatacleaned.csv)**: The cleaned dataset supporting this dashboard, featuring customer details, calculated ages, transaction history, and custom segmentation categories.
*   📸 **[screenshot/](./screenshot/)**: Captured views of the dashboard panels.

---

## 📈 Key Metrics & Features

The dashboard is structured to track critical business KPIs, including:
1.  **Demographics Analysis**: Understand your user base by age, gender, and geographic distribution (state-wise).
2.  **Segmentation Performance**: Identify revenue contributions from different customer tiers (`New`, `Regular`, `Premium`, `VIP`).
3.  **Engagement Levels**: Monitor spending behavior across active vs. inactive customer bases.
4.  **Top Contributors**: Quick access to top customer lists by transaction count and total spend.

---

## 📸 Dashboard Preview

Here are preview screenshots of the dashboard pages:

### 1. Executive Summary & Overview
Overview of total revenue, average spend per transaction, and overall sales trends.
![Executive Overview](./screenshot/Screenshot%202026-06-22%20145228.png)

### 2. Customer Demographics
Deep-dive into age groups, gender ratios, and geographic state-wise metrics.
![Demographics](./screenshot/Screenshot%202026-06-22%20145331.png)

### 3. Customer Segmentation & Engagement
Analysis of customer tiers and how active status affects revenue.
![Segmentation](./screenshot/Screenshot%202026-06-22%20145344.png)

### 4. High-Value Customers & State Distribution
Detailed tables and maps showcasing top spending states and highest value customers.
![Top Customers](./screenshot/Screenshot%202026-06-22%20145354.png)

---

## 🛠️ How to Use

1.  **Prerequisites**:
    *   Install [Microsoft Power BI Desktop](https://powerbi.microsoft.com/desktop/).
2.  **Opening the Project**:
    *   Double-click the `dashboard.pbix` file to open it in Power BI Desktop.
3.  **Data Refresh**:
    *   If the source data (`customerdatacleaned.csv`) is modified, click **Refresh** in the Power BI ribbon to update the visualizations.
