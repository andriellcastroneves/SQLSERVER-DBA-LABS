RESTORE LOG EcommerceDB
FROM DISK = '/var/opt/mssql/backup/EcommerceDB_LOG.trn'
WITH NORECOVERY;
GO