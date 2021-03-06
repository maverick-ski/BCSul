CREATE TABLE "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" 
   (	"COD_EMP_ADQ" VARCHAR2(2), 
	"COD_EMP_CED" VARCHAR2(2), 
	"DT_CESSAO" DATE, 
	"TP_PRODUTO" NUMBER(1,0), 
	"ST_TIPO_CESSAO" CHAR(1), 
	"COD_CONTRATO_CED" CHAR(9), 
	"NUM_PARCELA_CED" NUMBER(3,0), 
	"COD_CONTRATO_ADQ" CHAR(9), 
	"NUM_PARCELA_ADQ" NUMBER(3,0), 
	"VAL_CALCULO_1" NUMBER(14,5), 
	"VAL_CALCULO_2" NUMBER(14,5), 
	"DT_MOV" DATE, 
	"DT_BASE" DATE, 
	"TP_OPERACAO" CHAR(1), 
	"LOJA" VARCHAR2(4), 
	"DT_MOV_HIST" DATE, 
	"DT_EFETIVA" DATE, 
	"NATUREZA_RCB" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
  STORAGE(
  BUFFER_POOL DEFAULT)
  TABLESPACE "SCCTOOLSD" 
;
 
  CREATE INDEX "SUPORTERJ"."IDX_REL_DIF_TX_HIST_DT_EFETIVA" ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" ("DT_EFETIVA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "INDICES" ;
 
  CREATE INDEX "SUPORTERJ"."IDX_T_REL789_HIST_IDX05" ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" ("DT_MOV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 8388608 NEXT 8388608 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "INDICES" ;
 
  CREATE INDEX "SUPORTERJ"."IDX_T_REL789_HIST_IDX04" ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" ("DT_BASE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 2097152 NEXT 20971520 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "INDICES" ;
 
  CREATE INDEX "SUPORTERJ"."IDX_T_REL789_HIST_IDX02" ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" ("COD_CONTRATO_CED", "NUM_PARCELA_CED") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 2097152 NEXT 20971520 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "INDICES" ;
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."COD_EMP_ADQ" IS 'C�digo da Empresa Adquirente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."COD_EMP_CED" IS 'C�digo da Empresa Cedente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."DT_CESSAO" IS 'Data da Cess�o';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."TP_PRODUTO" IS 'Indica o tipo de produto. (0 - CPP / 1 - CART�O)';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."ST_TIPO_CESSAO" IS '0 - Sem Coobriga��o, 1 - Com Coobriga��o';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."COD_CONTRATO_CED" IS 'N�mero do Contrato Cedente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."NUM_PARCELA_CED" IS 'N�mero da Parcela Cedente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."COD_CONTRATO_ADQ" IS 'N�mero do Contrato adquirente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."NUM_PARCELA_ADQ" IS 'N�mero da Parcela adquirente';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."VAL_CALCULO_1" IS 'Valor do C�lculo 1';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."VAL_CALCULO_2" IS 'Valor do C�lculo 2';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."DT_MOV" IS 'Data de Movimento';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."DT_BASE" IS 'Data Base';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."TP_OPERACAO" IS 'Indica o Tipo de opera��o (1 - baixa, 2 - antecipa��o, 3 - cancelamento, 4 - falecimento)';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."LOJA" IS 'C�digo da Loja';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."DT_MOV_HIST" IS 'Data que o registro foi movido para a tabela de hist�rico';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."DT_EFETIVA" IS 'Data efetiva de contabiliza��o - Parametro incluido para equaliza��o com integra��o cont�bil do processo';
 
   COMMENT ON COLUMN "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST"."NATUREZA_RCB" IS 'Identificador de Motivo da Baixa - Para filtro em relat�rio para a CTB';
 
  GRANT DELETE ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "SUPORTERJ_JOBS";
 
  GRANT INSERT ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "SUPORTERJ_JOBS";
 
  GRANT SELECT ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "SUPORTERJ_JOBS";
 
  GRANT UPDATE ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "SUPORTERJ_JOBS";
 
  GRANT SELECT ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "RL_SUPORTE_TI";
 
  GRANT DELETE ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "RL_SUPORTE_TI_DML";
 
  GRANT INSERT ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "RL_SUPORTE_TI_DML";
 
  GRANT UPDATE ON "SUPORTERJ"."BCSUL_T_REL_DIF_TAXAS_HIST" TO "RL_SUPORTE_TI_DML";