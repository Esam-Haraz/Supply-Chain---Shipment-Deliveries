English | [العربية](README.ar.md)

---

# 🚚 Supply Chain & Shipment Deliveries Analysis

---

## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem & Objectives](#-business-problem--objectives)
- [Tech Stack & Data Pipeline](#️-tech-stack--data-pipeline)
  - [Tools & Technologies](#1-tools--technologies)
  - [End-to-End Data Pipeline](#2-end-to-end-data-pipeline)
  - [SQL Implementation & Analysis](#️-sql-implementation--analysis)
  - [Excel Dashboard](#-excel-dashboard)
- [Executive Insights & Key Findings](#-executive-insights--key-findings)
- [Data Quality Notes](#-data-quality-notes)
- [Repository Structure](#-repository-structure)
- [How to Run & Replicate](#-how-to-run--replicate)
- [Connect with Me](#-connect-with-me)

---

## 📌 Project Overview

> *This README was created with AI assistance, under my direction and review.*

This project delivers an end-to-end supply chain analytics solution exploring shipment delivery patterns, delay drivers, and cost distribution across regions, delivery partners, and weather conditions. Based on a real-world-style logistics dataset, the analysis transforms raw shipment records into actionable insights that can support operational decision-making in supply chain management.

---

## 🎯 Business Problem & Objectives

### 1. Business Context

Logistics companies face constant pressure to minimize delays, control costs, and maintain customer satisfaction. Without a consolidated analytical view of delivery performance across partners, regions, and conditions, it is difficult to identify where inefficiencies occur and how to address them.

### 2. Project Objectives

This analysis answers key business questions across two difficulty levels:

- **General Questions:**
  - Measure overall delivery volume and the percentage of delayed shipments.
  - Evaluate average delivery cost and customer rating across all shipments.
  - Understand how deliveries are distributed across regions and delivery statuses.
  - Calculate average shipment distance and package weight.

- **Medium-Level Questions:**
  - Does weather condition affect the likelihood of a delayed delivery?
  - Which delivery partner and vehicle type combination has the highest delay rate?
  - Is there a relationship between delivery mode and average delivery rating?
  - Do longer distances correlate with higher delivery costs?

---

## 🛠️ Tech Stack & Data Pipeline

### 1. Tools & Technologies

- **Data Source:** Kaggle (Supply Chain & Shipment Deliveries Dataset - CSV format)
- **Data Exploration & Cleaning:** Microsoft Excel
- **Database Management & Querying:** SQL (PostgreSQL)
- **Data Visualization:** Excel (Pivot Tables & Dashboard)
- **Version Control:** Git & GitHub

### 2. End-to-End Data Pipeline

`[Raw CSV (Kaggle)]` ➡️ `[Excel (Data Cleaning & Type Validation)]` ➡️ `[SQL Database (Schema Setup & Queries)]` ➡️ `[Excel Pivot Tables & Dashboard]`

- **Step 1: Data Exploration & Cleaning (Excel)**
  - Loaded the raw CSV into Excel to inspect and validate column data types before further processing.

- **Step 2: Database Setup & Query Execution (SQL)**
  - Created a table schema with a `row_id SERIAL PRIMARY KEY` to handle the original `delivery_id` column which contained duplicate and decimal values — a data quality issue identified during exploration.
  - Wrote SQL queries to answer each business question across both difficulty levels.

- **Step 3: Dashboard Creation (Excel)**
  - Rebuilt the analysis visually using Pivot Tables and Pivot Charts, with slicers for Delivery Partner, Region, and Delivery Mode for interactive filtering.

---

### 🗄️ SQL Implementation & Analysis

[![Create Table](Images/Create_Table.png)](Images/Create_Table.png)

*Designed the relational table schema in SQL.*

[![Total Deliveries & Delayed Percentage](Images/total_deliveries_delayed_percentage.png)](Images/total_deliveries_delayed_percentage.png)
*Calculated the total number of deliveries (25,000) and the overall delay rate (26.68%) — roughly 1 in 4 shipments is delayed.*

[![Average Delivery Cost & Rating](Images/avg_delivery_cost_rating.png)](Images/avg_delivery_cost_rating.png)

*Calculated the average delivery cost (864.94) and average customer rating (3.67 out of 5) across all shipments.*

[![Deliveries by Region](Images/deliveries_by_region.png)](Images/deliveries_by_region.png)

*Grouped deliveries by region, showing a balanced distribution of approximately 5,000 shipments per region — ensuring statistically fair comparisons across regions.*

[![Deliveries by Status](Images/deliveries_by_status.png)](Images/deliveries_by_status.png)

*Broke down deliveries by status: 18,331 delivered, 5,341 delayed, and 1,328 failed.*

[![Average Distance & Weight](Images/avg_distance_weight.png)](Images/avg_distance_weight.png)

*Calculated the average shipment distance (150.39 km) and average package weight (25.15 kg) across all deliveries.*

[![Weather vs Delayed](Images/weather_vs_delayed.png)](Images/weather_vs_delayed.png)

*Compared delay rates across weather conditions. Stormy (41.45%) and rainy (37.35%) conditions show significantly higher delay rates than clear (17.43%) or cold (16.02%) conditions.*

[![Delay Rate by Partner & Vehicle](Images/delay_rate_by_partner_vehicle.png)](Images/delay_rate_by_partner_vehicle.png)
*Analyzed delay rates by delivery partner and vehicle type combination. Notably, no single combination stands out significantly — delay rates across the top 10 combinations range narrowly between 28.93% and 31.72%, suggesting delays are driven more by external factors (weather, distance) than by the partner or vehicle type itself.*

[![Delivery Mode vs Rating](Images/delivery_mode_vs_rating.png)](Images/delivery_mode_vs_rating.png)
*Compared average customer ratings across delivery modes. Express delivery scored the lowest (2.72) despite being the fastest option — likely because higher customer expectations amplify the impact of any delay or issue.*

[![Distance vs Cost](Images/distance_vs_cost.png)](Images/distance_vs_cost.png)
*Grouped deliveries into distance ranges and calculated average cost per range. A clear linear relationship emerged — cost increases consistently with distance, from 239.64 for 0–50 km up to 1,365.76 for 200+ km.*

---

### 📊 Excel Dashboard

[![Excel Dashboard](Images/Excel_Dashboard.png)](Images/Excel_Dashboard.png)
*Built an interactive Excel dashboard using Pivot Tables and Pivot Charts, with slicers for Delivery Partner, Region, and Delivery Mode to allow quick filtering and cross-analysis.*

---

## 📊 Executive Insights & Key Findings

### 1. Overall KPIs

- **Total Deliveries:** 25,000
- **Delayed Rate:** 26.68% (~1 in 4 shipments)
- **Average Delivery Cost:** 864.94
- **Average Customer Rating:** 3.67 / 5

### 2. Weather is the Strongest Delay Driver

- Stormy conditions produce a **41.45%** delay rate vs **16.02%** in cold weather — nearly 2.5x difference.
- Weather consistently outweighs partner or vehicle type as a delay predictor.

### 3. No Single Partner or Vehicle Type Dominates Delays

- The top 10 highest-delay partner/vehicle combinations fall within a narrow 3-point range (28.93%–31.72%), suggesting no single operational factor is the primary cause of delays.

### 4. Express Delivery Paradox

- Despite being the fastest mode, Express has the **lowest customer rating (2.72)**, likely due to unmet high expectations — a key insight for managing customer communication.

### 5. Distance Drives Cost Linearly

- Delivery cost scales consistently with distance — from **239.64** (0–50 km) to **1,365.76** (200+ km), making distance the most predictable cost factor.

---

## ⚠️ Data Quality Notes

- **`delivery_id`:** The original column contained duplicate values and decimal IDs (e.g. 250.99), making it unsuitable as a Primary Key.
- **`delivery_time_hours` & `expected_time_hours`:** Both columns were entirely zero-valued in the dataset, making it impossible to answer the planned question on delivery time gaps (Section 2, Question 5). The original dataset is preserved in the repository for reference.

---

## 📁 Repository Structure

```
Supply_Chain_Analysis/
│
├── SQL/
│   ├── Create_Table.sql
│   ├── total_deliveries_delayed_percentage.sql
│   ├── avg_delivery_cost_rating.sql
│   ├── deliveries_by_region.sql
│   ├── deliveries_by_status.sql
│   ├── avg_distance_weight.sql
│   ├── weather_vs_delayed.sql
│   ├── delay_rate_by_partner_vehicle.sql
│   ├── delivery_mode_vs_rating.sql
│   └── distance_vs_cost.sql
│
├── Excel/
│   └── Supply Chain.xlsx
│
├── Images/ 
│   ├── Create_Table.png
│   ├── total_deliveries_delayed_percentage.png
│   └── ...
│
├── README.md                        
└── README.ar.md                         
```

---

## 🚀 How to Run & Replicate

**Database Setup:**

- Open your preferred SQL database management tool.
- Run `SQL/Create_Table.sql` to create the table schema.
- Import the Supply Chain CSV into the created table.
- Run the remaining scripts in `SQL/` to reproduce each analysis.

**Excel Dashboard:**

- Open `Excel/Supply_Chain_Analysis.xlsx` using Microsoft Excel to interact with Pivot Tables and Slicers.

---

## 🤝 Connect with Me

LinkedIn: [Esam Haraz](https://www.linkedin.com/in/esam-haraz-459925402)

GitHub: [Esam-Haraz](https://github.com/Esam-Haraz)

Email: <esamv20@gmail.com>
