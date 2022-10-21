CREATE TABLE [dbo].[Documents] (
    [Id]                 INT          IDENTITY (1, 1) NOT NULL,
    [email]              VARCHAR (50) NULL,
    [birthcertificate]   IMAGE        NOT NULL,
    [leavingcertificate] IMAGE        NOT NULL,
    [passportsizeimage]  IMAGE        NOT NULL,
    [castecertificate]   IMAGE        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

