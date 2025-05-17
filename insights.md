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
  ![Age Distribution by Diabetes](https://github.com/user-attachments/assets/389fb7ea-0935-4ea6-b3dd-f61a1ad45f39)
* **Boxplot: BMI vs Outcome**: Diabetics show higher BMI median and more extreme outliers
  ![BMI Distribution by Diabetes Outcome](https://github.com/user-attachments/assets/06205c5e-b94d-432f-9e13-69cad20ed1d1)
* **Average Age by Diabetes Outcome**: The average age of a person with diabetes is about 37 years, which is about 6 years higher than that of a person without the disease.
  ![Average Age by Diabetes Outcome](https://github.com/user-attachments/assets/c4dfdf93-ab38-4456-bdbe-e259193b7dd7)
* **Average BMl by Diabetes Outcome**: The mean BMI of patients with diabetes was nearly 5 units higher, supporting the strong association between obesity and diabetes.
  ![Average BMl by Diabetes Outcome](https://github.com/user-attachments/assets/e6522a7c-0611-457c-acc4-a9e02d1189c1)
* **Correlation Matrix**: revealed that Age and Glucose had the highest correlation with Outcome and were the key predictive features.
  ![Correlation Matrix](https://github.com/user-attachments/assets/e4acdd27-ff98-423a-8b06-5322b0505817)
* **High-Risk Diabetes Cases by Age Group**: This graph shows the number of individuals at high risk of diabetes in each age group. Although there are more young people, it does not mean that the risk of disease is higher.
  ![high_risk_by_age_group](https://github.com/user-attachments/assets/e5af3961-6810-4077-b490-7a9b2258bd9a)
* **Proportion of Diabetes Cases by Age Group**: Revealing the highest correlation between Age and Glucose and Outcome, it is the key predictive feature.
  ![Proportion of Diabetes Cases by Age Group](https://github.com/user-attachments/assets/01eed642-5d76-45fe-a7a0-ce42507bd236)
* **High BMI & Diabetic Patients by Age (Hive+Pig Output)** :
  * Revealing the highest correlation between Age and Glucose and Outcome, it is the key predictive feature.
  * There is still a large number of diabetics with high BMI around the age of 60, suggesting that diabetes risk continues to accumulate with age.
 ![High BMI   Diabetic Patients by Age (Hive+Pig Output)](https://github.com/user-attachments/assets/1ec87dd8-893e-47b0-8bed-e38023a85ab9)
* **Proportion of Obese Individuals Among Diabetics by Age**: There is still a large number of diabetics with high BMI around the age of 60, suggesting that diabetes risk continues to accumulate with age.
  ![Proportion of Obese Individuals Among Diabetics by Age](https://github.com/user-attachments/assets/cade68da-6bb5-4af1-b405-8177653a5460)


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
