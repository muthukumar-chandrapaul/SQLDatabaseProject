CREATE TABLE [dbo].[Airline_Images] (
    [ID]                    INT           IDENTITY (1, 1) NOT NULL,
    [Airline_ID]            INT           NULL,
    [Image_URL]             VARCHAR (150) NULL,
    [Airline_Image_Type_ID] INT           NULL,
    [Active]                BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Airline_ID]) REFERENCES [dbo].[Airline] ([ID]),
    FOREIGN KEY ([Airline_Image_Type_ID]) REFERENCES [dbo].[Airline_Image_Type] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Airline_Images_Airline_ID_IDX]
    ON [dbo].[Airline_Images]([Airline_ID] ASC);

