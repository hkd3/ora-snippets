set pages 9999 lin 100
col grantee for a10
col owner for a10
col table_name for a10
col grantor for a10
col privilege for a30
col granted_role for a20
col type for a10
select * from dba_sys_privs where grantee like '&1' order by grantee, privilege;
select * from dba_tab_privs where grantee like '&1' order by grantee, privilege;
select * from dba_role_privs where grantee like '&1' order by grantee, granted_role;
