/* Frequency Tables */
PROC FREQ DATA=public_health;
    TABLES _STATE*_FLSHOT6 / CHISQ;
    TABLES _STATE*_PNEUMO2 / CHISQ;
RUN;