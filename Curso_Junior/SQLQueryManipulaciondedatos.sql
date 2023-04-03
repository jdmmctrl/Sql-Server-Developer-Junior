-- DML LENGUAJE DE MANIPILACION DE DATOS

select *
from cliente;

INSERT INTO cliente
    (primerNombreCliente, segundoNombreCliente, primerApellidoCliente, segundoApellidoCliente, nit, telefono, direccion, estado
    )
VALUES
    ('Juan', 'David', 'Perez', 'Gomez', 'n-123456789', '1234567', 'Calle 1', '1'),
    ('Maria', 'Jose', 'Gomez', 'Perez', 'n-987654321', '7654321', 'Calle 2', '1'),
    ('Pedro', 'Pablo', 'Gomez', 'Perez', 'n-123456789', '1234567', 'Calle 1', '1'),
    ('Maria', 'Jose', 'Gomez', 'Perez', 'n-987654321', '7654321', 'Calle 2', '1'),
    ('Pablo', 'Ramiro', 'Gomez', 'Perez', 'n-123456789', '1234567', 'Calle 1', '1')
    