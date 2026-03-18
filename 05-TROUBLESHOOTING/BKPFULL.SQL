BACKUP DATABASE EcommerceDB
TO DISK = '/var/opt/mssql/backup/EcommerceDB_FULL.bak'
WITH INIT, STATS = 10;
GO