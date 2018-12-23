USE [DSTraining]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_RAW_OfficeSupplies_Customer]    Script Date: 08-10-2018 08:30:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BLD_DRV_OfficeSupplies_RevenueByCustGender]
-- =============================================
-- Author: Dimple Rathod
-- Create date: 2018/10/07
-- Description:	Office Supplies -Revenue by Customer Gender
-- MODE Date :
-- =============================================

AS
BEGIN



SELECT A.[Customer ID], A.Gender, B.Units*B.[Unit Price] AS Revenue
INTO [DRV_OfficeSupplies_RevenueByCustGender]
FROM [dbo].[WRK_OfficeSupplies_Customer] A
LEFT JOIN [dbo].[WRK_OfficeSupplies_Transaction] B
ON A.[Customer ID]=B.[Customer ID]



    
END
