CREATE TABLE [dbo].[States] (
    [ID]         INT           IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (50)  NULL,
    [SCode]      VARCHAR (15)  NULL,
    [Country_ID] INT           NULL,
    [Active]     BIT           DEFAULT ((1)) NULL,
    [Image_URL]  VARCHAR (150) NULL,
    [Image_Alt]  VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Country_ID]) REFERENCES [dbo].[Country] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [States_Name_IDX]
    ON [dbo].[States]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [States_Scode_IDX]
    ON [dbo].[States]([SCode] ASC);

