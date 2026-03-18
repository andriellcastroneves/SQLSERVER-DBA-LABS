BACKUP DATABASE EcommerceDB
TO DISK = '/var/opt/mssql/backup/EcommerceDB_DIFF.bak'
WITH DIFFERENTIAL, STATS = 10;
GO