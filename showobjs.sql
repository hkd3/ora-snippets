set pages 9999 lin 100
col owner for a30
col object_name for a30
col object_type for a20
select owner, object_name, object_type
from dba_objects
where owner like upper('%&1%')
order by owner, object_type, object_name;
