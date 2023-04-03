USE PROYECTO_CURSO
GO
UPDATE cliente SET
    primerNombreCliente = 'Carlos'
WHERE codigoCliente=5

SELECT *
FROM cliente

DELETE FROM cliente
WHERE codigoCliente=5