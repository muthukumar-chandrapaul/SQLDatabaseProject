CREATE TABLE [dbo].[Hotel_Room_Availability] (
    [ID]                   INT             IDENTITY (1, 1) NOT NULL,
    [Room_No]              VARCHAR (15)    NULL,
    [Hotel_ID]             INT             NULL,
    [Date_From]            DATE            NULL,
    [Date_To]              DATE            NULL,
    [Hotel_Room_Type_ID]   INT             NULL,
    [Hotel_Board_Basis_ID] INT             NULL,
    [Buy_Price]            DECIMAL (19, 4) NULL,
    [Sell_Price]           DECIMAL (19, 4) NULL,
    [Active]               BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Hotel_Board_Basis_ID]) REFERENCES [dbo].[Hotel_Board_Basis] ([ID]),
    FOREIGN KEY ([Hotel_ID]) REFERENCES [dbo].[Hotel] ([ID]),
    FOREIGN KEY ([Hotel_Room_Type_ID]) REFERENCES [dbo].[Hotel_Room_Type] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Hotel_Availability_IDX]
    ON [dbo].[Hotel_Room_Availability]([Date_From] ASC, [Date_To] ASC, [Hotel_Room_Type_ID] ASC, [Hotel_Board_Basis_ID] ASC);

