COVID-19 ICU Burden Analysis
Project Overview

This project analyzes the ICU (Intensive Care Unit) burden of COVID-19 across countries using publicly available COVID-19 datasets. The goal is to identify trends, calculate average ICU loads, and highlight countries with the highest ICU impact. This analysis can help policymakers and healthcare professionals understand the pandemic's pressure on healthcare systems.
 - Data Source
 - Dataset Name: COVID_DATA
 - Source: GLOBAL_DATASET.PUBLIC.COVID_DATA (Snowflake public dataset)
 - Columns Used:
   - ENTITY – Country or region name
   - DAY – Date of record
   - Current number of COVID-19 patients in ICU per million, ICU burden metric.

Note: This project uses Snowflake as the data warehouse for querying and aggregating the data.

Methodology
1. Data Extraction: Pull data from the Snowflake public dataset.
2. Data Cleaning: Ensure consistency of country names and handle missing ICU values.
3. Aggregation: Calculate the average ICU burden per country using SQL aggregation.
4. Visualization: Visualize the results using bar charts, heatmaps, or line plots to show ICU trends and country comparisons.

Key Insights
- The project identifies countries with high ICU burden, which may indicate severe outbreaks or healthcare stress.
- Comparative analysis highlights regions with lower ICU impact, potentially indicating effective pandemic management or reporting differences.
- Trend analysis over time can be added to visualize surges and recovery periods.

Tools & Technologies
- Snowflake: Cloud data warehouse for querying and aggregation
- SQL: Data extraction and analysis
- Python / Tableau / Power BI: Optional for visualization
- GitHub: Project repository and version control

How to Use
1. Clone this repository: 
                                          git clone <your-repo-link>
2. Connect to Snowflake and ensure access to the public dataset.
3. Run the SQL queries to compute ICU averages.
4. Use your preferred visualization tool to generate charts from the aggregated results.

Future Work
- Detect surge thresholds for ICU occupancy per country.
- Include daily trends to observe peaks and recovery periods.
- Expand analysis to include hospitalizations and ventilator usage for a more complete picture.
- Deploy dashboards to show live COVID-19 ICU burden trends globally.

License
- This project is for educational purposes and uses publicly available datasets.
