# Land Cover Classification,  SW Rwanda
## Oath Africa Geospatial Analyst Assessment

### Overview
Land use and land cover mapping of SW Rwanda using Sentinel-2 
multispectral imagery and Random Forest classification.

### Classes
- Forest
- Tea
- Water
- Buildup (digitized manually in QGIS)
- Other

### Methodology
1. Data loading and exploration
2. Feature engineering — NDVI, NDWI, NDBI, SAVI, BSI indices
3. Random Forest classification with 5-fold cross-validation
4. Prediction on entire area of interest
5. Evaluation using normalized confusion matrix

### Results
- Cross-validation accuracy: 80.2% ± 4.4%
- Water and Forest classified near-perfectly (F1 = 1.00 and 0.92)
- Full results in Oath_assessment.ipynb

### Project Structure
```
OATH/
    data/              # Original training points
    buildata/          # Buildup points digitized in QGIS
    finaldata/         # Merged training data (Sentinel-2 not included due to size)
    Output/            # confusion_matrix.png, lulc_map.png
    Oath_assessment.ipynb   # Full pipeline notebook
    Query.sql               # SQL queries for Project 2
```

### SQL Queries (Project 2)
The `Query.sql` file contains 4 queries ready to run against the provided database:
- **Query 1** — Total number of rows in accounts table
- **Query 2** — Total dollar amount of sales from orders table
- **Query 3** — Earliest order date from orders table
- **Query 4** — Account names joined with their order dates

Note: I failed to get the queries output because The provided SQL file uses PostgreSQL syntax which is incompatible 
with MySQL. 
