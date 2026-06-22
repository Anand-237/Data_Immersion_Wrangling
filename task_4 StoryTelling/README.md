# Task 4: Customer Data Storytelling & Hypothesis Testing

This folder contains statistical analysis scripts and a business presentation focused on hypothesis testing and data-driven storytelling for customer demographic segments, engagement levels, and spending patterns.

## 📂 Folder Contents

*   📜 **[Chi-Square_Test.py](./Chi-Square_Test.py)**: Python script performing a Chi-Square Test of Independence to determine if there is a significant relationship between Customer Segment and Customer Activity.
*   📜 **[T_Test.py](./T_Test.py)**: Python script executing a two-sample independent T-Test to check for significant differences in total spending (`TotalSpent`) between Male and Female customer groups.
*   📊 **[Customer_Performance_Dashboard.pptx](./Customer_Performance_Dashboard.pptx)**: Business slides summarizing insights, analytical results, and customer performance stories for stakeholders.
*   📄 **[customerdatacleaned.csv](./customerdatacleaned.csv)**: Cleaned customer profile dataset used by the statistical models.

---

## 🔬 Statistical Analysis & Hypotheses

### 1. Chi-Square Test of Independence
*   **Variable 1**: `CustomerSegment` (New, Regular, Premium, VIP)
*   **Variable 2**: `IsActive` (Active/Inactive status)
*   **Objective**: Test if customer segments have significantly different activity rates.
*   **Null Hypothesis ($H_0$)**: Customer Segment and Customer Activity are independent of each other.
*   **Alternative Hypothesis ($H_1$)**: Customer Segment and Customer Activity are significantly related.
*   **Result**: P-value > 0.05. Failed to reject $H_0$; customer segment membership and activity levels are independent.

### 2. Two-Sample Independent T-Test
*   **Grouping Variable**: `Gender` (Male vs. Female)
*   **Continuous Variable**: `TotalSpent` (Total financial contributions)
*   **Objective**: Determine whether gender influences the amount spent by a customer.
*   **Null Hypothesis ($H_0$)**: There is no significant difference in average spending between Male and Female customers.
*   **Alternative Hypothesis ($H_1$)**: There is a significant difference in average spending between Male and Female customers.
*   **Result**: P-value < 0.05. Rejected $H_0$; there is a statistically significant difference in overall spending across genders.

---

## 🛠️ Getting Started & Execution

### Prerequisites
Make sure you have Python installed, along with the required libraries:
```bash
pip install pandas scipy
```

### Running the Tests
1.  **Run the Chi-Square Test**:
    ```bash
    python Chi-Square_Test.py
    ```
2.  **Run the T-Test**:
    ```bash
    python T_Test.py
    ```
