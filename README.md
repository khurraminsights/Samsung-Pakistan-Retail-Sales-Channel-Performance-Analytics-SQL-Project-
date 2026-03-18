# Samsung-Pakistan-Retail-Sales-Channel-Performance-Analytics-SQL-Project

<img width="2752" height="1536" alt="Cover Image" src="https://github.com/user-attachments/assets/443746ed-2761-4fee-9d08-bcff76d0710c" />


##  Executive Dashboard
An **executive-style dashboard** is included to visually summarize:

<img width="2816" height="1536" alt="Dashboard" src="https://github.com/user-attachments/assets/c37b167d-009d-4e42-80c3-482ec6d08ec2" />

The dashboard demonstrates how insights would be presented to **business stakeholders and management**.

## 📌 Project Overview

An end-to-end SQL-based data analytics case study simulating a **real-world Samsung Pakistan retail sales environment**. The project transforms raw transactional data into meaningful business insights — covering city-wise performance, channel revenue, product profitability, store target achievement, and customer retention behavior.

This project goes beyond writing SQL queries — it focuses on **understanding business problems, designing relational data models, and communicating insights** exactly as a Data Analyst would in a corporate environment.

---

## 🎯 Business Problem

Samsung Pakistan operates a nationwide retail network across 3 sales channels:

- 🏪 Samsung Experience Stores
- 🤝 Authorized Distributors
- 🌐 Online Retail Partners

Despite large volumes of sales data, the business lacked visibility into:

- **City-wise and channel-wise** sales performance
- **Product profitability** and return trends
- **Customer retention** and repeat-buying behavior
- **Store-level target achievement** vs actual sales

---

## 🗄️ Data Model & Architecture

Designed a **normalized relational database** with 7 tables optimized for analytical queries:

| Table | Description |
|---|---|
| `Stores` | Store profiles, location, and channel type |
| `Products` | Product catalog with categories and pricing |
| `Customers` | Customer profiles and purchase history |
| `Sales` | Transactional sales records |
| `Returns` | Product return records and reasons |
| `Sales_Targets` | Store-level monthly sales targets |
| `Promotions` | Promotion campaigns and discount details |

> 📊 Full **ER Diagram** included in the repository showing all table relationships.

---

## ❓ Business Questions Answered

| # | Business Question |
|---|---|
| 1 | Which cities generate the highest sales revenue? |
| 2 | Which products are the top revenue generators? |
| 3 | Which stores consistently fail to meet sales targets? |
| 4 | What is the monthly sales trend over 6 months? |
| 5 | Which stores have the highest product return rates? |
| 6 | How much does each sales channel contribute to total revenue? |
| 7 | Did promotions actually increase sales volume? |
| 8 | How does cumulative sales grow over time? |
| 9 | Which products show the highest return rates? |
| 10 | Who are the top repeat-buying customers? |

Each question is answered with **SQL + a clear business insight** explaining what happened and why it matters.

---

## 🔍 Key Findings

- 🏙️ **Karachi** is the highest revenue-generating city across all channels
- 🏪 **Experience Stores** contribute the largest share of total revenue
- 💎 **Premium products** drive higher revenue but require careful pricing control to protect margins
- ⚠️ **Several distributor stores** consistently miss monthly sales targets
- 📣 **Promotions increase sales volume** but show signs of margin pressure — ROI review needed
- 🔄 **Certain stores and products** show disproportionately high return rates
- 📈 **Overall cumulative sales** show a positive growth trend across the 6-month period

---

## 💡 Business Recommendations

| Area | Recommendation |
|---|---|
| Channel Strategy | Expand Experience Store network in high-revenue cities |
| Target Achievement | Audit and support underperforming distributor stores |
| Pricing | Review premium product pricing to balance volume and margin |
| Promotions | Measure promotion ROI before scaling campaigns |
| Returns | Investigate high-return stores and products for quality or process issues |
| Customer Retention | Launch loyalty program for top repeat-buying customers |

---

## 🛠️ Technical Approach

### SQL Server
- **JOINs** across 7 normalized tables for unified business analysis
- **Aggregate Functions** for city-wise, channel-wise, and product-wise KPIs
- **CTEs** for modular, readable query logic
- **Subqueries** for target vs actual comparison and return rate analysis
- **Window Functions** for ranking, cumulative sales, and percentage contribution
- Each query followed by **"What happened"** and **"Why it matters"** business commentary

### Power BI
- **Executive-style dashboard** for stakeholder-ready visual presentation
- KPI cards for revenue, returns, target achievement, and channel contribution
- Bar and line charts for trend analysis and city-wise comparison

---

## 📈 Dataset Details

| Property | Detail |
|---|---|
| Data Type | Simulated but realistic retail data |
| Time Period | 6 months of transactions |
| Geography | Multiple Pakistani cities |
| Products | Samsung-style mobile phones and home appliances |
| Purpose | Designed specifically for analytical use cases |

---

## 📁 Repository Structure
```
📂 Samsung-Pakistan-Retail-Sales-Channel-Performance-Analytics
├── 📄 Samsung_Pakistan.sql              — Full SQL scripts and queries
├── 🖼️  Samsung_Pakistan_ER_Diagram.png   — Entity Relationship Diagram
├── 📊 Samsung_Dashboard.png             — Executive dashboard preview
├── 🖼️  Cover Image.jpg                   — Project cover
└── 📄 README.md                         — Project documentation
```

---

## 📸 Dashboard Preview

![Samsung Pakistan Dashboard](Samsung%20Pakistan%20Sales%20Analysis%20Dashboard.jpg)

---

## 🚀 Future Enhancements

- [ ] Build a fully interactive **Power BI dashboard** with drill-through filters
- [ ] Extend analysis to **forecasting and predictive analytics**
- [ ] Integrate **real transactional data** for deeper market insights
- [ ] Add **customer segmentation** using RFM analysis

---

## 👤 About

**Khurram Naveed** — Data Analyst specializing in SQL, Power BI, and business intelligence.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue?logo=linkedin)](https://www.linkedin.com/in/khurramnaveed3233)
[![GitHub](https://img.shields.io/badge/GitHub-Portfolio-black?logo=github)](https://github.com/Khurramnaveed3233)
[![Email](https://img.shields.io/badge/Email-Contact-red?logo=gmail)](mailto:khurramnaveed4545@gmail.com)

---

> 💼 *This project reflects how a Data Analyst works in a real corporate environment — translating raw data into actionable business insights, applying advanced SQL to real-world problems, and communicating findings clearly to stakeholders.*
