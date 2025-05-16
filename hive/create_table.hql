CREATE TABLE diabetes (
    Pregnancies INT,
    Glucose INT,
    BloodPressure INT,
    SkinThickness INT,
    Insulin INT,
    BMI DOUBLE,
    DiabetesPedigreeFunction DOUBLE,
    Age INT,
    Outcome INT
)
STORED AS ORC;

CREATE TABLE high_risk_summary (
    age INT,
    count INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;

CREATE TABLE high_risk_export (
    age INT,
    count INT
)
STORED AS TEXTFILE;