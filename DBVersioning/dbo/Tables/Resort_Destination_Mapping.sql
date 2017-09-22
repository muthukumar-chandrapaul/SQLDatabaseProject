CREATE TABLE [dbo].[Resort_Destination_Mapping] (
    [ID]             INT IDENTITY (1, 1) NOT NULL,
    [Resort_ID]      INT NULL,
    [Destination_ID] INT NULL,
    [Active]         BIT DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Resort_Destination_Mapping_ID_IDX]
    ON [dbo].[Resort_Destination_Mapping]([Destination_ID] ASC);

