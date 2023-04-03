use ulearngt
GO


CREATE TABLE empresa
(
    codigoEmpresa INT IDENTITY(1,1) NOT NULL,
    nombreEmpresa VARCHAR(128) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_empresa_codigoEmpresa PRIMARY KEY CLUSTERED (codigoEmpresa ASC)
)
GO

CREATE TABLE perfilUsuario
(
    codigoPerfilUsuario INT IDENTITY(1,1) NOT NULL,
    codigoEmpresa INT NOT NULL,
    nombrePerfilUsuario NVARCHAR(128) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_perfilUsuario_codigoPerfilUsuario PRIMARY KEY CLUSTERED (codigoPerfilUsuario ASC),
    CONSTRAINT fk_perfilUsuario_empresa_codigoEmpresa FOREIGN KEY (codigoEmpresa) REFERENCES empresa (codigoEmpresa)
)
GO


CREATE TABLE menu
(
    codigoMenu INT IDENTITY(1,1) NOT NULL,
    codigoEmpresa INT NOT NULL,
    nombreMenu NVARCHAR(128) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_menu_codigoMenu PRIMARY KEY CLUSTERED (codigoMenu ASC),
    CONSTRAINT fk_menu_empresa_codigoEmpresa FOREIGN KEY (codigoEmpresa) REFERENCES empresa (codigoEmpresa)
)
GO


CREATE TABLE perfilAcceso
(
    codigoPerfilUsuario INT IDENTITY(1,1) NOT NULL,
    codigoMenu INT NOT NULL,
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_perfilAcceso_codigoPerfilUsuario_codigoMenu PRIMARY KEY CLUSTERED (codigoPerfilUsuario ASC, codigoMenu ASC),
    CONSTRAINT fk_perfilAcceso_perfilUsuario_codigoPerfilUsuario FOREIGN KEY (codigoPerfilUsuario) REFERENCES perfilUsuario (codigoPerfilUsuario),
    CONSTRAINT fk_perfilAcceso_menu_codigoMenu FOREIGN KEY
        (codigoMenu) REFERENCES menu
        (codigoMenu)
)
GO

CREATE TABLE usuario
(
    codigoUsuario INT IDENTITY(1,1) NOT NULL,
    codigoEmpresa INT NOT NULL,
    correoElectronico NVARCHAR(256) NOT NULL,
    nombreUsuario NVARCHAR(128) NOT NULL,
    clave NVARCHAR(256) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_usuario_codigoUsuario PRIMARY KEY CLUSTERED (codigoUsuario ASC),
    CONSTRAINT fk_usuario_empresa_codigoEmpresa FOREIGN KEY (codigoEmpresa) REFERENCES empresa (codigoEmpresa)
)
GO

CREATE TABLE departamentoEmpresa
(
    codigoDepartamentoEmpresa INT IDENTITY(1,1) NOT NULL,
    codigoEmpresa INT NOT NULL,
    nombreDepartamentoEmpresa NVARCHAR(128) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_departamentoEmpresa_codigoDepartamentoEmpresa PRIMARY KEY CLUSTERED (codigoDepartamentoEmpresa ASC),
    CONSTRAINT fk_perfilUsuario_empresa_codigoEmpresa FOREIGN KEY (codigoEmpresa) REFERENCES empresa (codigoEmpresa)
)
GO

CREATE TABLE puesto
(
    codigoPuesto INT IDENTITY(1,1) NOT NULL,
    codigoDepartamentoEmpresa INT NOT NULL,
    nombrePuesto NVARCHAR(128) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_departamentoEmpresa_codigoDepartamentoEmpresa PRIMARY KEY CLUSTERED (codigoDepartamentoEmpresa ASC),
    CONSTRAINT fk_puesto_departamentoEmpresa_codigoDepartamentoEmpresa FOREIGN KEY (codigoDepartamentoEmpresa) REFERENCES departamentoEmpresa (codigoDepartamentoEmpresa)
)
GO

CREATE TABLE empleado
(
    codigoEmpleado INT IDENTITY(1,1) NOT NULL,
    codigoPuesto INT NOT NULL,
    nombreEmpleado NVARCHAR(128) NOT NULL,
    fechaIngreso DATETIME NOT NULL,
    sueldo DECIMAL(7,2) NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_empleado_codigoEmpleado PRIMARY KEY CLUSTERED (codigoEmpleado ASC),
    CONSTRAINT fk_empleado_puesto_codigoPuesto FOREIGN KEY (codigoPuesto) REFERENCES puesto (codigoPuesto)
)
GO


CREATE TABLE categoria
(
    codigoProducto INT IDENTITY(1,1) NOT NULL,
    codigoCategoria INT NOT NULL,
    nombreProducto NVARCHAR(128) NOT NULL,
    precioCosto DECIMAL(7,2) NOT NULL,
    precioVenta DECIMAL(7,2) NOT NULL,
    fechaCambioPrecio DATETIME NOT NULL,
    estado INT NOT NULL,
    -- 1 = Activo, 2 = Inactivo, 3 = Eliminado
    fechaCreado DATETIME NOT NULL,
    CONSTRAINT pk_producto_codigoProducto PRIMARY KEY CLUSTERED (codigoProducto ASC),
    CONSTRAINT fk_producto_categoria_codigoCategoria FOREIGN KEY (codigoCategoria) REFERENCES categoria (codigoCategoria)
)
GO


