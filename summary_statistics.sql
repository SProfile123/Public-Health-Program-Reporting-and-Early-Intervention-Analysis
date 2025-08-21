
SELECT 
    _STATE AS state_code,
    AVG(_BMI5) / 100.0 AS avg_bmi,
    SUM(CASE WHEN _FLSHOT6 = 1 THEN 1 ELSE 0 END) * 1.0 /
        NULLIF(SUM(CASE WHEN _FLSHOT6 IN (1,2) THEN 1 ELSE 0 END),0) AS flu_shot_rate,
    SUM(CASE WHEN _PNEUMO2 = 1 THEN 1 ELSE 0 END) * 1.0 /
        NULLIF(SUM(CASE WHEN _PNEUMO2 IN (1,2) THEN 1 ELSE 0 END),0) AS pneumonia_rate,
    COUNT(*) AS sample_size
FROM processed_public_health
GROUP BY _STATE
ORDER BY avg_bmi DESC;
