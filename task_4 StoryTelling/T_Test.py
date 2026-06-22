#!/usr/bin/env python
# coding: utf-8

# In[27]:


import pandas as pd
from scipy.stats import ttest_ind
df=pd.read_csv("C:/Users/sharm/OneDrive/Desktop/Customer_data/task_1 data wrangling/customerdatacleaned.csv",sep=";")
Male=df[df['Gender']=='Male']['TotalSpent']
Female=df[df['Gender']=='Female']['TotalSpent']
t_test,p_value=ttest_ind(Male,Female)
print('T-Test Value:',round(t_test))
print('P-Value',round(p_value))

if (p_value <0.05):
    print("Reject H0")
    print("There is a significant difference in spending between Male and Female customers.")
else:
    print("Failed to Reject H0")
    print("There is a significant difference in spending between Male and Female customers.")
    


# In[28]:





# In[ ]:




