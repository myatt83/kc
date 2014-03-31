DELIMITER /

CREATE TABLE COI_NOTE_TYPE
(
      NOTE_TYPE_CODE VARCHAR(3) NOT NULL
        , SORT_ID DECIMAL(3,0) NOT NULL
        , DESCRIPTION VARCHAR(20) NOT NULL
        , ACTIVE_FLAG CHAR(1) NOT NULL
        , UPDATE_TIMESTAMP DATE NOT NULL
        , UPDATE_USER VARCHAR(60) NOT NULL
        , VER_NBR DECIMAL(8,0) DEFAULT 1 NOT NULL
        , OBJ_ID VARCHAR(36) NOT NULL
)
/

ALTER TABLE COI_NOTE_TYPE
    ADD CONSTRAINT COI_NOTE_TYPEP1
PRIMARY KEY (NOTE_TYPE_CODE)
/

DELIMITER ;