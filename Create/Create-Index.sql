USE [database.name]
GO
CREATE  NONCLUSTERED INDEX Index_Name
ON [schema].[table] ([field]) 
INCLUDE 
(
[included_field1],
[included_field2],
[included_field3]
)

