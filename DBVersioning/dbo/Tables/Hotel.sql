CREATE TABLE [dbo].[Hotel] (
    [ID]            INT          IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [HCode]         VARCHAR (15) NULL,
    [Resort_ID]     INT          NULL,
    [Star_Rating]   INT          NULL,
    [Hotel_Type_ID] INT          NULL,
    [Active]        BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Hotel_Type_ID]) REFERENCES [dbo].[Hotel_Type] ([ID]),
    FOREIGN KEY ([Resort_ID]) REFERENCES [dbo].[Resort] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Hotel_Resort_ID_IDX]
    ON [dbo].[Hotel]([Resort_ID] ASC);

