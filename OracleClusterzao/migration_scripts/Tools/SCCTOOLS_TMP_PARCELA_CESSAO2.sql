CREATE TABLE "SCCTOOLS"."TMP_PARCELA_CESSAO2" 
   (	
    "PARCELA_CED_COD_EMP" CHAR(2), 
	"PARCELA_CED_CONTRATO" VARCHAR2(9), 
	"PARCELA_CED_PARCELA" NUMBER(3,0), 
	"PARCELA_CED_CONTRATO_CESSAO" CHAR(9), 
	"PARCELA_CED_PARCELA_CESSAO" NUMBER, 
	"PARCELA_CED_NUM_SEQ_CESSAO" NUMBER, 
	"PARCELA_CED_DT_CESSAO" DATE, 
	"PARCELA_CED_ST_CESSAO" CHAR(1), 
	"PARCELA_CED_ST_TIPO_CESSAO" CHAR(1), 
	"PARCELA_CED_DT_VCT" DATE, 
	"PARCELA_CED_VAL_PRT" NUMBER(14,5), 
	"PARCELA_CED_STATUS_PARCELA" CHAR(1), 
	"PARCELA_CED_DT_RCB" DATE, 
	"PARCELA_CED_VAL_DESCONTO" NUMBER(20,5), 
	"PARCELA_CED_VAL_MULTA" NUMBER(20,5), 
	"PARCELA_CED_VAL_DIF_RCB" NUMBER(20,5), 
	"PARCELA_CED_DT_REABP" DATE, 
	"PARCELA_CED_DT_REPASSE" DATE, 
	"PARCELA_CED_COD_BCO_RCB" VARCHAR2(3), 
	"PARCELA_CED_COD_AGENCIA_RCB" VARCHAR2(9), 
	"CONTRATO_CED_STATUS_CONTRATO" CHAR(1), 
	"CONTRATO_CED_CPF_CGC" VARCHAR2(14), 
	"CONTRATO_CED_VAL_RETEN" NUMBER(14,5), 
	"CONTRATO_CED_TX_FIN" NUMBER(14,6), 
	"PARCELA_ADQ_COD_EMP" CHAR(2), 
	"PARCELA_ADQ_DT_VCT" DATE, 
	"PARCELA_ADQ_VAL_PRT" NUMBER(14,5), 
	"PARCELA_ADQ_STATUS_PARCELA" CHAR(1), 
	"PARCELA_ADQ_DT_RCB" DATE, 
	"PARCELA_ADQ_VAL_DESCONTO" NUMBER(20,5), 
	"PARCELA_ADQ_VAL_MULTA" NUMBER(20,5), 
	"PARCELA_ADQ_VAL_DIF_RCB" NUMBER(20,5), 
	"PARCELA_ADQ_DT_CESSAO" DATE, 
	"PARCELA_ADQ_DT_REABP" DATE, 
	"PARCELA_ADQ_DT_REPASSE" DATE, 
	"CONTRATO_ADQ_STATUS_CONTRATO" CHAR(1), 
	"CONTRATO_ADQ_CPF_CGC" VARCHAR2(14), 
	"CONTRATO_ADQ_VAL_RETEN" NUMBER(14,5), 
	"CONTRATO_ADQ_TX_FIN" NUMBER(14,6), 
	"NEXISTECONTRATO2" NUMBER, 
	"NEXISTECESSAODECESSAO" NUMBER, 
	"NEXISTEPRCABERTOLOTE" NUMBER, 
	"NEXISTERECEBADQ" NUMBER, 
	"NUM_IDENT" NUMBER(30,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT)
  TABLESPACE "PARCELA_CESSAO" 
  PARTITION BY LIST ("PARCELA_CED_COD_EMP") 
 (PARTITION "CED_COD_EMP_47"  VALUES ('47') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_55"  VALUES ('55') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_99"  VALUES ('99') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_04"  VALUES ('04') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_45"  VALUES ('45') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_73"  VALUES ('73') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_86"  VALUES ('86') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_58"  VALUES ('58') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_61"  VALUES ('61') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_50"  VALUES ('50') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_93"  VALUES ('93') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_97"  VALUES ('97') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_00"  VALUES ('00') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_48"  VALUES ('48') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_75"  VALUES ('75') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_71"  VALUES ('71') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_87"  VALUES ('87') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_72"  VALUES ('72') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_01"  VALUES ('01') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_82"  VALUES ('82') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_81"  VALUES ('81') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_88"  VALUES ('88') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_89"  VALUES ('89') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_21"  VALUES ('21') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_95"  VALUES ('95') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_94"  VALUES ('94') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_59"  VALUES ('59') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_66"  VALUES ('66') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_78"  VALUES ('78') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_83"  VALUES ('83') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_49"  VALUES ('49') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_77"  VALUES ('77') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_44"  VALUES ('44') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_20"  VALUES ('20') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_22"  VALUES ('22') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_19"  VALUES ('19') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_63"  VALUES ('63') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_76"  VALUES ('76') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_69"  VALUES ('69') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_67"  VALUES ('67') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_03"  VALUES ('03') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_02"  VALUES ('02') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_92"  VALUES ('92') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_98"  VALUES ('98') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_42"  VALUES ('42') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_43"  VALUES ('43') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_56"  VALUES ('56') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_39"  VALUES ('39') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_74"  VALUES ('74') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_51"  VALUES ('51') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_80"  VALUES ('80') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_91"  VALUES ('91') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_84"  VALUES ('84') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_85"  VALUES ('85') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_52"  VALUES ('52') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_46"  VALUES ('46') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_38"  VALUES ('38') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_90"  VALUES ('90') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_64"  VALUES ('64') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_41"  VALUES ('41') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_40"  VALUES ('40') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_70"  VALUES ('70') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_79"  VALUES ('79') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_60"  VALUES ('60') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_57"  VALUES ('57') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_65"  VALUES ('65') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_53"  VALUES ('53') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_62"  VALUES ('62') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_96"  VALUES ('96') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_68"  VALUES ('68') 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS , 
 PARTITION "CED_COD_EMP_VARIOS"  VALUES (default) 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255  NOLOGGING 
  STORAGE(INITIAL 65536 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "CONTRATO" NOCOMPRESS ) ;
 
  GRANT ALTER ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT DELETE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT INDEX ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT INSERT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT SELECT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT UPDATE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT REFERENCES ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT ON COMMIT REFRESH ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT QUERY REWRITE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT DEBUG ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT FLASHBACK ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCJUN";
 
  GRANT DELETE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCTOOLS_JOBS";
 
  GRANT INSERT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCTOOLS_JOBS";
 
  GRANT SELECT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCTOOLS_JOBS";
 
  GRANT UPDATE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "SCCTOOLS_JOBS";
 
  GRANT SELECT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "RL_SUPORTE_TI";
 
  GRANT DELETE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "RL_SUPORTE_TI_DML";
 
  GRANT INSERT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "RL_SUPORTE_TI_DML";
 
  GRANT UPDATE ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "RL_SUPORTE_TI_DML";
 
  GRANT SELECT ON "SCCTOOLS"."TMP_PARCELA_CESSAO2" TO "LK_TOOLS_BACEN";