CREATE TABLE [dbo].[Country] (
    [ID]        INT           IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50)  NULL,
    [CCode2]    VARCHAR (2)   NULL,
    [CCode3]    VARCHAR (3)   NULL,
    [Active]    BIT           DEFAULT ((1)) NULL,
    [Image_URL] VARCHAR (150) NULL,
    [Image_Alt] VARCHAR (150) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [Country_IDX]
    ON [dbo].[Country]([Name] ASC);

