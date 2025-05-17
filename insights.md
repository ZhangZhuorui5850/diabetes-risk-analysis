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
    *Aim: To compare the age distribution of people with different diabetes diagnoses (Outcome 0 vs. 1).
    * The age distribution of those with Outcome=0 (no diabetes) is centered on the 22-35 year age range, with a median age of about 27 years.
    * Outcome=1 (diagnosed with diabetes) has a higher median age of about 35 years and a wider age range.
    * The apparent upper age boundary expansion and more advanced age outliers in the diabetic group (orange box line on the right) suggests that there are more older individuals in the population.
  ![Age Distribution by Diabetes](https://github.com/user-attachments/assets/389fb7ea-0935-4ea6-b3dd-f61a1ad45f39)
* **Boxplot: BMI vs Outcome**: Diabetics show higher BMI median and more extreme outliers
    * Aim: To compare the age distribution of people with different diabetes diagnoses (Outcome 0 vs. 1).
    * The age distribution of those with Outcome=0 (no diabetes) is centered on the 22-35 year age range, with a median age of about 27 years.
    * Outcome=1 (diagnosed with diabetes) has a higher median age of about 35 years and a wider age range.
    * The apparent upper age boundary expansion and more advanced age outliers in the diabetic group (orange box line on the right) suggests that there are more older individuals in the population.
    * The greater number of extreme outliers: the presence of several individuals with BMIs above 50 and even close to 70 in the Outcome=1 group suggests that the prevalence of diabetes is significantly higher among the extremely obese.
  ![BMI Distribution by Diabetes Outcome](https://github.com/user-attachments/assets/06205c5e-b94d-432f-9e13-69cad20ed1d1)
* **Average Age by Diabetes Outcome**: The average age of a person with diabetes is about 37 years, which is about 6 years higher than that of a person without the disease.
    * The greater number of extreme outliers: the presence of several individuals with BMIs above 50 and even close to 70 in the Outcome=1 group suggests that the prevalence of diabetes is significantly higher among the extremely obese.
  ![Average Age by Diabetes Outcome](https://github.com/user-attachments/assets/c4dfdf93-ab38-4456-bdbe-e259193b7dd7)
* **Average BMl by Diabetes Outcome**: The mean BMI of patients with diabetes was nearly 5 units higher, supporting the strong association between obesity and diabetes.
    * 未患糖尿病的人群（绿色柱）的平均 BMI 约为 31，接近肥胖界限（BMI ≥ 30）。
    * 糖尿病患者（红色柱）平均 BMI 达到 35，明确处于肥胖区间。
  ![Average BMl by Diabetes Outcome](https://github.com/user-attachments/assets/e6522a7c-0611-457c-acc4-a9e02d1189c1)
* **Correlation Matrix**: revealed that Age and Glucose had the highest correlation with Outcome and were the key predictive features.
    * Age（0.24）与 Outcome 的相关性最大，意味着年龄越大，越可能患病。
    * SkinThickness（0.07） 与糖尿病的关系最弱，可视为较次要特征。
    * Age、Pregnancies、DiabetesPedigreeFunction 是当前图表中与糖尿病最相关的3个变量，应在建模阶段给予优先考虑。
  ![Correlation Matrix](https://github.com/user-attachments/assets/e4acdd27-ff98-423a-8b06-5322b0505817)
* **High-Risk Diabetes Cases by Age Group**: This graph shows the number of individuals at high risk of diabetes in each age group. Although there are more young people, it does not mean that the risk of disease is higher.
    * Objective: To demonstrate the number distribution of people classified as high risk of diabetes (Outcome=1) in different age groups.
    * This result should be further analyzed in conjunction with sample distribution to avoid misleading modeling of “surface trends”.
  ![high_risk_by_age_group](https://github.com/user-attachments/assets/e5af3961-6810-4077-b490-7a9b2258bd9a)
* **Proportion of Diabetes Cases by Age Group**: Revealing the highest correlation between Age and Glucose and Outcome, it is the key predictive feature.
    * Purpose: To compare the proportion of the total number of people with diabetes (Outcome = 1) in different age groups to determine which age group has the relatively highest risk of developing the disease.
    * The age group 50-55 has the highest percentage of diabetes at about 85%, meaning that more than 80% of people in this age group are diabetes positive.
    * This is followed closely by the 55-60 age group, with a diabetes rate of around 70%.
    * From the age of 20-25 years onwards, the proportion of diabetes mellitus increases with age, with an overall upward trend, until it peaks between the ages of 50-60 years.
    * After that, the proportion falls for those over 60 due to insufficient sample size.
    * This figure reinforces the conclusion that "the peak of diabetes is in the middle and old age (especially 50-60 years)".
  ![Proportion of Diabetes Cases by Age Group](https://github.com/user-attachments/assets/01eed642-5d76-45fe-a7a0-ce42507bd236)
* **High BMI & Diabetic Patients by Age (Hive+Pig Output)** :
  * Revealing the highest correlation between Age and Glucose and Outcome, it is the key predictive feature.
  * There is still a large number of diabetics with high BMI around the age of 60, suggesting that diabetes risk continues to accumulate with age.
  * Purpose: To demonstrate the number of high-risk individuals with both high BMI (obesity) and diabetes (Outcome = 1) at each age.
  * As people age, the number of risk groups increases, especially since they are 40 years old.
  * Between 48–66 years old, the number of high-risk people continues to maintain a high density range of more than 10 people, indicating that this is the stage of a concentrated outbreak of the disease.
 ![High BMI   Diabetic Patients by Age (Hive+Pig Output)](https://github.com/user-attachments/assets/1ec87dd8-893e-47b0-8bed-e38023a85ab9)
* **Proportion of Obese Individuals Among Diabetics by Age**: There is still a large number of diabetics with high BMI around the age of 60, suggesting that diabetes risk continues to accumulate with age.
  * Purpose: Show the proportion of obese individuals (BMI ≥ 30) in patients with diabetes of different ages.
  * The obesity rate is close to 100% in most patients with diabetes age groups (e.g., 21–29, 36–39, 47–49, 57–70).
  * In some age groups (e.g., 31–35 years, 50–55 years), the proportion of obesity decreased slightly, but remained at a high level of 60–90%.
  * Obesity is a common feature of diabetic patients, especially in young and middle-aged patients, further confirming that BMI is the dominant risk factor for diabetes.
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
