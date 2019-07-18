CREATE TABLE [dbo].[LivroAutor]
(
	[Livro] INT NOT NULL,
	[Autor] int not null, 
    CONSTRAINT [FK_LivroAutor_Livros] FOREIGN KEY ([Livro]) REFERENCES [Livros]([Id]), 
    CONSTRAINT [FK_LivroAutor_Autores] FOREIGN KEY ([Autor]) REFERENCES [Autores]([Id])

)
