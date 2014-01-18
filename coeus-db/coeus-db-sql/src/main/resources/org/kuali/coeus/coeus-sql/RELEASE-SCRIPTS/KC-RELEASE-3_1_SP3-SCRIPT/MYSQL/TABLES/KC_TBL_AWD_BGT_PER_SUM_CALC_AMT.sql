CREATE TABLE AWD_BGT_PER_SUM_CALC_AMT (
    AWD_BGT_PER_SUM_CALC_AMT_ID DECIMAL(12,0),
    BUDGET_PERIOD_ID DECIMAL(12,0) NOT NULL,
    COST_ELEMENT VARCHAR(8) NOT NULL,
    ON_OFF_CAMPUS_FLAG VARCHAR(1),
    RATE_CLASS_TYPE VARCHAR(1) NOT NULL,
    CALCULATED_COST DECIMAL(12,2), 
    CALCULATED_COST_SHARING DECIMAL(12,2), 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR(60) NOT NULL, 
    VER_NBR DECIMAL(8,0) DEFAULT 1, 
    OBJ_ID VARCHAR(36) NOT NULL
) ENGINE InnoDB CHARACTER SET utf8 COLLATE utf8_bin;

ALTER TABLE AWD_BGT_PER_SUM_CALC_AMT ADD CONSTRAINT AWD_BGT_PER_SUM_CALC_AMT_PK
              PRIMARY KEY (AWD_BGT_PER_SUM_CALC_AMT_ID);