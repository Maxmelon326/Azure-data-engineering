# Azure-data-engineering
# 🎬 Netflix Data Analysis with Azure Synapse and Power BI

This project demonstrates how to leverage **Azure Synapse Analytics**, **Spark Notebooks**, and **Power BI** to build a structured data pipeline and support visual analysis on Netflix movie and TV show content data.

---

## 📌 Project Overview

This project focuses on collecting and preparing metadata about Netflix's content, specifically movies and TV shows, and preparing it for further analysis in **Power BI**. The dataset includes structured fields such as:

- `show_id`
- `type` (Movie / TV Show)
- `title`
- `country`
- `release_year`
- `date_added`
- `duration`
- `rating`
- `genres`
- `language`
- `popularity`, `vote_count`, `vote_average`


---

## ⚙️ Technologies Used

- **Azure Synapse Analytics**
  - Data Lake Storage Gen2 for raw data
  - Spark Pools for data processing
  - Dedicated SQL Pool for structured storage
  - Data Pipelines for automation

- **Power BI**
  - Direct connection to Azure Synapse Dedicated SQL Pool
  - Interactive dashboard development and publishing

---

## ✅ Current Progress

- ✔️ Loaded raw CSV data into Azure Data Lake
- ✔️ Processed and cleaned using PySpark in Synapse Notebooks
- ✔️ Stored structured results into `analytics.a1_structural_summary` table in Synapse Dedicated SQL Pool
- ✔️ Connected Synapse SQL Pool to **Power BI Desktop**
- ❗ Visual analysis ongoing in Power BI (to be published soon)

---

## 📈 Next Steps

- [ ] Complete exploratory data visualizations in Power BI
- [ ] Publish interactive dashboard
- [ ] Expand analysis to include other research questions (e.g., global trends, genre evolution, content release timing)

---

## 📊 Example Power BI Metrics (Planned)

- Content volume by year and type
- Genre distribution by country
- Ratings vs. popularity scatterplots
- Duration trends over time
- Language diversity and global expansion

---

## 📁 Folder Structure

```bash
📂 /notebooks/         # Spark processing notebooks in Azure Synapse
📂 /pipeline/          # Synapse pipeline templates (if any)
📂 /powerbi/           # Power BI .pbix files or screenshots
📄 README.md           # Project overview


