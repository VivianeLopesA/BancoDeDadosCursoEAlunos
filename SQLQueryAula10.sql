create database DB_Curso;

use DB_Curso;

backup database DB_Curso
to disk = 'C:\DecolaTech\testDb.bak';


CREATE table tblCurso(
	idCurso int primary key identity(1,100),
	tituloCurso varchar(15) not null,
	mensaliade decimal(10,2) not null
);



EXEC Sp_rename 'tblCurso.mensaliade', 'mensalidade';


CREATE table tblAluno(
	idAluno int primary key identity(1,1),
	nome varchar(15) not null,
	sobrenome varchar(30) not null,
	idCurso int foreign key references tblCurso(idCurso)
);



select * from tblCurso;

select * from tblAluno;

BEGIN TRANSACTION;


INSERT into	tblCurso (tituloCurso, mensalidade) values ('Java Completo', 259.59);

INSERT into	tblCurso (tituloCurso, mensalidade) values ('.Net Completo', 299.99);

SAVE TRANSACTION a1;

COMMIT TRANSACTION;


BEGIN TRANSACTION;

INSERT INTO tblAluno (nome, sobrenome, idCurso) values ('Gabriela', 'Franco', 101),
('Pamela', 'Tavares', 1);


SAVE TRANSACTION a2;

COMMIT TRANSACTION;