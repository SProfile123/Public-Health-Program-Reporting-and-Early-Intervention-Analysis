
    WITH ordered AS (
      SELECT _STATE, _BMI5,
             ROW_NUMBER() OVER (PARTITION BY _STATE ORDER BY _BMI5) AS rn,
             COUNT(*) OVER (PARTITION BY _STATE) AS cnt
      FROM processed_public_health
      WHERE _BMI5 IS NOT NULL
    )
    SELECT _STATE, AVG(_BMI5)/100.0 AS bmi_median
    FROM ordered
    WHERE rn IN ((cnt+1)/2, (cnt+2)/2)
    GROUP BY _STATE
    ORDER BY bmi_median DESC;
    