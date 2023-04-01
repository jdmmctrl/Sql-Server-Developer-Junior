USE master;
GO
CREATE DATABASE Curso --Nombre de la base de datos
ON
(	NAME = Curso_dat, --Nombre de la referencia del archivo del motor de la base de datos
	  FILENAME = 'C:\Users\juand\Mi unidad\Sql Server\CURSO\cursodat.mdf', --ubicacion y nombre del archivo dela data
	  SIZE = 10, --Tamaño inicial del archivo
	  MAXSIZE = UNLIMITED, --Tamaño maximo que puede alcanzar la base de datos
	  FILEGROWTH = 5% ) --Crecimiento proyectado del aqrchivo SQL requiere hacerlo crecer
LOG ON
(	NAME = Curso_log,
	  FILENAME = 'C:\Users\juand\Mi unidad\Sql Server\CURSO\cursolog.ldf',
	  SIZE = 5MB,
	  MAXSIZE = 25MB,
	  FILEGROWTH = 5MB )
COLLATE SQL_Latin1_general_CP1_CI_AI; --Reglas de informacion
GO
