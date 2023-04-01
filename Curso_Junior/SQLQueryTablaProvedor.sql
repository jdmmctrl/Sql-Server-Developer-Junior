USE PROYECTO_CURSO
GO

CREATE TABLE proveedor
(
    codigoProveedor int IDENTITY(1,1) NOT NULL,
    nombreProveedor NVARCHAR (64) NOT NULL,
    nit NVARCHAR (16) NOT NULL,
    telefono NVARCHAR(16) NOT NULL,
    direccion NVARCHAR (64) NOT NULL,
    estado TINYINT NOT NULL,
    CONSTRAINT pk_proveedor_codigoProveedor PRIMARY KEY CLUSTERED (codigoProveedor ASC)
)