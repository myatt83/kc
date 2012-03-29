INSERT INTO KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, DESC_TXT, NMSPC_CD, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT) 
VALUES (KRIM_ROLE_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 'Access_Proposal_Person_Institutional_Salaries', 'Access Proposal Person Institutional Salaries', 'KC-PD', (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM ='Unit'), 'Y', SYSDATE)
/
INSERT INTO KRIM_ROLE_T (ROLE_ID, OBJ_ID, VER_NBR, ROLE_NM, DESC_TXT, NMSPC_CD, KIM_TYP_ID, ACTV_IND, LAST_UPDT_DT) 
	VALUES (KRIM_ROLE_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 'View Institutionally Maintained Salaries', 
			'View Institutionally Maintained Salaries', 'KC-PD', 
			(SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NMSPC_CD = 'KC-SYS' AND NM ='Unit'), 
			'Y', SYSDATE)
/
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) 
	VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
			(select perm_tmpl_id from KRIM_PERM_T where nm='Modify Budget'), 
			'KC-PD', 'VIEW_INSTITUTIONAL_SALARIES', 'VIEW INSTITUTIONAL BUDGET SALARIES', 'Y')
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
  VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_INSTITUTIONAL_SALARIES'), 
         (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Section'), 
         (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'sectionName'), 
         'budget')
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
  VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_INSTITUTIONAL_SALARIES'), 
         (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Section'), 
         (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName'), 
         'ProposalDevelopmentDocument')
/
INSERT INTO KRIM_PERM_T (PERM_ID, OBJ_ID, VER_NBR, PERM_TMPL_ID, NMSPC_CD, NM, DESC_TXT, ACTV_IND) 
	VALUES (KRIM_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
			(select perm_tmpl_id from KRIM_PERM_T where nm='Modify Budget'), 
			'KC-PD', 'VIEW_PROP_PERSON_INST_SALARIES', 'VIEW PROPOSAL PERSON INST SALARIES', 'Y')
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
  VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 
         (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Section'), 
         (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'sectionName'), 
         'budget')
/
INSERT INTO KRIM_PERM_ATTR_DATA_T (ATTR_DATA_ID, OBJ_ID, VER_NBR, PERM_ID, KIM_TYP_ID, KIM_ATTR_DEFN_ID, ATTR_VAL) 
  VALUES (KRIM_ATTR_DATA_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 
         (SELECT KIM_TYP_ID FROM KRIM_TYP_T WHERE NM = 'Document Section'), 
         (SELECT KIM_ATTR_DEFN_ID FROM KRIM_ATTR_DEFN_T WHERE NM = 'documentTypeName'), 
         'ProposalDevelopmentDocument')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Aggregator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_INSTITUTIONAL_SALARIES'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Budget Creator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_INSTITUTIONAL_SALARIES'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'View Institutionally Maintained Salaries'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_INSTITUTIONAL_SALARIES'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Aggregator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Budget Creator'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 'Y')
/
INSERT INTO KRIM_ROLE_PERM_T (ROLE_PERM_ID, OBJ_ID, VER_NBR, ROLE_ID, PERM_ID, ACTV_IND) 
  VALUES (KRIM_ROLE_PERM_ID_BS_S.NEXTVAL, SYS_GUID(), 1, 
         (SELECT ROLE_ID FROM KRIM_ROLE_T WHERE ROLE_NM = 'Access_Proposal_Person_Institutional_Salaries'), 
         (SELECT PERM_ID FROM KRIM_PERM_T WHERE NM = 'VIEW_PROP_PERSON_INST_SALARIES'), 'Y')
/
