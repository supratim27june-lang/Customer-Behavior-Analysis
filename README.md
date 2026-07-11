# Customer-Behavior-Analysis
# 🛍️ Customer Behavior Analysis

**An end-to-end data analytics project that turns raw retail transaction data into actionable business insights using Python, PostgreSQL, and Power BI.**

[![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)](https://www.python.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-14+-4169E1?logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)](https://powerbi.microsoft.com/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white)](https://jupyter.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

---

## 📌 Overview

This project analyzes the shopping habits of retail customers to understand **who they are, what they buy, and how they behave**. It walks through the complete analytics lifecycle — from raw data ingestion and cleaning in Python, to structured querying in a PostgreSQL database, to an interactive Power BI dashboard for business stakeholders.

The goal is to demonstrate a realistic, production-style workflow that a data analyst would follow: **collect → clean → store → query → visualize → communicate insights.**

---

## 🎯 Objectives

- Clean and prepare raw customer shopping data for analysis.
- Explore customer demographics, purchasing patterns, and preferences.
- Store and query the data in a relational database (PostgreSQL).
- Build an interactive dashboard to communicate findings to non-technical stakeholders.
- Identify trends that can support marketing, retention, and revenue-growth decisions.

---

## 🗂️ Dataset

The analysis is based on the **Customer Shopping Trends** dataset — approximately **3,900 customer records across 18 features**, covering demographics, transactions, and behavioral attributes.

| Category | Example Fields |
|----------|----------------|
| **Demographics** | Customer ID, Age, Gender, Location |
| **Transaction** | Item Purchased, Category, Purchase Amount (USD), Season |
| **Product Attributes** | Size, Color |
| **Behavior & Loyalty** | Review Rating, Subscription Status, Previous Purchases, Frequency of Purchases |
| **Marketing & Fulfilment** | Discount Applied, Promo Code Used, Shipping Type, Payment Method |

> Two versions of the data are included: the original raw file (`customer_shopping_behavior.csv`) and a cleaned/analysis-ready file (`customer_shopping_behavior_processed.csv`).

---

## 🔍 Key Questions Explored

- What are the **spending patterns** across age groups, gender, and season?
- Which **product categories and items** drive the most revenue?
- How do **subscriptions, discounts, and promo codes** influence purchasing behavior?
- What is the relationship between **review ratings** and repeat purchases?
- Which **payment methods and shipping types** do customers prefer?
- How can customers be **segmented** to inform targeted marketing?

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| **Python (Pandas, NumPy, Matplotlib/Seaborn)** | Data cleaning, transformation, and exploratory data analysis |
| **Jupyter Notebook / Google Colab** | Interactive analysis environment |
| **PostgreSQL (pgAdmin 4)** | Relational storage and SQL-based querying |
| **Power BI** | Interactive dashboard and data storytelling |

---

## 📁 Repository Structure

```
Customer-Behavior-Analysis/
│
├── Customer_behavior.ipynb                     # Main analysis notebook (EDA + processing)
├── Business_Data.sql                           # PostgreSQL script for the database/queries
├── customer_shopping_behavior.csv              # Raw source dataset
├── customer_shopping_behavior_processed.csv    # Cleaned, analysis-ready dataset
├── customer_behavior_dashboard.pbix            # Interactive Power BI dashboard
├── LICENSE                                      # MIT License
└── README.md                                   # Project documentation
```

---

## ⚙️ How to Run

### 1. Clone the repository
```bash
git clone https://github.com/supratim27june-lang/Customer-Behavior-Analysis.git
cd Customer-Behavior-Analysis
```

### 2. Run the analysis notebook
Open `Customer_behavior.ipynb` in Jupyter Notebook or Google Colab and run the cells top to bottom. Recommended libraries:
```bash
pip install pandas numpy matplotlib seaborn sqlalchemy psycopg2-binary
```

### 3. Set up the PostgreSQL database
- Create a database in pgAdmin 4.
- Run `Business_Data.sql` to create the tables and load the data.
- (Optional) Connect the notebook directly to PostgreSQL using SQLAlchemy to query the data programmatically.

### 4. Explore the dashboard
Open `customer_behavior_dashboard.pbix` in **Power BI Desktop** to interact with the visualizations.

---

## 📝 Note on the Notebook Environment

The notebook was originally developed in **Google Colab**, while PostgreSQL (pgAdmin 4) was hosted locally on `localhost:5432`. Because Colab runs in the cloud, it **cannot reach a local `localhost` database**, which is why the second-to-last cell shows a connection error and a separate **processed CSV** was exported as a workaround.

If you run the notebook in a **local Jupyter environment**, this error will not occur — the SQL database can be connected directly using the same code shown in that cell, and no separate processed CSV is required.

---

## 📊 Dashboard Highlights

The Power BI dashboard provides an at-a-glance view of:
- Revenue and purchase distribution by category, season, and demographics
- Customer segmentation by subscription and loyalty behavior
- Impact of discounts and promo codes on spending
- Preferred payment and shipping methods

---

## 🚀 Key Takeaways

This project demonstrates practical, job-ready data analytics skills:
- **Data wrangling** and preparation with Python
- **SQL** and relational database design with PostgreSQL
- **Business intelligence** and dashboarding with Power BI
- Translating data into clear, decision-ready insights

---

## 🤝 Contributing

Contributions, suggestions, and feedback are welcome. Feel free to open an issue or submit a pull request.

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

## 👤 Author

**Supratim**
[GitHub Profile](https://github.com/supratim27june-lang)

⭐ *If you found this project helpful or interesting, consider giving it a star!*
