CREATE TABLE SUBAWARD_CLOSEOUT 
   (	SUBAWARD_CLOSEOUT_ID NUMBER(12,0) NOT NULL, 
	SUBAWARD_ID NUMBER(12,0) NOT NULL, 
	CLOSEOUT_NUMBER NUMBER(3,0), 
	CLOSEOUT_TYPE_CODE NUMBER(3,0) NOT NULL, 
	DATE_REQUESTED DATE, 
	DATE_FOLLOWUP DATE, 
	DATE_RECEIVED DATE, 
	COMMENTS VARCHAR2(300 BYTE), 
	UPDATE_TIMESTAMP DATE NOT NULL, 
	UPDATE_USER VARCHAR2(60 BYTE) NOT NULL, 
	VER_NBR NUMBER(8,0) DEFAULT 1 NOT NULL, 
	OBJ_ID VARCHAR2(36 BYTE) NOT NULL,
	SEQUENCE_NUMBER NUMBER(4,0) NOT NULL,
	SUBAWARD_CODE VARCHAR2(20 BYTE) NOT NULL
  )
/
ALTER TABLE SUBAWARD_CLOSEOUT
	ADD CONSTRAINT PK_SUBAWARD_CLOSEOUT PRIMARY KEY (SUBAWARD_CLOSEOUT_ID)
/