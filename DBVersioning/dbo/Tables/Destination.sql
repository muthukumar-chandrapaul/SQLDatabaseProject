CREATE TABLE [dbo].[Destination] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50)  NULL,
    [DCode]     VARCHAR (15)  NULL,
    [States_ID] INT           NULL,
    [Active]    BIT           DEFAULT ((1)) NULL,
    [Image_URL] VARCHAR (150) NULL,
    [Image_Alt] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([States_ID]) REFERENCES [dbo].[States] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Destination_Dcode_IDX]
    ON [dbo].[Destination]([DCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Destination_States_ID_IDX]
    ON [dbo].[Destination]([States_ID] ASC);

