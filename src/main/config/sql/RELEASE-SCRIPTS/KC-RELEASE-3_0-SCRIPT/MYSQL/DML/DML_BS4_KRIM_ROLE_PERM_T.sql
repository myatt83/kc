INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T ( ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND )
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'IRB Online Reviewer'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'View Protocol'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T ( ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND )
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'View Protocol'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'IRB Online Reviewer'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'View Protocol Online Review Comments'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND)
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'View Protocol Online Review Comments'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND ROLE_NM = 'IRB Online Reviewer'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'Maintain Protocol Online Review Comments'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'Maintain Protocol Online Review Comments'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T ( ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND )
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'Maintain Protocol Online Reviews'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE NMSPC_CD = 'KC-UNT' AND ROLE_NM = 'IRB Administrator'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NMSPC_CD = 'KC-PROTOCOL' AND NM = 'Perform Committee Actions'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, OBJ_ID)
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' AND NMSPC_CD = 'KC-UNT'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Modify Notification Template' AND NMSPC_CD = 'KC-PROTOCOL'), 'Y', UUID() FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, OBJ_ID)
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Reviewer' AND NMSPC_CD = 'KC-UNT'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'View Notification Template' AND NMSPC_CD = 'KC-PROTOCOL'), 'Y', UUID() FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, VER_NBR, OBJ_ID) 
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Manager' AND NMSPC_CD = 'KC-SYS'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Populate KC Groups' AND NMSPC_CD = 'KC-SYS'), 'Y', 1, UUID() FROM KRIM_ROLE_PERM_ID_S
WHERE NOT EXISTS (SELECT 'S' FROM KRIM_ROLE_PERM_T RP
		JOIN KRIM_ROLE_T R ON RP.ROLE_ID = R.ROLE_ID AND R.ROLE_NM = 'Manager' AND NMSPC_CD = 'KC-SYS'
		JOIN KRIM_PERM_T P ON RP.PERM_ID = P.PERM_ID AND P.NM = 'Populate KC Groups' AND P.NMSPC_CD = 'KC-SYS');

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, VER_NBR, OBJ_ID) 
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Technical Administrator' AND NMSPC_CD = 'KC-SYS'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Populate KC Groups' AND NMSPC_CD = 'KC-SYS'), 'Y', 1, UUID() FROM KRIM_ROLE_PERM_ID_S
WHERE NOT EXISTS (	SELECT 'S' FROM KRIM_ROLE_PERM_T RP
		JOIN KRIM_ROLE_T R ON RP.ROLE_ID = R.ROLE_ID AND R.ROLE_NM = 'Technical Administrator' AND NMSPC_CD = 'KR-SYS'
		JOIN KRIM_PERM_T P ON RP.PERM_ID = P.PERM_ID AND P.NM = 'Populate KC Groups' AND P.NMSPC_CD = 'KC-SYS');

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

Insert into KRIM_ROLE_PERM_T (ROLE_PERM_ID,OBJ_ID,VER_NBR,ROLE_ID,PERM_ID,ACTV_IND) 
SELECT MAX(ID),UUID(),1, 
        (SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator' AND RT.NMSPC_CD = 'KC-UNT'), 
        (SELECT KP.PERM_ID FROM KRIM_PERM_T KP WHERE KP.NMSPC_CD = 'KC-PROTOCOL' and KP.NM = 'Edit Protocol Billable'),'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID),UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator' AND RT.NMSPC_CD = 'KC-UNT') , (SELECT KP.PERM_ID FROM KRIM_PERM_T KP WHERE KP.NMSPC_CD = 'KC-PROTOCOL' AND KP.NM = 'Modify Protocol Submission') , 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID),UUID(), 1, (SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator' AND RT.NMSPC_CD = 'KC-UNT') , (SELECT KP.PERM_ID FROM KRIM_PERM_T KP WHERE KP.NMSPC_CD = 'KC-PROTOCOL' AND KP.NM = 'Create ProtocolDocument') , 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, OBJ_ID)
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'IRB Administrator' AND NMSPC_CD = 'KC-UNT'), (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'Protocol Review Not Required' AND NMSPC_CD = 'KC-PROTOCOL'), 'Y', UUID () FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, ROLE_ID, PERM_ID, ACTV_IND, OBJ_ID, VER_NBR) 
SELECT MAX(ID), (SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'IRB Administrator' AND RT.NMSPC_CD = 'KC-UNT'), 
(SELECT PERM_ID FROM KRIM_PERM_T PT where PT.NM = 'Submit Protocol' AND PT.NMSPC_CD = 'KC-PROTOCOL'), 'Y', UUID(), 1 FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, 
(SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'Active Committee Member' AND RT.NMSPC_CD = 'KC-PROTOCOL'), 
(SELECT PERM_ID FROM KRIM_PERM_T PT where PT.NM = 'View Committee' AND PT.NMSPC_CD = 'KC-PROTOCOL'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

INSERT INTO KRIM_ROLE_PERM_ID_S VALUES (NULL);

INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND)
SELECT MAX(ID), UUID(), 1, 
(SELECT ROLE_ID FROM KRIM_ROLE_T RT WHERE RT.ROLE_NM = 'Active Committee Member On Scheduled Date' AND RT.NMSPC_CD = 'KC-PROTOCOL'), 
(SELECT PERM_ID FROM KRIM_PERM_T PT where PT.NM = 'View Schedule' AND PT.NMSPC_CD = 'KC-PROTOCOL'), 'Y' FROM KRIM_ROLE_PERM_ID_S;

COMMIT;