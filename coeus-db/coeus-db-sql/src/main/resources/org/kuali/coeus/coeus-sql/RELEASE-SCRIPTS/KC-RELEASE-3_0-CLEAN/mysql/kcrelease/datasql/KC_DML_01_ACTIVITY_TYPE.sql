delimiter /
TRUNCATE TABLE ACTIVITY_TYPE
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Research','IPR','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Instruction','IN','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Public Service','CSSR','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Clinical Trial','PSSR','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('5','other','User must select','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('6','Fellowship - Pre-Doctoral','S&F','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('7','Fellowship - Post-Doctoral','S&F','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('8','Student Services','SS','admin',NOW(),UUID(),1)
/
INSERT INTO ACTIVITY_TYPE (ACTIVITY_TYPE_CODE,DESCRIPTION,HIGHER_EDUCATION_FUNCTION_CODE,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('9','Construction','User must select','admin',NOW(),UUID(),1)
/
delimiter ;