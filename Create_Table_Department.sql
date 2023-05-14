CREATE TABLE [dbo].[Department] (
    [DepartmentId]   INT           IDENTITY (1, 1) NOT NULL,
    [DepartmentName] VARCHAR (255) NOT NULL,
    [DepartmentCode] VARCHAR (50)  NULL,
    [ManagerId]      INT           NULL,
    [Description]    VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([DepartmentId] ASC)
);

