USE [SuperStoreDW]
GO

/****** Object:  Table [dbo].[DimCustomer]    Script Date: 7/11/2026 10:50:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
	[CustomerSK] [int] IDENTITY(1,1) NOT NULL,
	[Customer ID] [nvarchar](255) NULL,
	[Customer Name] [nvarchar](255) NULL,
	[Segment] [nvarchar](255) NULL,
	[GeographySK] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DimCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DimCustomer_DimGeography] FOREIGN KEY([GeographySK])
REFERENCES [dbo].[DimGeography] ([GeographySK])
GO

ALTER TABLE [dbo].[DimCustomer] CHECK CONSTRAINT [FK_DimCustomer_DimGeography]
GO


