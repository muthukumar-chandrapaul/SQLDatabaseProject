CREATE TABLE [dbo].[Airline] (
    [ID]     INT          IDENTITY (1, 1) NOT NULL,
    [Name]   VARCHAR (50) NULL,
    [ACode]  VARCHAR (15) NULL,
    [Active] BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Airline_Description_Airline_ID_IDX]
    ON [dbo].[Airline]([ID] ASC);

