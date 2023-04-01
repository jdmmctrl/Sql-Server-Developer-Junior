CREATE DATABASE cursoDml
    COLLATE SQL_Latin1_General_CP1_CS_AS;

USE cursoDml

CREATE TABLE tbl_persona
(
    codigoPersona int IDENTITY(1,1) not null,
    nombrePersona varchar(128) null,
    CONSTRAINT pk_tblpersona_codigoPersona primary key clustered (codigoPersona asc)
)

ALTER TABLE tbl_persona
ALTER COLUMN nombrePersona varchar(68) null;

ALTER TABLE tbl_persona
ADD telefono varchar(10) null;