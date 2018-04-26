set pages 9999 lin 120
col name for a50
col describ for a40
select name,substr(description,0,40) describ,audit_options,realm_type,enabled
from dvsys.dba_dv_realm
where name like upper('%&1%')
order by name;

set pages 9999 lin 150
col realm_name for a50
col owner for a30
col object_name for a30
col object_type for a20
SELECT * FROM DVSYS.DBA_DV_REALM_OBJECT
where realm_name like upper('%&1%')
order by realm_name,owner,object_type,object_name;

set pages 9999 lin 150
col realm_name for a50
col grantee for a30
col auth_rule_set_name for a30
col auth_options for a12
SELECT * FROM DVSYS.DBA_DV_REALM_AUTH
where realm_name like upper('%&1%')
order by realm_name,grantee;
