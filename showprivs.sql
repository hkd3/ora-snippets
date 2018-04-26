set pages 9999 lin 100
col grantee for a30
col privilege for a40
select * from dba_sys_privs
where grantee like upper('&1')
order by grantee, privilege;

set pages 9999 lin 180
col grantee for a20
col owner for a20
col table_name for a30
col grantor for a20
col privilege for a40
col type for a20
select * from dba_tab_privs
where grantee like upper('&1')
order by grantee, privilege;

set pages 9999 lin 100
col grantee for a30
col granted_role for a30
select * from dba_role_privs
where grantee like upper('&1')
order by grantee, granted_role;
