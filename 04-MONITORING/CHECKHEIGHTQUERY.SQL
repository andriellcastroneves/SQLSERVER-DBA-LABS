SELECT TOP 10
    total_worker_time AS CPU,
    execution_count,
    total_elapsed_time,
    (total_elapsed_time / execution_count) AS media_tempo,
    t.text
FROM sys.dm_exec_query_stats qs
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) t
ORDER BY total_worker_time DESC;