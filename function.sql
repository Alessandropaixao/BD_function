CREATE FUNCTION total_clientes_dia (@dataDATE)
RETURNS INT
AS
BEGIN
    DECLARE @total INT
    SELECT @total = COUNT(*)
    FROM clientes
    WHERE data_cadastro = @data

    RETURN @total
END