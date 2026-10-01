# Modern Data Stack Analytics Engineering Portfolio: E-Commerce & Marketing Lineage

## 📊 Project Overview
This project builds an automated, modular data pipeline transforming raw operational e-commerce data into clean, business-ready analytical datasets using the Modern Data Stack (MDS).

## 🛠️ Tech Stack & Architecture
- **Data Warehouse:** Google BigQuery (Sandbox Environment)
- **Data Transformation & Orchestration:** dbt Cloud
- **Version Control:** GitHub
- **Data Architecture:** Dimensional Star Schema Modeling (Fact & Dimension layers)

## 📈 Pipeline Lineage Graph
![https://ibb.co/PGrmKDrR](https://ibb.co/PGrmKDrR)

## 🔑 Key Engineering Solutions Implemented
1. **Source Isolation:** Abstracted raw warehouse paths using `_sources.yml` to ensure schema updates don't break downstream dependencies.
2. **Data Granularity Fixes:** Handled e-commerce duplicate line-item grains by introducing strict `GROUP BY` aggregations in the staging layer to isolate clean `order_id` records.
3. **Automated Data Quality Testing:** Configured dynamic testing gates (`unique`, `not_null`) inside `_models.yml` to capture raw schema discrepancies before compiling business metrics.
4. **Data Seeding Integration:** Loaded static marketing acquisition data via `dbt seed` matrices to bridge customer touchpoints into core financial facts.
