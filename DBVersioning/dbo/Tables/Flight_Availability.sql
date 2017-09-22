CREATE TABLE [dbo].[Flight_Availability] (
    [ID]                    INT             IDENTITY (1, 1) NOT NULL,
    [Flight_No]             VARCHAR (20)    NULL,
    [Airline_ID]            INT             NULL,
    [Flight_Class_ID]       INT             NULL,
    [Departure_Airport]     VARCHAR (10)    NULL,
    [Arrival_Airport]       VARCHAR (10)    NULL,
    [Departure_Date]        DATETIME        NULL,
    [Arrival_Date]          DATETIME        NULL,
    [Ret_Departure_Airport] VARCHAR (10)    NULL,
    [Ret_Arrival_Airport]   VARCHAR (10)    NULL,
    [Ret_Departure_Date]    DATETIME        NULL,
    [Ret_Arrival_Date]      DATETIME        NULL,
    [Adult_Price]           DECIMAL (19, 4) NULL,
    [Child_Price]           DECIMAL (19, 4) NULL,
    [Infant_Price]          DECIMAL (19, 4) NULL,
    [Active]                BIT             DEFAULT ((1)) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    FOREIGN KEY ([Airline_ID]) REFERENCES [dbo].[Airline] ([ID]),
    FOREIGN KEY ([Flight_Class_ID]) REFERENCES [dbo].[Flight_Class] ([ID])
);


GO
CREATE NONCLUSTERED INDEX [Flight_Availability_IDX]
    ON [dbo].[Flight_Availability]([Departure_Date] ASC, [Arrival_Date] ASC, [Departure_Airport] ASC, [Arrival_Airport] ASC, [Flight_Class_ID] ASC);

