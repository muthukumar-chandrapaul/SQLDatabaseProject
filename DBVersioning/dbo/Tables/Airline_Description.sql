CREATE TABLE [dbo].[Airline_Description] (
    [ID]                INT            IDENTITY (1, 1) NOT NULL,
    [Airline_ID]        INT            NULL,
    [Short_Description] NVARCHAR (500) NULL,
    [Description]       NVARCHAR (MAX) NULL,
    [Active]            BIT            DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Airline_ID]) REFERENCES [dbo].[Airline] ([ID])
);

