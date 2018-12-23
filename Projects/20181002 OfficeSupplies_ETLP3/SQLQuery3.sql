USE DSTraining
GO





SELECT A.[Customer ID], A.Gender, B.Units*B.[Unit Price] AS Revenue
FROM [dbo].[WRK_OfficeSupplies_Customer] A
LEFT JOIN [dbo].[WRK_OfficeSupplies_Transaction] B
ON A.[Customer ID]=B.[Customer ID]
