CREATE TABLE [dbo].[NewAdhar] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Fullname]    NVARCHAR (50)  NOT NULL,
    [Username]    NVARCHAR (50)  NOT NULL,
    [Email]       NVARCHAR (50)  NOT NULL,
    [Phn_no]      DECIMAL (18)   NOT NULL,
    [caste]       NVARCHAR (50)  NOT NULL,
    [country]     NVARCHAR (50)  NOT NULL,
    [birthday]    DATE           NOT NULL,
    [city]        NVARCHAR (50)  NOT NULL,
    [district]    NVARCHAR (50)  NOT NULL,
    [homeaddress] NVARCHAR (MAX) NOT NULL,
    [gender]      NVARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

