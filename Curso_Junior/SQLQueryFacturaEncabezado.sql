USE PROYECTO_CURSO
GO

CREATE TABLE facturaEncabezado
(
    codigoFacturaEncabezado int IDENTITY(1,1) NOT NULL,
    codigoCliente int NOT NULL,
    numeroFacturaEncabezado BIGINT NOT NULL,
    serieFacturaEncabezado VARCHAR(64) NOT NULL,
    fechaFacturaEncabezado DATETIME NOT NULL,
    usuarioFactura VARCHAR(64) NOT NULL,
    fechaAnulacion DATETIME NOT NULL,
    usuarioAnulacion VARCHAR(64) NOT NULL,
    estado TINYINT NOT NULL,
    CONSTRAINT pk_facturaEncabezado_codigoFacturaEncabezado PRIMARY KEY CLUSTERED (codigoFacturaEncabezado ASC),
    CONSTRAINT fk_facturaEncabezado_cliente_codigoCliente FOREIGN KEY (codigoCliente) REFERENCES cliente (codigoCliente)
)
GO