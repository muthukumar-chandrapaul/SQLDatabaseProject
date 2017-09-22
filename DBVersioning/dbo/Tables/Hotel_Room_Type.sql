CREATE TABLE [dbo].[Hotel_Room_Type] (
    [ID]            INT          IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [Min_Occupancy] INT          NULL,
    [Max_Occupancy] INT          NULL,
    [Min_Adults]    INT          NULL,
    [Max_Adults]    INT          NULL,
    [Min_Children]  INT          NULL,
    [Max_Children]  INT          NULL,
    [Active]        BIT          DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Hotel_Room_Type_MaxMin]
    ON [dbo].[Hotel_Room_Type]([Min_Occupancy] ASC, [Max_Occupancy] ASC);

