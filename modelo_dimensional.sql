– Modelo Dimensional – Script SQL

CREATE TABLE dim_professor ( sk_professor INT PRIMARY KEY, id_professor
INT, nome VARCHAR(200), titulacao VARCHAR(100), situacao VARCHAR(20) );

CREATE TABLE dim_disciplina ( sk_disciplina INT PRIMARY KEY,
id_disciplina INT, nome VARCHAR(200), carga_horaria INT );

CREATE TABLE dim_curso ( sk_curso INT PRIMARY KEY, id_curso INT, nome
VARCHAR(200) );

CREATE TABLE dim_departamento ( sk_departamento INT PRIMARY KEY,
id_departamento INT, nome VARCHAR(200), campus VARCHAR(100) );

CREATE TABLE dim_data ( sk_data INT PRIMARY KEY, data_completa DATE, ano
INT, mes INT, dia INT );

CREATE TABLE fato_oferta_disciplina ( sk_professor INT, sk_disciplina
INT, sk_curso INT, sk_departamento INT, sk_data INT,
qtd_alunos_matriculados INT, qtd_pre_requisitos INT );
