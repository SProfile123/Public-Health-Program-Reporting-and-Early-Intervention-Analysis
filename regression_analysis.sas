/* Regression Analysis */
PROC REG DATA=public_health;
    MODEL _BMI5 = IYEAR _FLSHOT6 _PNEUMO2;
RUN;
QUIT;