CREATE TABLE S2S_FORM_TO_QUESTIONNAIRE  ( 
    S2S_FORM_TO_QUESTIONNAIRE_ID	NUMBER(12,0) NOT NULL,
	OPP_NAME_SPACE                  VARCHAR2(200) NOT NULL,
	FORM_NAME                       VARCHAR2(100) NOT NULL,
    QUESTIONNAIRE_ID                NUMBER(12,0) NOT NULL,
	UPDATE_TIMESTAMP                DATE NOT NULL,
	UPDATE_USER                     VARCHAR2(60) NOT NULL,
    OBJ_ID                          VARCHAR2(36) NOT NULL,
    VER_NBR                         NUMBER(8,0) NOT NULL
);

ALTER TABLE S2S_FORM_TO_QUESTIONNAIRE ADD (
	CONSTRAINT S2S_FORM_TO_QUESTIONNAIRE_PK
	PRIMARY KEY ( S2S_FORM_TO_QUESTIONNAIRE_ID )
);

ALTER TABLE S2S_FORM_TO_QUESTIONNAIRE ADD (
	CONSTRAINT S2S_FORM_TO_QUESTIONNAIRE_UQ
	UNIQUE ( S2S_FORM_TO_QUESTIONNAIRE_ID, OPP_NAME_SPACE )
);