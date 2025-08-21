/* Summary Statistics by State */
PROC MEANS DATA=public_health MEAN STD MIN MAX;
    CLASS _STATE;
    VAR _BMI5 _FLSHOT6 _PNEUMO2;
RUN;