#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
from scipy.stats import chi2_contingency
df=pd.read_csv("C:/Users/sharm/OneDrive/Desktop/Customer_data/task_1 data wrangling/customerdatacleaned.csv",sep=";")
table=pd.crosstab(
    df['CustomerSegment'],
    df['IsActive']
)
print("Contingency Table")
print(table)
chi2,p,dof,expected=chi2_contingency(table)
print('P_Value:',p)
print('Degree of Freedom:',dof)
if (p<0.05):
    print("Reject H0")
    print("Customer Segment and Customer Activity are significantly related.")
else:
    print("Fail to Reject H0")
    print("Customer Segment and Customer Activity are independent.")


# In[2]:





# In[ ]:




