CREATE TABLE [dbo].[Updatedata] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Name]     NVARCHAR (50)  NOT NULL,
    [Email]    NVARCHAR (50)  NOT NULL,
    [mbno]     DECIMAL (18)   NOT NULL,
    [caste]    NVARCHAR (50)  NOT NULL,
    [city]     NVARCHAR (50)  NOT NULL,
    [district] NVARCHAR (50)  NOT NULL,
    [address]  NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

