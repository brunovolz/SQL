CREATE TABLE [dbo].[Frequencia] (
    [Id]    INT IDENTITY (1, 1) NOT NULL,
    [Aluno] INT NOT NULL,
    [Dia1]  INT NOT NULL,
    [Dia2]  INT NOT NULL,
    [Dia3]  INT NOT NULL,
    [Dia4]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Frequencia_Alunos] FOREIGN KEY ([Aluno]) REFERENCES [dbo].[Aluno] ([Id])
);

