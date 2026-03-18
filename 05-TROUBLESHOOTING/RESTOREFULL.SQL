RESTORE DATABASE EcommerceDB
FROM DISK = '/var/opt/mssql/backup/EcommerceDB_FULL.bak'
WITH NORECOVERY;
GO