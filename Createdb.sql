CREATE DATABASE cursoDml
    COLLATE SQL_Latin1_General_CP1_CS_AS;

CREATE TABLE tbl_persona
(
    codigoPersona int IDENTITY(1,1) not null,
    nombre varchar(128) null,
    CONSTRAINT pk_tblpersona_codigoPersona primary key clustered (codigoPersona asc)
)

ALTER TABLE tbl_persona
ALTER column nombrePersona varchar(68) null;