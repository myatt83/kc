delimiter /
TRUNCATE TABLE IP_REVIEW_REQ_TYPE
/
INSERT INTO IP_REVIEW_REQ_TYPE (IP_REVIEW_REQ_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('1','Expedited','admin',NOW(),UUID(),1)
/
INSERT INTO IP_REVIEW_REQ_TYPE (IP_REVIEW_REQ_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('2','Special','admin',NOW(),UUID(),1)
/
INSERT INTO IP_REVIEW_REQ_TYPE (IP_REVIEW_REQ_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('3','Standard','admin',NOW(),UUID(),1)
/
INSERT INTO IP_REVIEW_REQ_TYPE (IP_REVIEW_REQ_TYPE_CODE,DESCRIPTION,UPDATE_USER,UPDATE_TIMESTAMP,OBJ_ID,VER_NBR) 
    VALUES ('4','Other','admin',NOW(),UUID(),1)
/
delimiter ;