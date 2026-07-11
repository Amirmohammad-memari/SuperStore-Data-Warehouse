USE [SuperStoreDW]
GO

/****** Object:  Table [dbo].[DimGeography]    Script Date: 7/11/2026 10:50:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimGeography](
	[GeographySK] [int] IDENTITY(1,1) NOT NULL,
	[Country] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Postal Code] [int] NULL,
	[Region] [nvarchar](255) NULL,
 CONSTRAINT [PK__DimGeogr__414FAF43F10D2376] PRIMARY KEY CLUSTERED 
(
	[GeographySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


