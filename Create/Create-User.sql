USE [master]
GO
CREATE LOGIN [user.name] WITH PASSWORD=N'your_password' MUST_CHANGE, DEFAULT_DATABASE=[db_name], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER SERVER ROLE [your_role] ADD MEMBER [user.name]
GO
USE [db_name]
GO
CREATE USER [user.name] FOR LOGIN [user.name]
GO
USE [db_name]
GO
ALTER ROLE [your_role2] ADD MEMBER [user.name]
GO
