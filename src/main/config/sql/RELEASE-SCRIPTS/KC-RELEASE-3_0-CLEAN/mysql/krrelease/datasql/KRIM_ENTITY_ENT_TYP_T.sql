delimiter /
TRUNCATE TABLE KRIM_ENTITY_ENT_TYP_T
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ACTV_IND,ENTITY_ID,ENT_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR)
  VALUES ('Y','1','SYSTEM',STR_TO_DATE( '20081107094902', '%Y%m%d%H%i%s' ),'5B1B6B919CCB6496E0404F8189D822F2',1)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ACTV_IND,ENTITY_ID,ENT_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR)
  VALUES ('Y','1100','PERSON',STR_TO_DATE( '20081113140649', '%Y%m%d%H%i%s' ),'5B97C50B03E06110E0404F8189D85213',1)
/
INSERT INTO KRIM_ENTITY_ENT_TYP_T (ACTV_IND,ENTITY_ID,ENT_TYP_CD,LAST_UPDT_DT,OBJ_ID,VER_NBR)
  VALUES ('Y','1131','PERSON',STR_TO_DATE( '20081113140654', '%Y%m%d%H%i%s' ),'5B97C50B03FF6110E0404F8189D85213',1)
/
delimiter ;