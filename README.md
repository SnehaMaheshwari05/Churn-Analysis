# Churn Analysis Dashboard

An interactive churn analysis dashboard designed to analyze customer attrition patterns, identify key churn reasons, and track customer retention KPIs. This dashboard helps businesses reduce churn by providing actionable insights on customer behavior, demographics, and service preferences.

## SQL Data Preparation
I used SQL to clean and transform the raw data before importing itinto power bi for visualization. This step help me to ensure that the reports are built on top of accuarte,relevant, and well-structured data.

Key steps performed in SQL:
- Connected to the database and imported the raw tables.
- Removed duplicates and null values to ensure data quality.
- Change datatypes of some columns.
- Created new calculated columns.
- Exported the clean datasets to power bi for visulaization.

## Tech Stack
The dashboard was built using the following tools and technologies:

- 🖥 **Power BI Desktop** – Main data visualization platform used for creating and designing the dashboard.  
- 🔄 **Power Query** – Used for cleaning, transforming, and preparing churn data for analysis.  
- ➗ **DAX (Data Analysis Expressions)** – For calculated measures, KPIs (Churn Rate, Total Customers, New Joiners), and dynamic filtering logic.  
- 🔗 **Data Modeling** – Relationships established among customer demographics, contracts, services, and churn details to enable cross-filtering and aggregation.  
- 🛠 **Tooltips** – Custom tooltips provide detailed churn reasons when hovering over visuals.  
- 🗂 **File Formats** – `.pbix` for development and `.png` for dashboard preview images.

## Data Source
Source: https://www.kaggle.com/

## Features / Highlights
- 👥 **Customer Overview** – Displays total customers, new joiners, churn count, and churn rate.  
- 📊 **Churn by Gender, Age, and Contract** – Breakdown of churn across different demographics and contract types.  
- 🌐 **Churn by Internet & Services** – Highlights services and internet types contributing to higher churn.  
- 🏢 **Churn by State & Tenure** – Top states and tenure groups with maximum customer attrition.  
- 🔍 **Churn by Category & Reasons** – Insights into major churn reasons such as competitor offers and service dissatisfaction.  
- 🛠 **Tooltip Insights** – Interactive tooltip displays detailed churn reasons when hovering over visuals.  
- 🎨 **Modern Dark-Themed UI** – Clean, interactive, and optimized for better user experience.

  ## Screenshot
 1.  https://raw.githubusercontent.com/SnehaMaheshwari05/Churn-Analysis/refs/heads/main/Snapshots/Snapshot.png
 2.  https://github.com/SnehaMaheshwari05/Churn-Analysis/blob/main/Snapshots/Snapshot_tooltip.png
  
