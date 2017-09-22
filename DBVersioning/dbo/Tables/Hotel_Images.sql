CREATE TABLE [dbo].[Hotel_Images] (
    [ID]                  INT           IDENTITY (1, 1) NOT NULL,
    [Hotel_ID]            INT           NULL,
    [Image_URL]           VARCHAR (150) NULL,
    [Hotel_Image_Type_ID] INT           NULL,
    [Active]              BIT           DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Hotel_ID]) REFERENCES [dbo].[Hotel] ([ID]),
    FOREIGN KEY ([Hotel_Image_Type_ID]) REFERENCES [dbo].[Hotel_Image_Type] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Hotel_Images_Hotel_ID_IDX]
    ON [dbo].[Hotel_Images]([Hotel_ID] ASC);

