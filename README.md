# Netflix Data Analysis with Azure Synapse and Power BI

This project demonstrates how to build a scalable data analytics pipeline using **Azure Synapse Analytics** and **Power BI**. The goal is to analyze Netflix's movie and TV show metadata to uncover insights on content distribution, structure, and viewer trends.

## 🔍 Project Overview

Using detailed Netflix movie and TV show datasets, we:
- Cleaned and transformed raw CSV data in **Synapse Notebooks with PySpark**
- Stored structured data in **Azure Data Lake Storage Gen2 (ADLS)**
- Created a **dedicated SQL Pool table** (`analytics.a1_structural_summary`) to store curated fields for BI
- Built a Power BI dashboard for visual exploration and business analysis

## 📌 Data Columns in Final Table

The final structured dataset includes:
- `show_id`
- `country`
- `rating`
- `duration`
- `genres`
- `language`
- `release_year`
- `date_added`
- `popularity`
- `platform_type` (Movie / TV Show)

## 🧱 Azure Components Used

- **Azure Synapse Analytics**
  - Spark Notebooks
  - Dedicated SQL Pool
  - Data pipeline (Copy Data Activity)
- **Azure Data Lake Storage Gen2**
- **Power BI** for reporting and dashboards

## 📊 Power BI Dashboard Highlights

Key analyses include:
- Content structural features by type (genres, language, country, etc.)
- Trends over time, duration, content rating, and seasonal release patterns
- Evaluation of content release delay (release year vs. date added)
- Card KPIs: Most frequent genres, countries, and languages

## 📈 Sample Visualization

The full interactive dashboard is published on Power BI destop and moblie.


<img src="https://github.com/user-attachments/assets/e083c039-7f18-473e-8956-56550aa5e9f5" width="500"/>
<img src="https://github.com/user-attachments/assets/0e7fbe61-a990-4ad3-b86d-686cdf0d6d97" width="500"/>


## 🚀 How to Reproduce

1. Upload raw CSVs to ADLS
2. Use Synapse Notebooks to clean & write data to staging
3. Run COPY INTO from staging to SQL Pool table
4. Connect Power BI to dedicated SQL Pool
5. Build visualizations on top of `analytics.a1_structural_summary`
6. There are some guide images for intrstruting setting on Azure and PowerBI as follows:
- Azure Pipeline

<img width="500" alt="pipeline" src="https://github.com/user-attachments/assets/ef8351ee-9c55-4682-9e15-2171618fb402" />

- Azure trigger (schedule the subscription refresh)

<img width="500" alt="trigger" src="https://github.com/user-attachments/assets/50d12836-d7dc-41ff-aef4-e9273580cbf5" />

- Link Azure Synapse to PowerBI (If PowerBi embedded is not supported in Azure account)
<img src="https://github.com/user-attachments/assets/1ffe46e5-6d38-4602-95a7-aa4ddefc0d11" width="500"/>

- Refresh PowerBI to update the recent data
<img width="500" alt="refresh" src="https://github.com/user-attachments/assets/03b941a1-424d-4fbe-9471-615d936442c4" />

## 📁 Folder Structure

```bash
📂 /notebooks/         # Spark processing notebooks in Azure Synapse
📂 /pipeline/          # Synapse pipeline templates 
📂 /powerbi/           # Power BI .pbix files 
📂 /data/           # Raw netflix movie and TV data
📄 README.md           # Project overview
