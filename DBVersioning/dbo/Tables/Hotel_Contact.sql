CREATE TABLE [dbo].[Hotel_Contact] (
    [ID]       INT           IDENTITY (1, 1) NOT NULL,
    [Hotel_ID] INT           NULL,
    [Address1] VARCHAR (150) NULL,
    [Address2] VARCHAR (150) NULL,
    [Address3] VARCHAR (150) NULL,
    [Zip]      VARCHAR (10)  NULL,
    [Phone]    VARCHAR (15)  NULL,
    [Fax]      VARCHAR (15)  NULL,
    [Map_URL]  VARCHAR (150) NULL,
    [Active]   BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Hotel_ID]) REFERENCES [dbo].[Hotel] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Hotel_Contact_Hotel_ID_IDX]
    ON [dbo].[Hotel_Contact]([Hotel_ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Hotel_Description_Hotel_ID_IDX]
    ON [dbo].[Hotel_Contact]([Hotel_ID] ASC);

