select 
	a.Aluno as 'Nome do Aluno',
	n.nota1 as 'Nota 1',
	n.nota2 as 'Nota 2',
	n.nota3 as 'Nota 3',
	n.nota4 as 'Nota 4',
	((n.nota1 + n.nota2 + n.nota3 + n.nota4)/4) as 'Media',
	concat (((f.dia1 +f.dia2+f.dia3+f.dia4)*100)/4,'%') as 'Frequencia',
	iif  ((((n.nota1 + n.nota2 + n.nota3 + n.nota4)/4) >= 7)
	and (((f.dia1 +f.dia2+f.dia3+f.dia4)*100)/4) >= 75,'Aprovado','Reprovado') as 'Status'
	from nota n
	inner join Aluno a on n.Aluno = a.id
	inner join Frequencia f on n.Aluno = f.Aluno