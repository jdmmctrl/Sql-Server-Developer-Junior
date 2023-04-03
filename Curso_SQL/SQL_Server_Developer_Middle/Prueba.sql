-- Estoy en el curso de SQL
-- Crear tabla para guardar las empresas con la siguiente estructura: nombre, nit, direccion,telefon

CREATE TABLE empresa
(
    codigoEmpresa INT IDENTITY(1,1) NOT NULL,
    nombre VARCHAR(256) NOT NULL,
    nit VARCHAR(256) NOT NULL,
    direccion NVARCHAR(512) NULL,
    telefono VARCHAR(256) NULL,
    estado INT NULL,
    -- 1: Activo, 2: Inactivo, 3: Eliminado
    CONSTRAINT pk_empresa_codigoEmpresa PRIMARY KEY 
    CLUSTERED (codigoEmpresa ASC)
)