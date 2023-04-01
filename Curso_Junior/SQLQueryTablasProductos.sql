USE PROYECTO_CURSO
GO

CREATE TABLE producto
(
    codigoProducto INT IDENTITY(1,1) NOT NULL,
    nombreProducto VARCHAR(128) NOT NULL,
    descripcionProducto NVARCHAR(512) NULL,
    precioCostoProducto DECIMAL(12,2) NOT NULL,
    precioVentaProducto DECIMAL(12,2) NOT NULL,
    estadoProducto TINYINT NOT NULL,
    CONSTRAINT pk_producto_codigoProducto PRIMARY KEY CLUSTERED (codigoProducto ASC)
) 