SELECT * FROM diabetes LIMIT 10;

SELECT
    AVG(Pregnancies),
    AVG(Glucose),
    AVG(BloodPressure),
    AVG(SkinThickness),
    AVG(Insulin),
    AVG(BMI),
    AVG(DiabetesPedigreeFunction),
    AVG(Age)
FROM diabetes;

SELECT COUNT(*) FROM diabetes;

LOAD DATA INPATH '/user/maria_dev/output/high_risk_v2'
OVERWRITE INTO TABLE high_risk_summary;

SELECT COUNT(*) FROM high_risk_summary;
SELECT * FROM high_risk_summary ORDER BY age LIMIT 10;
SELECT * FROM high_risk_export LIMIT 100;
SELECT * FROM high_risk_export;