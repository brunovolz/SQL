CREATE TABLE [dbo].[Livros] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Registro]    INT            NOT NULL,
    [Titulo]      VARCHAR (1200) NOT NULL,
    [Isbn]        VARCHAR (15)   NOT NULL,
    [Genero]      INT            NOT NULL,
    [Editora]     INT            NOT NULL,
    [Sinopse]     NVARCHAR (MAX) NULL,
    [Observaçoes] VARCHAR (1000) NULL,
    [Ativo]       BIT            NOT NULL,
    [UsuInc]      INT            NOT NULL,
    [UsuAlt]      INT            NOT NULL,
    [DatInc]      DATETIME       NOT NULL,
    [DatAlt]      DATETIME       NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Livro_To_Genero] FOREIGN KEY ([Genero]) REFERENCES [dbo].[Generos] ([Id]),
    CONSTRAINT [FK_Livro_To_Editora] FOREIGN KEY ([Editora]) REFERENCES [dbo].[Editoras] ([Id]),
    CONSTRAINT [FK_Livro_To_UsuarioInc] FOREIGN KEY ([UsuInc]) REFERENCES [dbo].[Usuarios] ([Id]),
    CONSTRAINT [FK_Livro_To_UsuarioAlt] FOREIGN KEY ([UsuAlt]) REFERENCES [dbo].[Usuarios] ([Id])
);

