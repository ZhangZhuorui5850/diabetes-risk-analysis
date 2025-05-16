diabetes_data = LOAD '/user/maria_dev/diabetes.csv'
  USING PigStorage(',')
  AS (
    Pregnancies:int,
    Glucose:int,
    BloodPressure:int,
    SkinThickness:int,
    Insulin:int,
    BMI:double,
    DiabetesPedigreeFunction:double,
    Age:int,
    Outcome:int
  );

-- 数据清理
valid_data = FILTER diabetes_data BY BMI > 0.0;

-- 选出高风险人群：BMI > 30 且 Outcome = 1
high_risk = FILTER valid_data BY BMI > 30.0 AND Outcome == 1;

-- 统计记录总数（用于验证结果非空）
grouped_all = GROUP high_risk ALL;
counted = FOREACH grouped_all GENERATE COUNT(high_risk);
DUMP counted;

-- 每个年龄段的高风险人数
grouped_by_age = GROUP high_risk BY Age;
age_counts = FOREACH grouped_by_age GENERATE group AS Age, COUNT(high_risk) AS Count;
sorted = ORDER age_counts BY Age ASC;

-- 输出
STORE sorted INTO '/user/maria_dev/output/high_risk_v2' USING PigStorage(',');
