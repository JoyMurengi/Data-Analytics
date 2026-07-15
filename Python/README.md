#  Public Transportation Operations Analysis & Service Optimization

## Project Overview

Efficient public transportation depends on understanding operational patterns and service demand. This project analyzes the Delhi Metro network using exploratory data analysis (EDA) to uncover insights into route coverage, trip scheduling, service frequency, and operational trends.

Using Python and data visualization, the project identifies patterns that can support operational planning and improve service efficiency through data-driven recommendations.

---

## Business Problem

Metro systems must balance operational efficiency with passenger demand. Running too many trains wastes resources, while running too few leads to overcrowding and delays.

The objective of this project is to analyze historical metro operational data to answer questions such as:

- Which days experience the highest operational activity?
- How does service frequency change throughout the day?
- How are metro stations geographically distributed?
- Which stations act as major transit hubs?
- How can operational scheduling be improved?

---

## Objectives

- Explore the Delhi Metro network geographically.
- Analyze service patterns across weekdays and weekends.
- Examine station distribution and route connectivity.
- Investigate service frequency throughout the day.
- Identify operational trends and provide data-driven recommendations.

---

## Dataset

The dataset contains information about the Delhi Metro network, including:

- Metro routes
- Metro stations
- Geographic coordinates
- Trip schedules
- Service intervals
- Operating days

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- Plotly/Folium
- Matplotlib
- Jupyter Notebook

---

## Project Workflow

1. Data Loading
2. Data Cleaning
3. Feature Engineering
4. Exploratory Data Analysis (EDA)
5. Geospatial Visualization
6. Operational Analysis
7. Business Recommendations

---

# Analysis & Key Findings

## 1. Metro Route Network

The route map provides a geographic overview of the Delhi Metro network. Different colors represent individual metro lines, illustrating the connectivity between stations across the city.
<Figure size 600x600 with 1 Axes><img width="551" height="547" alt="image" src="https://github.com/user-attachments/assets/b1eaf099-0129-41cb-9630-10b9ece19d60" />


**Key Insight**

The network provides extensive coverage across Delhi, with strong connectivity between major urban regions, supporting efficient city-wide transportation.

---

## 2. Trips by Day of the Week

<Figure size 640x480 with 1 Axes><img width="580" height="506" alt="image" src="https://github.com/user-attachments/assets/9e0d40d6-39bf-4fc9-8186-732b7077abe2" />


Weekday operations remain relatively consistent from Monday to Friday, indicating stable commuter demand.

Trip volumes decline on Saturdays and Sundays, suggesting reduced travel demand during weekends.

**Business Insight**

Metro operators can optimize operational costs by slightly reducing service frequency on weekends while maintaining reliable weekday schedules.

---

## 3. Geographic Distribution of Stations

The station distribution highlights how metro stations are spread across Delhi.

Stations are widely distributed throughout the city, while certain regions contain noticeably denser clusters.
<img width="863" height="855" alt="image" src="https://github.com/user-attachments/assets/211a249e-c220-487e-ae97-a33490a6cb7b" />


**Key Insight**

Dense station clusters likely represent commercial districts or major transportation hubs with higher passenger demand.

---

## 4. Route Connectivity


The network visualization highlights stations with multiple route connections.

Larger nodes indicate important interchange stations that facilitate passenger transfers across different metro lines.
<img width="855" height="855" alt="image" src="https://github.com/user-attachments/assets/fb13ab4a-e81e-49fd-bd27-c90458d4afbd" />


**Business Insight**

These interchange stations are critical to network performance and should be prioritized for maintenance, monitoring, and passenger flow management.

---

## 5. Service Frequency Throughout the Day

Service intervals vary throughout the day.

Morning and evening periods experience the highest operational activity, while afternoon services operate at a lower frequency.

<img width="1311" height="585" alt="image" src="https://github.com/user-attachments/assets/1c811db9-9cdc-4d05-9b59-2182bdf973f8" />

**Key Insight**

Service schedules appear to align with expected commuter demand during peak travel periods.

---

## 6. Trip Distribution by Time of Day

Trip volumes increase significantly during morning commuting hours and remain relatively high throughout midday before gradually declining later in the evening.
<img width="920" height="470" alt="image" src="https://github.com/user-attachments/assets/85213008-f4a6-4a50-8970-0cfe75ae11d4" />

**Business Insight**

Peak-hour demand suggests opportunities for dynamic scheduling, allowing additional services during busy periods while reducing operational costs during off-peak hours.

---

# Recommendations

Based on the analysis, the following operational improvements are recommended:

- Maintain current weekday service levels to accommodate consistent commuter demand.
- Reduce service frequency during weekends where demand is lower.
- Increase train frequency during morning and evening peak periods.
- Prioritize maintenance and operational monitoring at major interchange stations.
- Use demand-based scheduling to better allocate metro resources throughout the day.

---

# Skills Demonstrated

This project demonstrates practical data analytics skills, including:

- Exploratory Data Analysis (EDA)
- Data Cleaning
- Feature Engineering
- Geospatial Data Visualization
- Time Series Analysis
- Data Storytelling
- Business Insight Generation
- Operational Analytics

---


# Future Improvements

Future work could extend this analysis by:

- Incorporating passenger ridership data.
- Forecasting passenger demand using machine learning.
- Optimizing train scheduling through simulation models.


---

# Author

**Joy Murengi**

