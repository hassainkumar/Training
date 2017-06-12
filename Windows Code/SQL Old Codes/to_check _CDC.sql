use AdventureWorks2014
use master
select [name],database_id, is_cdc_enabled
From sys.databases
go