CREATE TABLE [dbo].[Item]
(
	[Id] INT NOT NULL IDENTITY, 
    [Name] NVARCHAR(MAX) NULL, 
    [Price] DECIMAL(18, 2) NULL, 
    [CategoryId] INT NULL, 
    CONSTRAINT [PK_Item] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Item_ToCategories] FOREIGN KEY ([CategoryId]) REFERENCES [Categories]([Id]) 
)

GO

CREATE INDEX [IX_Item_CategoryId] ON [dbo].[Item] ([CategoryId])

--Id Name Price   CategoryId
--1   a   2          1
--2   b   3          2
--3   c   4          1

--1   a   2          1
--3   c   4          1
--2   b   3          2