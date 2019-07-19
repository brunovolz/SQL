CREATE TABLE [dbo].[Nota] (
    [Id]    INT IDENTITY (1, 1) NOT NULL,
    [Aluno] INT NOT NULL,
    [Nota1] INT NOT NULL,
    [Nota2] INT NOT NULL,
    [Nota3] INT NOT NULL,
    [Nota4] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Nota_AlunoNota] FOREIGN KEY ([Aluno]) REFERENCES [dbo].[Aluno] ([Id])
);

