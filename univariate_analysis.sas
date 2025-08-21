/* Univariate Analysis */
PROC UNIVARIATE DATA=public_health;
    VAR _BMI5;
    HISTOGRAM / NORMAL;
RUN;