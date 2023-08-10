IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'MoviesDB')
  BEGIN
    CREATE DATABASE [MoviesDB]


    END
    GO
       USE [MoviesDB]
    GO

USE [MoviesDB]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 08/08/2023 18:05:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Year] [int] NOT NULL,
	[Genre] [nvarchar](50) NOT NULL,
	[Director] [nvarchar](50) NOT NULL,
	[Actors] [nvarchar](100) NOT NULL,
	[Rating] [decimal](18, 2) NOT NULL,
	[AddedOn] [datetime] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO Movies(Title, Year, Genre, Director, Actors, Rating, AddedOn)
VALUES
('The Shawshank Redemption', 1972, 'Crime, Drama', 'Frank Darabont', 'Tim Robbins, Morgan Freeman',9.3, CONVERT(date,GETDATE())),
('The Godfather', 1972, 'Crime, Drama', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan',9.2, CONVERT(date,GETDATE())),
('The Dark Knight', 2008, 'Action, Crime, Drama', 'Christopher Nolan', 'Christian Bale, Heath Ledger, Gary Oldman',9.0, CONVERT(date,GETDATE())),
('Inception', 2010, 'Action, Adventure, Sci-Fi', 'Christopher Nolan', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page',8.8, CONVERT(date,GETDATE()))