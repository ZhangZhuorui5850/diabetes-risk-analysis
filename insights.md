# 📊 Key Insights from Diabetes Risk Analysis

This document summarizes the main insights discovered through exploratory data analysis and visualization of the Pima Indians Diabetes dataset.

---

## 1. BMI and Diabetes Risk

- Diabetic individuals have significantly higher average BMI.
- Average BMI (Outcome = 1): **35.14**
- Average BMI (Outcome = 0): **30.30**
- This indicates that obesity is a strong predictor of diabetes in this population.

---

## 2. Age and Diabetes

- Diabetic individuals are on average older.
- Average Age (Outcome = 1): **37.07**
- Average Age (Outcome = 0): **31.19**
- Age is a clear risk factor for developing diabetes.

---

## 3. Glucose Levels

- Glucose distribution shows a clear shift:
  - Diabetic patients tend to have glucose levels significantly higher than non-diabetics.
- KDE plots demonstrate this split clearly in the density curve.

---

## 4. Feature Correlation

- Correlation matrix reveals:
  - **Glucose** has the strongest positive correlation with diabetes outcome.
  - **BMI** and **Age** are also strongly related.
- These fields are most valuable in building predictive models.

---

## 5. Data Quality Issues

- Several key medical fields (Glucose, Insulin, SkinThickness) contain 0s, which are biologically implausible.
- These likely represent missing values and should be cleaned before modeling.

---

✅ These insights form the basis for:
- Feature selection in machine learning
- Health screening recommendations
- Focused interventions on high-risk groups
