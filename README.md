# 🛍️ Customer Shopping Behavior Analysis

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15-336791?logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)

An end-to-end data analytics project that explores transactional data from **3,900 customer purchases** across a retail company. The project covers the full data pipeline — data cleaning in Python, business analysis in PostgreSQL, and an interactive Power BI dashboard — to uncover insights on spending patterns, customer segments, and purchase drivers.

---

## 📁 Project Structure

```
customer-shopping-behavior-analysis/
│
├── data/
│   └── customer_shopping_behavior.csv
├── python/
│   └── Customer_Behavior_Analysis.ipynb
├── sql/
│   └── Customer_Beshvior_Analysis.sql
├── powerbi/
│   └── Customer_Behavior_Dashboard.pbix
├── reports/
│   ├── Business_Problem_Document.pdf
│   └── Customer_Shopping_Behavior_Analysis.pdf
└── README.md
```

---

## 🎯 Business Problem

A leading retail company wants to better understand its customers' shopping behavior to improve sales, customer satisfaction, and long-term loyalty. The core question:

> *"How can the company leverage consumer shopping data to identify trends, improve customer engagement, and optimize marketing and product strategies?"*

---

## 📊 Dataset Overview

| Property | Details |
|----------|---------|
| Rows | 3,900 |
| Columns | 18 |
| Missing Values | 37 (Review Rating column) |

**Key Features:**
- Customer demographics: Age, Gender, Location, Subscription Status
- Purchase details: Item, Category, Purchase Amount, Season, Size, Color
- Behavior: Discount Applied, Previous Purchases, Frequency, Review Rating, Shipping Type

---

## 🐍 Python — Data Preparation

Notebook: `python/Customer_Behavior_Analysis.ipynb`

- **Data Loading** — Imported dataset using `pandas`
- **Exploratory Data Analysis** — Used `df.info()` and `.describe()` for structure & statistics
- **Missing Data Handling** — Imputed 37 null values in `review_rating` using category-wise median
- **Column Standardization** — Renamed all columns to `snake_case`
- **Feature Engineering** — Created `age_group` and `purchase_frequency_days` columns
- **Data Consistency Check** — Dropped redundant `promo_code_used` column
- **Database Integration** — Connected to PostgreSQL and loaded the cleaned DataFrame

### Age Group Distribution
<p align="center">
  <img src="https://raw.githubusercontent.com/your-username/customer-shopping-behavior-analysis/main/chart_age_group.png" width="700"/>
</p>

---

## 🗄️ SQL — Business Analysis

File: `sql/Customer_Beshvior_Analysis.sql`

| # | Query | Key Finding |
|---|-------|-------------|
| 1 | Age Group Distribution | 25–40 is the largest segment (1,188 customers) |
| 2 | Category-wise Revenue | Clothing leads at $104,264 total revenue |
| 3 | Seasonal Sales | Fall generates the highest revenue ($60,018) |
| 4 | Discount Impact | Discounts do NOT significantly increase spending ($60.13 vs $59.28) |
| 5 | Payment Methods | PayPal is most popular (677 transactions) |
| 6 | Gender Spending | Male customers account for higher total spend ($157,890) |
| 7 | Review vs Purchase | No strong correlation between rating and purchase amount |
| 8 | Top 10 Customers | All top spenders reached the $100 maximum purchase |
| 9 | Subscription Spending | Subscribed customers spend slightly less ($59.49 vs $59.87) |
| 10 | Location Revenue | Montana, Illinois, California are top 3 locations |

### Revenue by Category
<p align="center">
  <img src="https://raw.githubusercontent.com/your-username/customer-shopping-behavior-analysis/main/chart_category_revenue.png" width="700"/>
</p>

### Seasonal Sales Performance
<p align="center">
  <img src="https://raw.githubusercontent.com/your-username/customer-shopping-behavior-analysis/main/chart_seasonal_sales.png" width="700"/>
</p>

### Payment Methods
<p align="center">
  <img src="https://raw.githubusercontent.com/your-username/customer-shopping-behavior-analysis/main/chart_payment_methods.png" width="700"/>
</p>

---

## 📈 Power BI Dashboard

File: `powerbi/Customer_Behavior_Dashboard.pbix`

<p align="center">
  <img src="https://raw.githubusercontent.com/your-username/customer-shopping-behavior-analysis/main/dashboard.png" width="800"/>
</p>

**KPIs:**
- 👥 Total Customers: **4K**
- ⭐ Average Review Rating: **3.75**
- 💵 Average Purchase Amount: **$59.76**

**Visuals:** Subscription breakdown, Revenue by category, Sales by age group, Revenue by age group

**Filters:** Subscription Status, Gender, Category, Shipping Type

---

## 💡 Key Findings

- **Clothing** is the top revenue-generating category ($104K)
- **Fall** season drives the highest sales ($60,018)
- **Discounts** have minimal impact on increasing average spend
- **PayPal** is the most preferred payment method (677 transactions)
- **Subscriptions** do not significantly boost per-customer spending
- **Montana, Illinois, California** are the highest-revenue locations
- The **25–40 age group** has the most customers (1,188)

---

## ✅ Business Recommendations

1. **Boost Subscriptions** — Promote exclusive benefits and perks for subscribers
2. **Customer Loyalty Programs** — Reward repeat buyers to increase retention
3. **Review Discount Policy** — Balance short-term sales boosts with margin control
4. **Product Positioning** — Highlight top-rated and best-selling products in campaigns
5. **Targeted Marketing** — Focus on high-revenue age groups (25–55) and express-shipping users

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Python (pandas, matplotlib, seaborn) | Data cleaning & EDA |
| PostgreSQL | Data storage & SQL analysis |
| Power BI | Interactive dashboard |
| Jupyter Notebook | Python development environment |

---

## 🚀 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/your-username/customer-shopping-behavior-analysis.git
cd customer-shopping-behavior-analysis
```

### 2. Run the Python notebook
```bash
pip install pandas matplotlib seaborn psycopg2
jupyter notebook python/Customer_Behavior_Analysis.ipynb
```

### 3. Set up PostgreSQL
```bash
createdb shopping_behavior
psql -d shopping_behavior -f sql/Customer_Beshvior_Analysis.sql
```

### 4. Open Power BI Dashboard
Open `powerbi/Customer_Behavior_Dashboard.pbix` in **Power BI Desktop**

---

## 📄 License

This project is for educational purposes.

---

## 🙋‍♂️ Author

**MO.Ismail Khan**  
📧 khanismail45118@gmail.com  
🔗 [LinkedIn](https://www.linkedin.com/in/ismail-khan-9997562a8 )
