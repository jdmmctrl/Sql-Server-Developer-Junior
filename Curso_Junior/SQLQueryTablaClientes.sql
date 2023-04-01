USE PROYECTO_CURSO
GO

CREATE TABLE cliente
(
    codigoCliente int IDENTITY(1,1) NOT NULL,
    primerNombreCliente NVARCHAR (64) NOT NULL,
    segundoNombreCliente NVARCHAR (64) NOT NULL,
    primerApellidoCliente NVARCHAR (64) NOT NULL,
    segundoApellidoCliente NVARCHAR (64) NOT NULL,
    nit NVARCHAR (16) NOT NULL,
    telefono NVARCHAR(16) NOT NULL,
    direccion NVARCHAR (64) NOT NULL,
    estado TINYINT NOT NULL,
    CONSTRAINT pk_cliente_codigoCliente PRIMARY KEY CLUSTERED (codigoCliente ASC)
)