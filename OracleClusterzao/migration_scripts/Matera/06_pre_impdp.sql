spool pre_impdp.log

set echo on feedback on timing on

-- Grant on sys.DBMS_AQADM

grant execute on DBMS_AQADM to public;
grant execute on sys.DBMS_AQADM to public;

-- create_job_class

BEGIN
DBMS_SCHEDULER.CREATE_JOB_CLASS (
   job_class_name              =>  'JOBS_FINPAC3',
   service                     =>  'matera', 
   comments                    =>  'CLASS PARA JOBS QUE RODAM NO FINPAC3');
END;
/

-------------------------------------------------------
-- CRIA APOIO.BCSUL_V_SAC_TES                      --
-------------------------------------------------------

CREATE OR REPLACE VIEW APOIO.BCSUL_V_SAC_TES AS
SELECT tsdoc.cod_hist_liqdc, tsdoc.historico hist_liqdc,
       tsdoc.num_controle_clearing, tsdoc.id_banco_doc, tsdoc.num_agencia_doc,
       tsdoc.num_cc_doc, tsdoc.nome_pessoa, tsdoc.cpf_cgc_pessoa cpf_cgc,
       flx.vlr, flx.dt_liqdc, flx.id_sit_lanc_fluxo_caixa_spb,
       liqdc.nome_sub_sis_origem, liqdc.nome_resp, docdev.cod_dev_transf,
       md.descricao desc_historico, sitt.descricao,
       NVL(ti.id_pessoa, cc_pessoa.id_pessoa) id_pessoa,
       NVL(ti.num_agencia, cc_pessoa.num_agencia) num_agencia,
       NVL(ti.num_cc,cc_pessoa.num_cc ) num_cc,
       NVL(pes.nome,pes2.Nome) nome,
       NVL(pes.inscricao, pes2.inscricao) inscricao,
       sitspb.descricao sit_spb,
       To_char(tspb.dt_hora_resposta,'hh24:mi:ss') dt_hora,
       '' vlr_extenso
  FROM bc_pessoa pes,
       bc_pessoa pes2,
       ts_motivo_devolucao_doc md,
       ts_sit_lanc_fluxo_caixa sitt,
       bc_sit_evento_spb sitspb,
       ts_integra_cc ti,
       ts_doc_devolvido docdev,
       ts_liqdc liqdc,
       ts_lanc_fluxo_caixa flx,
       ts_liqdc_doc tsdoc,
       bc_cc_pessoa cc_pessoa,
       ts_retorno_spb tspb
 WHERE tsdoc.id_lanc_fluxo_caixa = flx.id_lanc_fluxo_caixa
   AND tspb.id_evento_spb(+) = flx.id_evento_spb
   AND flx.id_liqdc = liqdc.id_liqdc
   AND liqdc.id_liqdc = docdev.id_liqdc(+)
   AND docdev.cod_dev_transf = md.cod_motivo_devolucao_doc(+)
   AND flx.id_sit_lanc_fluxo_caixa = sitt.id_sit_lanc_fluxo_caixa(+)
   AND tsdoc.id_lanc_fluxo_caixa = ti.id_lanc_fluxo_caixa(+)
   AND ti.id_pessoa = pes.id_pessoa(+)
   AND cc_pessoa.id_pessoa = pes2.id_pessoa(+)
   and tsdoc.id_cc =  cc_pessoa.id_cc_pessoa (+)
   AND flx.id_sit_lanc_fluxo_caixa_spb = sitspb.id_sit_evento_spb(+)
   AND NVL(LIQDC.ID_LOTE,0) NOT IN(SELECT RRR.ID_LOTE FROM SUPORTERJ.BCSUL_V_RET_LOTE_REPRESADOS@TOOLS RRR)
   AND tsdoc.cod_hist_liqdc IN
          (202,
           203,
           200,
           201,
           204,
           205,
           207,
           208,
           259,
           260,
           261,
           262,
           263,
           264,
           265,
           266,
           267,
           268,
           290,
           296,
           286,
           287,
           288,
           291,
           292,
           293,
           294,
           297,
           285,
           271,
           243,
           206,
           895,
           128
          );

spool off
