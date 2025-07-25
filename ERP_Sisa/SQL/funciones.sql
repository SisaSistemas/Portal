USE [SisaAdmin-Copia]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GraficaPastelUtilidad]    Script Date: 24/07/2025 02:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_GraficaPastelUtilidad]
(
	@IdProyecto VARCHAR(150) = 'f96fc0fc-5b70-4896-b0d9-cec6b9d97638'
)
RETURNS @retContactInformation TABLE 
(
    -- Columns returned by the function
    IdProyecto varchar(150) PRIMARY KEY NOT NULL, 
    TotalGastos Decimal(20,2) NULL, 
    Utilidad Decimal(20,2) NULL
)
AS
BEGIN
	-- Declare the return variable here
	--DELETE FROM UtilidadPastel

	DECLARE @costoCotizacion decimal(20,2), @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
		, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

	--SET @IdProyecto = '23720c4c-546d-4e90-a8c4-d8bdbb9c2486'

	/* COSTO COTIZACION */
	SELECT @costoCotizacion = CostoCotizacion
	FROM dbo.tblProyectos
	WHERE IdProyecto = @IdProyecto


	/* ORDENES DE COMPRA */
	SELECT @totalOC = SUM(OC)
	FROM (
		--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
		--FROM tblOrdenCompra A
		--INNER JOIN dbo.tblMonedas B
		--ON B.IdMoneda = A.IdMoneda
		--WHERE IdProyecto = @IdProyecto

		--SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
		SELECT CASE WHEN CONVERT(NVARCHAR, B.FechaCreacion, 112) >= '20230401' 
				THEN 
					CASE WHEN B.Iva = 0 
						THEN CASE WHEN C.Abreviatura = 'MXN' THEN B.Total - B.Descuento ELSE ((B.Total - B.Descuento) * 17.5 ) END
						ELSE 
							CASE WHEN C.Abreviatura = 'MXN' 
								THEN ((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) 
								ELSE (((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) * 17.5)   END END 
				ELSE 
					CASE WHEN B.Iva = 0 
						THEN CASE WHEN C.Abreviatura = 'MXN' THEN B.Total - B.Descuento ELSE ((B.Total - B.Descuento) * 20.5 ) END
						ELSE 
							CASE WHEN C.Abreviatura = 'MXN' 
								THEN ((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) 
								ELSE (((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) * 20.5)  END END END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
		FROM tblOrdenCompraDet A
		INNER JOIN dbo.tblOrdenCompra B
		ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2 AND B.TipoOC != 'ManoObra'
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = B.IdMoneda
		WHERE A.CantidadRecibida > 0
		GROUP BY C.Abreviatura, B.Descuento, B.Total, B.Iva, CONVERT(NVARCHAR, B.FechaCreacion, 112), CONVERT(DATE, B.FechaCreacion), B.SubTotal

		--SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
		--FROM tblOrdenCompraDet A
		--INNER JOIN dbo.tblOrdenCompra B
		--ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
		--INNER JOIN dbo.tblMonedas C
		--ON C.IdMoneda = B.IdMoneda
		--GROUP BY C.Abreviatura, CONVERT(DATE, B.FechaCreacion)
	) A

	SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			--SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			SELECT CASE WHEN CONVERT(NVARCHAR, B.FechaCreacion, 112) >= '20230401' 
					THEN 
						CASE WHEN B.Iva = 0 
							THEN CASE WHEN C.Abreviatura = 'MXN' THEN B.Total - B.Descuento ELSE ((B.Total - B.Descuento) * 17.5 ) END
							ELSE 
								CASE WHEN C.Abreviatura = 'MXN' 
									THEN ((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) 
									ELSE (((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) * 17.5)   END END 
					ELSE 
						CASE WHEN B.Iva = 0 
							THEN CASE WHEN C.Abreviatura = 'MXN' THEN B.Total - B.Descuento ELSE ((B.Total - B.Descuento) * 20.5 ) END
							ELSE 
								CASE WHEN C.Abreviatura = 'MXN' 
									THEN ((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) 
									ELSE (((SUM(Cantidad * Precio) * ((B.Iva / B.SubTotal) + 1)) - B.Descuento) * 20.5)  END END END AS OC, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2 AND B.TipoOC != 'ManoObra'
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura, B.Descuento, B.Total, B.Iva, CONVERT(NVARCHAR, B.FechaCreacion, 112), CONVERT(DATE, B.FechaCreacion), B.SubTotal
		) A
		--PRINT(@totalOC)
		--PRINT(@totalOCPend)
	/* FACTURAS */
	SELECT @totalFacturas = SUM(Facturas)
	FROM (
		SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
		FROM dbo.tblControlFacturas
		WHERE IdProyecto = @IdProyecto And Estatus != 2
		AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
		And Viaticos = 0
	) A
	--PRINT(@totalFacturas)
	--/* MANO DE OBRA */
	--SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
	--FROM tblHorasHombre A
	--INNER JOIN dbo.tblUsuarios B
	--ON B.IdUsuario = A.IdUsuario
	--WHERE IdProyecto = @IdProyecto And A.Activo = 1

	SELECT @manoObra = SUM(Total)
	FROM (
		SELECT  Sum(((B.SueldoDiario / 8) * A.Total)) AS Total
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1
		UNION ALL

		Select CASE WHEN CONVERT(NVARCHAR, A.FechaCreacion, 112) >= '20230401' 
					THEN 
						CASE WHEN A.Iva = 0 
							THEN CASE WHEN C.Abreviatura = 'MXN' THEN A.Total ELSE (A.Total * 17.5 ) END
							ELSE 
								CASE WHEN C.Abreviatura = 'MXN' 
									THEN (A.Total) 
									ELSE (A.Total * 17.5)  END END 
					ELSE 
						CASE WHEN A.Iva = 0 
							THEN CASE WHEN C.Abreviatura = 'MXN' THEN A.Total ELSE (A.Total * 20.5 ) END
							ELSE 
								CASE WHEN C.Abreviatura = 'MXN' 
									THEN (A.Total) 
									ELSE (A.Total * 20.5) END END END AS Total
		From dbo.tblOrdenCompra A
		INNER JOIN dbo.tblMonedas C
		ON C.IdMoneda = A.IdMoneda
		Where TipoOC = 'ManoObra' AND IdProyecto = @IdProyecto And Estatus != 2
		--GROUP BY IdMoneda
	) A
	--PRINT(@manoObra)
	/* VIATICOS */
	SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros + ManoObra + Equipo + Materiales)
	FROM dbo.tblViaticosDet
	WHERE idProyecto = @IdProyecto

	/* CAJA CHICA */
	SELECT @cajaChica = SUM(A.ABono)
	FROM dbo.tblCajaChica A
	WHERE Comprobante NOT IN('FACTURA','VIATICOS','ORDEN DE COMPRA') And A.IdProyecto = @IdProyecto


	SET @totalGastos =  (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

	--INSERT UtilidadPastel
	--SELECT 'TotalGastos', @totalGastos, ((@totalGastos / @costoCotizacion) * 100)

	--INSERT UtilidadPastel
	--SELECT 'Utilidad', (@costoCotizacion - @totalGastos), (((@costoCotizacion - @totalGastos) / @costoCotizacion) * 100)

	--SELECT * FROM UtilidadPastel

	INSERT @retContactInformation
    SELECT @IdProyecto, @totalGastos, (@costoCotizacion - @totalGastos)

	-- Return the result of the function
	RETURN --@retContactInformation

END
GO
/****** Object:  UserDefinedFunction [dbo].[fn_TotalGastos]    Script Date: 24/07/2025 02:55:27 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Luis Carlos Galvez>
-- Create date: <20 Septiembre 2019>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_TotalGastos]
(
	@IdProyecto VARCHAR(150) = 'f96fc0fc-5b70-4896-b0d9-cec6b9d97638'
)
RETURNS DECIMAL(20,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @totalOC AS decimal(20,2), @totalOCPend AS decimal(20,2), @totalFacturas decimal(20,2), @gastos AS decimal(20,2), @viaticos AS decimal(20,2)
			, @totalGastos AS DECIMAL(20,2), @cajaChica AS Decimal(20,2), @manoObra AS DECIMAL(20,2)

	-- Add the T-SQL statements to compute the return value here
	/* ORDENES DE COMPRA */
		SELECT @totalOC = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(CantidadRecibida * Precio) * 1.16) ELSE ((SUM(CantidadRecibida * Precio) * 20.5) * 1.16) END AS OC--, CONVERT(DATE, B.FechaCreacion) AS Fecha
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			GROUP BY C.Abreviatura--, CONVERT(DATE, B.FechaCreacion)
		) A

		/* ORDENES DE COMPRA PENDIENTES POR RECIBIR */
		SELECT @totalOCPend = SUM(OC)
		FROM (
			--SELECT CASE WHEN B.Abreviatura = 'MXN' THEN Total ELSE Total * 20.5 END AS OC, CONVERT(DATE, FechaCreacion) AS Fecha
			--FROM tblOrdenCompra A
			--INNER JOIN dbo.tblMonedas B
			--ON B.IdMoneda = A.IdMoneda
			--WHERE IdProyecto = @IdProyecto

			SELECT CASE WHEN C.Abreviatura = 'MXN' THEN (SUM(Cantidad * Precio) * 1.16) ELSE ((SUM(Cantidad * Precio) * 20.5) * 1.16) END AS OC
			FROM tblOrdenCompraDet A
			INNER JOIN dbo.tblOrdenCompra B
			ON B.IdOrdenCompra = A.IdOrdenCompra AND B.IdProyecto = @IdProyecto And B.Estatus != 2
			INNER JOIN dbo.tblMonedas C
			ON C.IdMoneda = B.IdMoneda
			WHERE A.CantidadRecibida = 0
			GROUP BY C.Abreviatura
		) A

		/* FACTURAS */
		SELECT @totalFacturas = SUM(Facturas)
		FROM (
			SELECT CASE WHEN Moneda = 'MXN' THEN Total ELSE TOTAL * 20.5 END AS Facturas, FechaFactura
			FROM dbo.tblControlFacturas
			WHERE IdProyecto = @IdProyecto And Estatus != 2
			AND OrdenCompra Not IN(SELECT Folio FROM tblOrdenCompra WHERE IdProyecto = @IdProyecto)
			AND Viaticos = 0
		) A

		--/* MANO DE OBRA */
		SELECT @manoObra = Sum(((B.SueldoDiario / 8) * A.Total))
		FROM tblHorasHombre A
		INNER JOIN dbo.tblUsuarios B
		ON B.IdUsuario = A.IdUsuario
		WHERE IdProyecto = @IdProyecto And A.Activo = 1

		/* VIATICOS */
		SELECT @viaticos = SUM(Gasolina + Desayuno + Comida + Cena + Casetas + Hotel + Transporte + Otros)
		FROM [dbo].[tblViaticos] A
		INNER JOIN dbo.tblViaticosDet B
		ON B.IdViaticos = A.ID
		WHERE A.IdProyecto = @IdProyecto

		/* CAJA CHICA */
		SELECT @cajaChica = SUM(A.ABono)
		FROM dbo.tblCajaChica A
		WHERE Comprobante NOT IN('FACTURA','VIATICOS') And A.IdProyecto = @IdProyecto

		--PRINT(IsNull(@totalOC, 0.00))
		--PRINT(IsNull(@totalFacturas, 0.00))
		--PRINT(IsNull(@viaticos, 0.00))
		--PRINT(IsNull(@cajaChica, 0.00))
		--PRINT(IsNull(@manoObra, 0.00))

		SET @totalGastos = (IsNull(@totalOC, 0.00) + IsNull(@totalOCPend, 0.00) + IsNull(@totalFacturas, 0.00) + IsNull(@viaticos, 0.00) + IsNull(@cajaChica, 0.00) + IsNull(@manoObra, 0.00))

	-- Return the result of the function
	RETURN @totalGastos

END
GO
