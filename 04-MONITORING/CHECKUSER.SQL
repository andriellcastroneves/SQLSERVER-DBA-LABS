SELECT
    session_id,
    login_name,
    status,
    host_name,
    program_name
FROM sys.dm_exec_sessions
WHERE is_user_process = 1;