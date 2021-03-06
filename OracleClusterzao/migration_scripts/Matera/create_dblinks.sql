spool CREATE_dblinks.log

set echo on
set timing on

CREATE PUBLIC DATABASE LINK TOOLS_PROD CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05B57C8D3349E88E543C3D3FDD68BF4DEFCC298A9399C209D732A03ABC7599A7DA' USING 'TOOLS';
CREATE PUBLIC DATABASE LINK TOOLS CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05733CDD4E5D18E704AF4F7E33515A0710985304A294EA1991C4ECB7117F22D5A4' USING 'RACTOOLS';
CREATE PUBLIC DATABASE LINK WEBCOR CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '0518A1697A07E5279379334657AE5F5E2F3E2C5E3F83E57B4407D510A3892992D3' USING 'SINACOR';
CREATE PUBLIC DATABASE LINK LK_CHANGESPB_CAMBIO CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '0514777352F31B954F936EB986C6F72DBB236557683BFC7B8DA2C769F3A2B5C604' USING 'CAMGER';
CREATE PUBLIC DATABASE LINK HB CONNECT TO HB_ORACLE1 IDENTIFIED BY VALUES '05378E5A6FF8B1A4CFE250CE566C1E6FD5F226A2DB8AB4B84F' USING 'hb_prod';
CREATE PUBLIC DATABASE LINK CORRWIN CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05A914A68E2692D7D164AFAB8746A6D3D64F973172357081908212A05F72A8147B' USING 'SINACOR';
CREATE DATABASE LINK SUPORTERJ.TOOLS_PROD CONNECT TO SUPORTERJ IDENTIFIED BY VALUES '05ADFD49EE503D423262CBD352245C6C5F' USING 'TOOLS';
CREATE DATABASE LINK SUPORTERJ.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '0549E6C5EDA6264C8D3C6825A919CE88332D78F02591F7579D' USING 'RACTOOLS';
CREATE DATABASE LINK FINPAC.WEBCOR CONNECT TO CORRWIN IDENTIFIED BY VALUES '05F8F99551A38EE57182E1F5316F2F8B4C4AD421399455F3CD' USING 'SINACOR';
CREATE DATABASE LINK FINPAC.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05462250847721C21925A5F355F6FAF4F5CCAA525977E6007B' USING 'RACTOOLS';
CREATE DATABASE LINK SDBANCO.TOOLS CONNECT TO SCCTOOLS IDENTIFIED BY VALUES '05F94BD567D09054F7C23D04AB69D7D307007944C59AC17F38' USING 'TOOLS';
CREATE DATABASE LINK SDBANCO.WEBCOR CONNECT TO CORRWIN IDENTIFIED BY VALUES '05FD24095A4A3A28A05D2ADF1F78FE0183B611F29E7E0C11B2' USING 'SINACOR';
CREATE DATABASE LINK BCSCADASTRO.CORRWIN CONNECT TO FROM_BCSCADASTRO IDENTIFIED BY VALUES '0594F0F72F30889D2C1A3F68F32FC4198BEF8F55F70F6BF33735298113C79A57E7' USING 'SINACOR';
--CREATE PUBLIC DATABASE LINK SPB CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05BD9F86E9C5329B201DB2467FE2EA4C37D56B304334B5D804996B363ABE54D8A5' USING SPBRAC;
--CREATE PUBLIC DATABASE LINK TOOLS_11 CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '0566A93DAFBF4A796C529042AADDF14FD40F00410861443AF94492B2BBD1DA3BE7' USING TOOLS;
--CREATE PUBLIC DATABASE LINK TOOLS_RISK CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05BF4D0B0C90CF6B9D9A022DC09A708A3C7CD64027BB8D2CB2D547FF09ECBFB474' USING RACTOOLS;
--CREATE PUBLIC DATABASE LINK TI_BI_RISCO CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '050062B063CFD67EEEF6BBF024C2CC255CFE415DB7C8906147B1E99CCCFD9CD1BD' USING BI;
--CREATE PUBLIC DATABASE LINK SPB.US.ORACLE.COM CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '0563016A7C7095C5422085C752A8B545BFEFA7BBEAF05D6754BD5BD513F34A57F3' USING SPB;
--CREATE PUBLIC DATABASE LINK SPB_CON CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '052F53A020D747F1A007328054C92D56FFBB800F49C4AA83B90E0352616D5CC3F0' USING SPBRAC;
--CREATE PUBLIC DATABASE LINK SINACOR CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '050DEA96D6958EB7EB0E2469E7D96E5087F3976930E8103008788F696CBAC73447' USING SINACOR'    ;
--CREATE PUBLIC DATABASE LINK SDIP.WORLD CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05D3BFF768E740FAE2D74C2778788CC3587D99FAF49DCBF068C484E9EDC347405E' USING SDIP.WORLD;
--CREATE PUBLIC DATABASE LINK SCC CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05235CD223FF03083C104DA969FDDCDB70666E7AE23099321A48D4592583DD80FE' USING BI;
--CREATE PUBLIC DATABASE LINK PROFIT CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05FE51D2D5E55563B1F30DF8E863B5A5CC96920ED1490BF7E5FE66B48FB7F645E2' USING PROFIT;
--CREATE PUBLIC DATABASE LINK LUA.WORLD CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05B6B797EE259E95FDD00670290701CFE0B895C6C074390E35B2C4275EB1FE0899' USING OLD_DES;
--CREATE PUBLIC DATABASE LINK FIN CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '05F67014A650D60FB13D9E9F47261096A0A3B9BA9446A64CFD61273925D12281D0' USING FINPAC;
--CREATE PUBLIC DATABASE LINK ORACLE_SQL CONNECT TO PROFIT_DBLINK IDENTIFIED BY VALUES '0537F1F1389DC5F6F4AAF8D7361EEA43AD' USING DSN_PROFIT;
--CREATE PUBLIC DATABASE LINK CHANGE CONNECT TO LK_SUPORTE_TI IDENTIFIED BY VALUES '055CAA775A02F47A62CFBE974949F7C1D8FE4FA821AB47D2159E22938610422B49' USING CAMGER;
--CREATE DATABASE LINK SYS.INM CONNECT TO SYSTEM IDENTIFIED BY VALUES '05A71065D0300CF7098F812BBCA2876A33E2C6C6AE8C44524D' USING INMETRICS;
--CREATE DATABASE LINK APOIO.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05CF31244E3526EBD1813519898EEB0378D99F85F3CCE1EB1B' USING RACTOOLS;
--CREATE DATABASE LINK APOIO.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05A0934BC5559DC2E71FC5DB104A7B3737' USING camger;
--CREATE DATABASE LINK APOIO.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '0535B90913F666F78D904DF102C0381ABD76736BAE023392E4' USING SPBRAC;
--CREATE DATABASE LINK SUPORTERJ.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05A26D7EF7929D223E3378A1C141C6B287' USING camger;
--CREATE DATABASE LINK SUPORTERJ.SPB CONNECT TO CONSULTA_SPB IDENTIFIED BY VALUES '050D52845E9A55ABA9EDF15E3819777DEFE7C8EE4882E02165' USING SPBRAC;
--CREATE DATABASE LINK SUPORTERJ.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '0541D6178076DFA6F935DF1E8AC665F95109BE4F6436B92B93' USING SPBRAC;
--CREATE DATABASE LINK FINPAC.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05248062230324DB8DEE62FB8F785437FE' USING camger;
--CREATE DATABASE LINK FINPAC.LUA.WORLD CONNECT TO FINPAC IDENTIFIED BY VALUES '05FD6A3BC89D496D941F221081B48BE114' USING old_des;
--CREATE DATABASE LINK FINPAC.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05370689589DA7D7F46A8F8A5B0CD7100134F4CE5DE5C2C127' USING SPBRAC;
--CREATE DATABASE LINK FINPAC.SDIP.WORLD CONNECT TO FINPAC IDENTIFIED BY VALUES '05BD5C50984A87177A00A6C90363A632E5A801CAC5D2DA84F7' USING sdip.world;
--CREATE DATABASE LINK FINPAC_CUSTOM.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '055B1A6D259153B46F5848022CCE94143C2FD4AB7B5E1FDD86' USING SPBRAC;
--CREATE DATABASE LINK FINPAC_CUSTOM.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '0529218B4BBAA5304B0D937C93D314F9AA' USING camger;
--CREATE DATABASE LINK FINPAC_CUSTOM.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05B2959027FA20E9AD21A3B7D9D767F032A826D5799BACA91F' USING RACTOOLS;
--CREATE DATABASE LINK MIDDLE.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05DDD6589990A6F7BB0B4D4506B7DF595C275EC55616CA55E7' USING SPBRAC;
--CREATE DATABASE LINK MIDDLE.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05F2C69DC5E9888FA52F4EEBA6C878A9AB3B67DE4233398880' USING RACTOOLS;
--CREATE DATABASE LINK MIDDLE.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05B5A74CC83ED76B9C7A59C859EB9A9BD5' USING camger;
--CREATE DATABASE LINK SDBANCO.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '052EC7A7117507D1E24C155DB27D4A8ED0836BD45949C8DF1A' USING SPBRAC;
--CREATE DATABASE LINK SDBANCO.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05AA044748D438A1C6D5C17FCABC5BC24A' USING camger;
--CREATE DATABASE LINK SDBANCO.SPB.US.ORACLE.COM CONNECT TO SPB IDENTIFIED BY VALUES '05F70E504017767CEE34600D26C7799C0F' USING SPB;
--CREATE DATABASE LINK SDBANCO.PROFIT CONNECT TO sa IDENTIFIED BY VALUES '05EE1A62F066089C0BFFED601E4B3AA4FC0614014A6B736152' USING PROFIT;
--CREATE DATABASE LINK SDIMIO.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05948EC090F2BA7FF457F12919077F2F98' USING camger;
--CREATE DATABASE LINK SDIMIO.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05DC17C132BFEA8F5F7D002DFEE22B62AF83209064CAC2CAF6' USING SPBRAC;
--CREATE DATABASE LINK SDIMIO.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '0528F0ACECBDACC0304FAC1EBB27B1EA7D0BAAC38BA3EEB45B' USING RACTOOLS;
--CREATE DATABASE LINK SPB_BRIDGE.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05EAA845056A1CD1C765778A3B391BB6E79AE715EF1A33BC60' USING SPBRAC;
--CREATE DATABASE LINK SPB_BRIDGE.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '056564986B1F49D16FEF3D39261AD80E47' USING camger;
--CREATE DATABASE LINK SPB_BRIDGE.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '056E7872EFDC786EF76D0ED92DDC1AF7CA2B21D37AB55EF5C7' USING RACTOOLS;
--CREATE DATABASE LINK RISCO.TOOLS_RISK CONNECT TO SUPORTERJ IDENTIFIED BY VALUES '055D580C3A7BE6A60E0DD38382FD4C06BE' USING RACTOOLS;
--CREATE DATABASE LINK RISCO.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '058A62ACA51CBB273DD6ED699B49493E84' USING camger;
--CREATE DATABASE LINK RISCO.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05EFE6302FC4FAADD7A2393B4D7D3A683B98443DED36C0F26F' USING RACTOOLS;
--CREATE DATABASE LINK RISCO.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05B281D257255D2D8FDBB112758FB7D6A54C1A4CD7FAAABA9B' USING SPBRAC;
--CREATE DATABASE LINK RISCO.SCC CONNECT TO TI_BI IDENTIFIED BY VALUES '059FB6043B90A8CDE7205169C89B413060' USING BI;
--CREATE DATABASE LINK RISCO.TI_BI_RISCO CONNECT TO TI_BI IDENTIFIED BY VALUES '05FB764A4BA19E7AE0254D63BA23210DEC' USING BI;
--CREATE DATABASE LINK PANDATA.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05891EF6717C4DF7F133A3AC7666C24B5FCF05844279F482E3' USING RACTOOLS;
--CREATE DATABASE LINK PANDATA.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05017F16F0207CA09F2B268C482D4F9FF2AA70956E73E83EF9' USING SPBRAC;
--CREATE DATABASE LINK PANDATA.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '057E214E93AA9D5BBABCC39D33516D0090' USING camger;
--CREATE DATABASE LINK CHANGE_SPB.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '0580A8AF695038B873858B94115D9B90C556B5CC7A7D3D0F58' USING RACTOOLS;
--CREATE DATABASE LINK CHANGE_SPB.LK_CHANGESPB_CAMBIO CONNECT TO CAMBIO IDENTIFIED BY VALUES '05C204F1A8A3A58015F81E0F28C6461953' USING CAMGER;
--CREATE DATABASE LINK CHANGE_SPB.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '050A036DA1662360CCD5EC1F701181EE7279B0CB62DCA4720D' USING SPBRAC;
--CREATE DATABASE LINK CHANGE_SPB.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05FF6EDDFBFF859C99B6DBDD61376D5257' USING camger;
--CREATE DATABASE LINK BCSULRISCOM.SINACOR CONNECT TO CORRWIN IDENTIFIED BY VALUES '059B38EB645D0F4EE2208A0FCC9EDD0DD5D42F8C1FEED81240' USING SINACOR;
--CREATE DATABASE LINK BCSULRISCOM.CHANGE CONNECT TO CAMBIO IDENTIFIED BY VALUES '05C26EF4295EE7DF200816EBA5B658FA7E' USING CAMGER;
--CREATE DATABASE LINK BCSULRISCOM.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '0528954A348E736E3F38199333C6FFB73DD06240DF91BA88CB' USING RACTOOLS;
--CREATE DATABASE LINK BCSULRISCOM.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '0516D4E62ECD611FF02E3972F02CFE3675B8C68513E72AD43E' USING SPBRAC;
--CREATE DATABASE LINK BCSULRISCOM.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '05EE93A1FCEB0E4DFD720E53ACB02F0ABE' USING camger;
--CREATE DATABASE LINK RISCO_HOMO.TOOLS_11 CONNECT TO SUPORTERJ IDENTIFIED BY VALUES '059FD32C20206D44F14D96476E33048EDF' USING tools;
--CREATE DATABASE LINK RISCO_HOMO.TI_BI_RISCO CONNECT TO TI_BI IDENTIFIED BY VALUES '05FB764A4BA19E7AE0254D63BA23210DEC' USING BI;
--CREATE DATABASE LINK RISCO_HOMO.FIN CONNECT TO RISCO IDENTIFIED BY VALUES '05AD65A733DA7F09CFFD83636A56C81FEF' USING FINPAC;
--CREATE DATABASE LINK BCSCADASTRO.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '0569602DA3CFD64AF7665AE9281F2E5BBB' USING camger;
--CREATE DATABASE LINK BCSCADASTRO.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05F40E08B0A9D9F06E9083B12DF42FBA1930B78CF5BB10390C' USING SPBRAC;
--CREATE DATABASE LINK BCSCADASTRO.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '05A4024657EC4D98CE3597144D7994CF765FAE1606E3E6ED2C' USING RACTOOLS;
--CREATE DATABASE LINK BCSCADASTRO.PROFIT CONNECT TO BCSCADASTRO IDENTIFIED BY VALUES '0502FE7FF7C22BB38F85F21022933D168EE50E666CEB5E6582' USING PROFIT;
--CREATE DATABASE LINK EASYIRPJ.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '0569ED4663FAE06BEE4160C1A5B47DEFAD0CFBEDAC1DE13D28' USING RACTOOLS;
--CREATE DATABASE LINK EASYIRPJ.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '052F5D9B88696C1C00BBC3C76BF3778357' USING camger;
--CREATE DATABASE LINK EASYIRPJ.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '0539DF928367A123E79561B1B05BE4C3BDBD9C0A9E455D39F2' USING SPBRAC;
--CREATE DATABASE LINK FINPAC_JOBS.WEBCOR CONNECT TO CORRWIN IDENTIFIED BY VALUES '053B29384D392171F21F8FB2F2B760565B5B0B797B03AB447E' USING sinacor;
--CREATE DATABASE LINK BCSULVIRTUAL.TOOLS CONNECT TO DBLINK_RACFINL_OU_FINHOMO11G IDENTIFIED BY VALUES '050DEE79ADF3C23F2483F8FB3A0F813275E83E0648328AF2FF' USING RACTOOLS;
--CREATE DATABASE LINK BCSULVIRTUAL.SPB_CON CONNECT TO SPB_CONSULTA IDENTIFIED BY VALUES '05EA4504A8CF1260161034CC4F433DE2BE37221C954E776C7A' USING SPBRAC;
--CREATE DATABASE LINK BCSULVIRTUAL.LOIC CONNECT TO FINPAC IDENTIFIED BY VALUES '054AA3608528F29BE822351F26173A5E46' USING camger;
--CREATE DATABASE LINK ISAAC_SILVA.FINHOMO CONNECT TO ISAAC_SILVA IDENTIFIED BY VALUES '0541C1DA312877A6185D89EAC6F7560ABA' USING FINHOMO;

spool off