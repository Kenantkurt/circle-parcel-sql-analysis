# Circle Parcel Delivery Analysis – SQL & BigQuery Project

This project analyzes the parcel delivery performance of **Circle**, a French eco-responsible sportswear company.  
The goal is to evaluate logistics efficiency, shipping operations, delivery performance, and potential delays using SQL queries executed in **Google BigQuery**.

---

## 📦 Project Objectives

- Explore and understand parcel-level and parcel-product-level datasets  
- Enrich raw tables with logistics KPIs  
- Generate delivery statuses using CASE logic  
- Compute shipping, delivery, and total transport times  
- Analyze performance across transporters and priority levels  
- Evaluate monthly trends   
- Detect late deliveries and calculate delay rates  

---

## 🗂 Dataset

This analysis uses two datasets imported from Google Sheets into BigQuery:

- **cc_parcel** – parcel-level information  
- **cc_parcel_product** – product details for each parcel  

Both tables were enriched with delivery status and KPI calculations.

---

## 🧠 Key KPIs Calculated

- **Shipping Time** (Purchase → Shipping)  
- **Delivery Time** (Shipping → Delivery)  
- **Total Time** (Purchase → Delivery)  
- **Shipping/Total Ratio**  
- **Delay Rate** (total_time > 5 days)

---

## 🛠 Tools Used

- SQL  
- Google BigQuery  
- Google Sheets  
- Data Modeling  
- Analytical Aggregations  
- KPI Design

---

## 📁 Repository Structure

**Project Root**
- `README.md` — Full project explanation and results  
- `sql/` — All SQL scripts used for data exploration, transformation, KPI calculation and analysis

**sql/**
- `01_data_exploration.sql` — Initial exploration of parcel tables  
- `02_status_creation.sql` — Creation of parcel delivery status using CASE  
- `03_date_formatting.sql` — Parsing and formatting date fields  
- `04_kpi_calculation.sql` — Calculation of shipping, delivery and total times  
- `05_global_kpi.sql` — Global KPI analysis  
- `06_transporter_kpi.sql` — Transporter-level performance comparison  
- `07_priority_kpi.sql` — Priority-level KPI comparison & ratio analysis  
- `08_monthly_kpi.sql` — Monthly trend analysis  
- `09_delay_analysis.sql` — Delay rate evaluation  


---

## 📈 Results & Insights

This analysis of Circle’s parcel dataset reveals several clear patterns across shipping operations,
delivery performance, and carrier efficiency.

### 🔹 1. Global Performance Overview
Across all shipments (49 parcels total):

- **Average shipping time:** 2.02 days  
- **Average delivery time:** 2.06 days  
- **Average total time:** 4.15 days  

Total delivery time is almost evenly split between warehouse preparation and carrier transport, highlighting that improvements in either stage would have a noticeable impact on the customer experience.

---

### 🔹 2. Transporter & Priority-Level Performance

#### **Colissimo – High Priority (23 parcels)**
- Shipping: **1.86 days**  
- Delivery: **2.06 days**  
- Total: **4.06 days**  
- Shipping represents 90% of delivery duration → very balanced workflow  

#### **UPS – High Priority (6 parcels)**
- Shipping: **2.00 days**  
- Delivery: **1.75 days**  
- Total: **3.75 days**  
- Faster final delivery stage but slightly slower initial preparation  

#### **UPS – Low Priority (1 parcel)**
- Total time: **3.0 days**  
- Shipping time is disproportionately high (ratio 2.0), indicating slower warehouse handling  

#### **Colissimo – Medium Priority (12 parcels)**
- Shipping: **1.92 days**  
- Delivery: **2.33 days**  
- Total: **4.0 days**

#### **Colissimo – Low Priority (7 parcels)**
- Shipping: **2.83 days**  
- Delivery: **2.17 days**  
- Total: **5.0 days**  
- This group shows the **slowest total time**, primarily due to long shipping preparation

---

### 🔹 3. Priority-Level Insights
- **High priority shipments consistently outperform lower-priority ones.**  
- Low priority parcels show significantly longer shipping times, driving up total delays.  
- Shipping-to-total ratios indicate that **warehouse preparation speed varies heavily according to priority**.

---

### 🔹 4. Operational Takeaways

- **Colissimo** performs well for High and Medium priority parcels but struggles with Low priority processing.  
- **UPS** shows fast delivery stages but inconsistent shipping preparation depending on priority.  
- Shipping time is a major bottleneck for low-priority parcels.  
- Overall performance remains stable (~4.1 days), but low-priority delays negatively affect consistency.

---

## 🧭 Final Summary

Circle’s delivery pipeline generally performs well, but there is clear room for improvement in low-priority 
warehouse processing and transporter selection. High-priority shipments meet expectations, while low-priority 
parcels experience the most significant delays. Strengthening warehouse SLAs and optimizing transporter allocation 
would meaningfully reduce total delivery times and improve customer satisfaction.

---

## 🏷 Tags
`SQL` · `BigQuery` · `Google Sheets` · `Data Cleaning` · `Data Modeling` · `Logistics Analytics` · `Delivery Performance` · `E-commerce Operations` · `KPI Analysis` · `Parcel Tracking`




