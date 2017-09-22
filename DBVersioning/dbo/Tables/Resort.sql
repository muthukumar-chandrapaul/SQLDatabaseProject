CREATE TABLE [dbo].[Resort] (
    [ID]             INT          IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (50) NULL,
    [RCode]          VARCHAR (15) NULL,
    [Destination_ID] INT          NULL,
    [Active]         BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Destination_ID]) REFERENCES [dbo].[Destination] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Resort_Destination_ID_IDX]
    ON [dbo].[Resort]([Destination_ID] ASC);

