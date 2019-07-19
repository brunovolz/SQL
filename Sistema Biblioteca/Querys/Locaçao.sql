CREATE TABLE [dbo].[Locaçao] (
    [Id]        INT      IDENTITY (1, 1) NOT NULL,
    [Livro]     INT      NOT NULL,
    [Usuario]   INT      NOT NULL,
    [Tipo]      INT      NOT NULL,
    [Devoluçao] DATETIME NOT NULL,
    [Ativo]     BIT      NOT NULL,
    [UsuInc]    INT      NOT NULL,
    [UsuAlt]    INT      NOT NULL,
    [DatInc]    DATETIME DEFAULT (getdate()) NOT NULL,
    [DatAlt]    DATETIME DEFAULT (getdate()) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Locaçao_Livros] FOREIGN KEY ([Livro]) REFERENCES [dbo].[Livros] ([Id]),
    CONSTRAINT [FK_Locaçao_UsuarioAloc] FOREIGN KEY ([Usuario]) REFERENCES [dbo].[Usuarios] ([Id]),
    CONSTRAINT [FK_Locaçao_UsuInc] FOREIGN KEY ([UsuInc]) REFERENCES [dbo].[Usuarios] ([Id]),
    CONSTRAINT [FK_Locaçao_UsuAlt] FOREIGN KEY ([UsuAlt]) REFERENCES [dbo].[Usuarios] ([Id])
);

