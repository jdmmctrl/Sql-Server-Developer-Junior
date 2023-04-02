USE PROYECTO_CURSO
GO

CREATE TABLE facturaDetalle
(
    codigoFacturaDetalle INT IDENTITY(1,1),
    codigoFacturaEncabezado INT NOT NULL,
    codigoProducto INT NOT NULL,
    cantidad TINYINT NOT NULL,
    precio DECIMAL(12,2) NOT NULL,
    subTotal DECIMAL(12,2) NOT NULL,
    CONSTRAINT pk_facturaDetalle_codigoFacturaDetalle PRIMARY KEY CLUSTERED (codigoFacturaDetalle ASC),
    CONSTRAINT fk_facturaDetalle_facturaEncabezado_codigoFacturaEncabezado FOREIGN KEY (codigoFacturaEncabezado) REFERENCES 
    facturaEncabezado (codigoFacturaEncabezado),
    CONSTRAINT fk_facturaDetalle_producto_codigoProducto FOREIGN KEY (codigoProducto) REFERENCES producto (codigoProducto)
)