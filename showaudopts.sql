-- statement audit
set pages 9999 lin 120
col user_name for a30
col proxy_name for a10
select * from DBA_STMT_AUDIT_OPTS order by user_name,audit_option;

-- object audit
set pages 9999 lin 200
col owner for a30
col object_name for a30
col object_type for a23
select * from DBA_OBJ_AUDIT_OPTS
order by owner, object_type;

-- system privilege audit
set pages 9999 lin 200
col user_name for a30
col privilege for a40
col success for a10
col failure for a10
select * from DBA_PRIV_AUDIT_OPTS order by user_name,privilege;

