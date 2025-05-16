# Insights: Data Analysis and Modeling

## 1. Data Cleaning and Preparation

The original dataset contains 768 records related to diabetes screening data. Several features including Glucose, BloodPressure, SkinThickness, Insulin, and BMI had invalid zero values, which were replaced with nulls. Rows with critical nulls were removed before training the model.

* **Final usable dataset**: 392 rows
* Features used: Pregnancies, Glucose, BloodPressure, SkinThickness, Insulin, BMI, DiabetesPedigreeFunction, Age

## 2. Outcome-Based Statistical Summary

### Average by Outcome Group

| Outcome         | Average Age | Average BMI |
| --------------- | ----------- | ----------- |
| 0 (No Diabetes) | 31.19       | 30.30       |
| 1 (Diabetes)    | 37.07       | 35.14       |

* Diabetic individuals tend to be older and have higher BMI.

## 3. Visual Analysis

* **Boxplot: Age vs Outcome**: Diabetics have wider age range and higher median age
* **Boxplot: BMI vs Outcome**: Diabetics show higher BMI median and more extreme outliers
* **Bar chart: Average Age & BMI**: Clear contrast between the two groups
* **Correlation Matrix**: Age and Glucose show the strongest correlation with diabetes
* **KDE Plot: Glucose**: Diabetics have glucose density curve shifted to higher values
* **Age Group Distribution** (from Hive+Pig + Jupyter):

  * High-risk groups (Outcome = 1) concentrated in age 40–55
  * Proportional plot confirms prevalence spikes above 40

## 4. Predictive Modeling (PySpark)

* Model: Logistic Regression
* Train/Test Split: 80% / 20% (335 / 57)
* ROC-AUC Score: **0.8421**

### Feature Coefficients

| Feature                  | Coefficient | Impact                                       |
| ------------------------ | ----------- | -------------------------------------------- |
| Age                      | +1.1198     | Strong positive                              |
| Glucose                  | +0.0876     | Moderate positive                            |
| BloodPressure            | -0.0410     | Minor negative                               |
| SkinThickness            | -0.0026     | Minimal impact                               |
| Insulin                  | +0.0140     | Small positive                               |
| BMI                      | -0.0012     | Unexpected negative (potential collinearity) |
| DiabetesPedigreeFunction | -0.0834     | Slightly negative                            |
| Pregnancies              | +0.0323     | Mild positive                                |

## 5. Hive + Pig Summary Analysis

* Used Pig script to filter diabetic cases and group by Age
* Output saved as high\_risk\_summary.csv, visualized in notebook
* Confirms middle-aged adults (30–55) dominate the high-risk segment

## 6. Key Takeaways

* Age and Glucose are the most important features for prediction
* Diabetes risk increases sharply after age 40, especially 45–55
* Visualization and modeling agree on central trends
* The dataset, although slightly imbalanced, yields a robust model
