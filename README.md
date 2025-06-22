# Azure-data-engineering
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
- : Content structural features by type (genres, language, country, etc.)
- : Trends over time, duration, content rating, and seasonal release patterns
- : Evaluation of content release delay (release year vs. date added)
- Card KPIs: Most frequent genres, countries, and languages

## 📈 Sample Visualization

The full interactive dashboard is published on Power BI destop and moblie.
![0c2f3408be4de466ed38abb381f8734](https://github.com/user-attachments/assets/f72d8712-98b7-4b36-8857-c5c3d2396db5)
![0c2f3408be4de466ed38abb381f8734](https://github.com/user-attachments/assets/0e7fbe61-a990-4ad3-b86d-686cdf0d6d97)





## 🚀 How to Reproduce

1. Upload raw CSVs to ADLS
2. Use Synapse Notebooks to clean & write data to staging
3. Run COPY INTO from staging to SQL Pool table
4. Connect Power BI to dedicated SQL Pool
5. Build visualizations on top of `analytics.a1_structural_summary`

