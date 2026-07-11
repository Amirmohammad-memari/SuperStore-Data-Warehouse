USE [SuperStoreDW]
GO

/****** Object:  Table [dbo].[FactOrder]    Script Date: 7/11/2026 10:52:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrder](
	[Sales] [float] NULL,
	[Quantity] [float] NULL,
	[Discount] [float] NULL,
	[Profit] [float] NULL,
	[DateKeyOrder] [int] NULL,
	[DateKeyShip] [int] NULL,
	[CustomerSK] [int] NULL,
	[ShipModeSK] [int] NULL,
	[ProductSK] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactOrder_Date] FOREIGN KEY([DateKeyOrder])
REFERENCES [dbo].[Date] ([DateKey])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_FactOrder_Date]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactOrder_DimCustomer] FOREIGN KEY([CustomerSK])
REFERENCES [dbo].[DimCustomer] ([CustomerSK])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_FactOrder_DimCustomer]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactOrder_DimProduct] FOREIGN KEY([ProductSK])
REFERENCES [dbo].[DimProduct] ([ProductSK])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_FactOrder_DimProduct]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_FactOrder_DimShipMode] FOREIGN KEY([ShipModeSK])
REFERENCES [dbo].[DimShipMode] ([ShipModeSK])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_FactOrder_DimShipMode]
GO


