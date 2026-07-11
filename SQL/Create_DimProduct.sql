USE [SuperStoreDW]
GO

/****** Object:  Table [dbo].[DimProduct]    Script Date: 7/11/2026 10:51:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimProduct](
	[ProductSK] [int] IDENTITY(1,1) NOT NULL,
	[Product ID] [nvarchar](255) NULL,
	[Category] [nvarchar](255) NULL,
	[Sub-Category] [nvarchar](255) NULL,
	[Product Name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


