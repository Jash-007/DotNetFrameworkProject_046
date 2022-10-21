CREATE TABLE [dbo].[Registeration] (
    [Id]            INT          IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (50) NOT NULL,
    [Email]         VARCHAR (50) NOT NULL,
    [mbno]          VARCHAR (50) NOT NULL,
    [Date_of_birth] DATE         NOT NULL,
    [pass]          VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

