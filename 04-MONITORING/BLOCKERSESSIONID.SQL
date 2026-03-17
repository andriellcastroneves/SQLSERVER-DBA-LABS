SELECT
    r.session_id,
    r.status,
    r.cpu_time,
    r.total_elapsed_time,
    t.text AS query
FROM sys.dm_exec_requests r
CROSS APPLY sys.dm_exec_sql_text(r.sql_handle) t
WHERE r.session_id = 64;