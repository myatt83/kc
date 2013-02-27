DELIMITER /
UPDATE NOTIFICATION_TYPE SET DESCRIPTION='Proposal submitted to sponsor after routing.' WHERE DESCRIPTION='Proposal sumbitted to sponsor after routing.'
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),1,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),2,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),3,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),5,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),7,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),8,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
INSERT INTO SEQ_NOTIFICATION_TYPE_ID VALUES(NULL)
/
INSERT INTO NOTIFICATION_TYPE (NOTIFICATION_TYPE_ID, MODULE_CODE, ACTION_CODE, DESCRIPTION, SUBJECT, MESSAGE, PROMPT_USER, SEND_NOTIFICATION, UPDATE_USER, UPDATE_TIMESTAMP, VER_NBR, OBJ_ID)
VALUES((SELECT (MAX(ID)) FROM SEQ_NOTIFICATION_TYPE_ID),9,'999','Ad Hoc Notification','Default ad-hoc notification subject','Default ad-hoc notification message','N','Y','admin',NOW(),1,UUID())
/
DELIMITER ;