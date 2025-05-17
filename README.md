# Diabetes Risk Analysis Project

## Project Overview
STQD6324 Assignment 1 

The chosen domain is **healthcare**, with a focus on **diabetes risk analysis**. I use a public dataset from the UCI Machine Learning Repository and tools like Hive, Pig, PySpark, and Python visualizations to perform data cleaning, feature analysis, and predictive modeling.

---

## Objectives

* Acquire and clean raw diabetes health records
* Use Hive and Pig to explore high-risk group patterns
* Build a predictive logistic regression model using PySpark
* Visualize patterns across outcome, age, BMI, and other factors
* Deliver insights, recommendations documentation

---

## Technologies Used

* **Apache Hive** 
* **Apache Pig**
* **PySpark MLlib** 
* **Pandas / Seaborn / Matplotlib** 
* **GitHub** 

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
* `notebooks/visualization.ipynb` and `notebooks/visualization2` (for visualization output)

4. All charts are saved under `/images/`, and insights are in Markdown

---

## Author

**Zhang Zhuorui**
**p147459**
UKM

---

