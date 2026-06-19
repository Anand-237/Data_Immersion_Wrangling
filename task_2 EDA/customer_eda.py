#!/usr/bin/env python
# coding: utf-8

# In[20]:


import pandas as pd
df = pd.read_csv("C:\\Users\\sharm\\OneDrive\\Desktop\\Customer_data\\task_1 data wrangling\\customerdatacleaned.csv"
                ,sep=";")

print(df.columns.tolist())
corr_matrix = df[["TotalPurchases","TotalSpent"]].corr()

print(corr_matrix)


# In[2]:


import matplotlib.pyplot as plt
df = pd.read_csv("C:\\Users\\sharm\\OneDrive\\Desktop\\Customer_data\\task_1 data wrangling\\customerdatacleaned.csv"
                ,sep=";")
plt.hist(df['TotalSpent'],bins=10)
plt.xlabel("Total_spent")
plt.ylabel("interval")
plt.show()



# In[8]:


import pandas as pd
import matplotlib.pyplot as plt
df = pd.read_csv("C:\\Users\\sharm\\OneDrive\\Desktop\\Customer_data\\task_1 data wrangling\\customerdatacleaned.csv"
                ,sep=";")
plt.bar(df['CustomerId'],df['State'])
plt.xlabel("Customer")
plt.ylabel("State")
plt.show()


# In[10]:




df = pd.read_csv("C:\\Users\\sharm\\OneDrive\\Desktop\\Customer_data\\task_1 data wrangling\\customerdatacleaned.csv"
                ,sep=";")
sum1=df['TotalSpent'].sum()
print(sum1)
plt.bar(sum1,df['CustomerSegment'])
plt.xlabel("Revenue")
plt.ylabel("Segment")
plt.show()


# In[12]:



active_count = df['IsActive'].value_counts()
plt.figure(figsize=(6,6))
plt.pie(
    active_count,
    labels=['Active','Inactive'],
    autopct='%1.1f%%'
)
plt.title('Active vs Inactive Customers')
plt.show()


# In[31]:


top10 = df.nlargest(10, 'TotalSpent')
plt.figure(figsize=(9,4))
plt.bar(top10['CustomerId'], top10['TotalSpent'])
plt.title('Top 10 Customers by Spending')
plt.xlabel('Customer ID')
plt.ylabel('Total Spent')
plt.tight_layout()
plt.show()


# In[ ]:




