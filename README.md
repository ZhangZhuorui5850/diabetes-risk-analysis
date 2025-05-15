# Diabetes Risk Analysis and Prediction Project

This project focuses on analyzing and predicting the risk of diabetes using health record data. The goal is to identify key factors that influence diabetes risk and provide data-driven recommendations for public health intervention.

---

## Dataset

The dataset used is the [Pima Indians Diabetes Dataset](https://www.kaggle.com/datasets/mathchi/diabetes-data-set), which includes the following health attributes:

- Pregnancies
- Glucose
- BloodPressure
- SkinThickness
- Insulin
- BMI
- DiabetesPedigreeFunction
- Age
- Outcome (0 = No diabetes, 1 = Has diabetes)

---

## Tools & Technologies Used

| Tool        | Purpose                              |
|-------------|---------------------------------------|
| **Hive**    | Data cleaning and SQL-based analysis |
| **Pig**     | Advanced filtering & grouping         |
| **Spark**   | Feature transformation & model building |
| **Python (Colab)** | Data visualization & ML modeling |
| **MySQL + Sqoop** | Exporting and storing results   |

---

## Project Highlights

- Analyzed average BMI and Age for diabetic vs non-diabetic patients
- Visualized key health metrics distributions
- Identified glucose and BMI as key predictors of diabetes
- Built a logistic regression model to predict diabetes outcome

---

## 📁 Project Structure

- `data/diabetes.csv` — Dataset
- `hive/` — Hive table + SQL queries
- `pig/analysis.pig` — High-risk filter script
- `spark/transform_and_predict.py` — Data cleaning + model
- `notebooks/visualization.ipynb` — Graphs and charts
- `models/logistic_regression.py` — ML code
- `README.md` — Project overview
- `insights.md` — Key findings
- `recommendations.md` — Suggestions
- `conclusion.md` — Final summary




