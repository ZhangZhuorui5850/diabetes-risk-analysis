# Diabetes Risk Analysis Project

## Project Overview

This project is submitted as **Assignment 1** for the course STQD6324 – Data Management (Semester 2, 2024/2025). It aims to demonstrate end-to-end data management and analytics skills using open-source tools and real-world data.

The chosen domain is **healthcare**, with a focus on **diabetes risk analysis**. We use a public dataset from the UCI Machine Learning Repository and tools like Hive, Pig, PySpark, and Python visualizations to perform data cleaning, feature analysis, and predictive modeling.

---

## Objectives

* Acquire and clean raw diabetes health records
* Use Hive and Pig to explore high-risk group patterns
* Build a predictive logistic regression model using PySpark
* Visualize patterns across outcome, age, BMI, and other factors
* Deliver insights, recommendations, and GitHub-based documentation

---

## Technologies Used

* **Apache Hive** – SQL-like queries on structured HDFS data
* **Apache Pig** – Script-based high-risk summarization
* **PySpark MLlib** – Feature vectorization and logistic regression
* **Pandas / Seaborn / Matplotlib** – Visualization and statistics
* **GitHub** – Project versioning and public presentation

---

## Project Structure

```
diabetes-risk-analysis/
├── data/                      # Source dataset (diabetes.csv)
├── hive/                      # Hive create/query scripts
├── pig/                       # Pig high-risk grouping scripts
├── spark/                     # PySpark model pipeline
├── notebooks/                 # Jupyter-based visualization
├── images/                    # Chart outputs
├── README.md                  # This file
├── insights.md                # Data analysis & model explanation
├── recommendations.md         # Health recommendations
└── conclusion.md              # Summary & reflection
```

---

## How to Run

1. Clone this repository

```bash
git clone https://github.com/YourUsername/diabetes-risk-analysis.git
```

2. Upload `diabetes.csv` into HDFS under `/user/maria_dev/`

3. Run the following files:

* `hive/create_table.hql` and `hive/queries.hql` (on Ambari or Hive CLI)
* `pig/analysis.pig` (on Ambari Pig UI)
* `spark/transform_and_predict.py` (via PySpark or Jupyter)
* `notebooks/visualization.ipynb` (for visualization output)

4. All charts are saved under `/images/`, and insights are in Markdown

---

## Author

**Zhang Zhuorui**
**p147459**
STQD6324 – Assignment 1 – Semester 2 (2024/2025)
Master of Science (Data Science and Analytics)
UKM

---

