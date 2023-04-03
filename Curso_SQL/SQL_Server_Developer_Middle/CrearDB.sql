USE master;
GO
CREATE DATABASE ulearngt --Nombre de la base de datos
ON
(	NAME = ulearngt_dat, --Nombre de la referencia del archivo del motor de la base de datos
	  FILENAME = 'C:\Users\juand\Mi unidad\SQL Server\Sql-Server-Developer-Junior\Curso_SQL\SQL_Server_Developer_Middle\ulearngt_data.mdf', --ubicacion y nombre del archivo dela data
	  SIZE = 10MB, --Tamaño inicial del archivo
	  MAXSIZE = UNLIMITED, --Tamaño maximo que puede alcanzar la base de datos
	  FILEGROWTH = 5% ) --Crecimiento proyectado del aqrchivo SQL requiere hacerlo crecer
LOG ON
(	NAME = ulearngt_log,
	  FILENAME = 'C:\Users\juand\Mi unidad\SQL Server\Sql-Server-Developer-Junior\Curso_SQL\SQL_Server_Developer_Middle\ulearngt_log.ldf',
	  SIZE = 5MB,
	  MAXSIZE = 25MB,
	  FILEGROWTH = 5MB )
COLLATE SQL_Latin1_General_CP1_CI_AI; --Reglas de informacion
GO

