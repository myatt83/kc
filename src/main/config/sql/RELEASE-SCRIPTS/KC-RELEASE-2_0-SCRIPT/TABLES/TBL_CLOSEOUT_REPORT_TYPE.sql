CREATE TABLE CLOSEOUT_REPORT_TYPE (
    CLOSEOUT_REPORT_CODE VARCHAR2 (3) NOT NULL, 
    DESCRIPTION VARCHAR2 (200) NOT NULL, 
    UPDATE_TIMESTAMP DATE NOT NULL, 
    UPDATE_USER VARCHAR2 (60) NOT NULL, 
    VER_NBR NUMBER (8, 0) DEFAULT 1 NOT NULL, 
    OBJ_ID VARCHAR2 (36) DEFAULT SYS_GUID () NOT NULL) ;

ALTER TABLE CLOSEOUT_REPORT_TYPE 
    ADD CONSTRAINT PK_CLOSEOUT_REPORT_TYPE 
            PRIMARY KEY (CLOSEOUT_REPORT_CODE) ;