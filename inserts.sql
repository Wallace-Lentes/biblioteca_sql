
-- // Use DBML to define your database structure
-- // https://dbdiagram.io/d/64c334ed02bd1c4a5ed57eb2


-- INSERE OS DADOS PARA NOVOS CADASTRO
SELECT * FROM biblioteca.tabelacadastro;
use `BIBLIOTECA`;
insert into tabelaCadastro(logradouro, numero, CEP, bairro, cidade, estadoUF, email) values 
('rua do pintasilgo', ' 30', '83401340', 'arruda', 'colombo', 'PR', 'marcel.alves@gmail.com'),
('rua imaculada conceicao', '1237', '80215200', 'prado velho', 'curitiba', 'PR', 'alvaro.souza@gmail.com'),
('rua francisco nunes', '1773', '80215000', ' prado velho', 'curitiba', 'PR', 'jorge.santos@gmail.com'),
('rua do pau brasil', '239', '83400563', 'parque do embu', 'colombo', 'PR', 'maria.eduarda@gmail.com'),
('avenida parana', '789', '82356100', 'boa vista' , 'curitiba', 'PR ', 'mario.cardoso@gmail.com'),
('rua eduardo pinto da rocha', '368', '85674289', 'alto boqueirao', 'curitiba', 'PR', 'maria.santos@gmail.com'),
('rua da araponga', '65', '83401340', 'santa tereza', 'colombo', 'PR', 'eduardo.oliveria@gmail.com'),
('rua carlos gomes', '34', '83301240', 'jardim bela vista', 'piraquara', 'PR', 'marcia.ferreira@gmail.com'),
('rua jorge bom filho', '200', '83430000', 'jardim paulista', 'campina grande', 'PR', 'yasmin.torres@gmail.com'),
('rua luis tolardo', '45', '83420000', 'jardim adelia', 'quatro barras', 'PR', 'joao.carlos@gmail.com');


-- INSERE NOMES DE AUTORES E O PAÍS DE ORIGEM
SELECT * FROM biblioteca.tabelaautor;
use `BIBLIOTECA`;
insert into tabelaAutor(nomeAutor, nacionalidadeAutor) values
('Jose Saramago', 'Portugal'),
('Clarice Lispector', 'Brasil'),
('Edgar Allan Poe', 'Estados Unidos'),
('Fiodor Dostoievski', 'Russia'),
('Marcel Proust', 'Franca'),
('Miguel de Cervantes', 'Espanha');

-- INSERE OS NOMES DE EDITORAS E SEU PAíS DE ORIGEM
SELECT * FROM biblioteca.tabelaeditora;
use `BIBLIOTECA`;
insert into tabelaEditora(noemEditora, cidadeEditora) values 
('Editora Caminho', 'lisboa'),
('Editora Rocco', 'rio de janeiro'),
('The Russian Messenger', 'São Petersburgo'),
('Editions Grasset', 'paris'),
('Editions Gallimard', 'paris'),
('Juan de la Cuesta', 'madri');

-- INSERE OS DADOS DOS NOVOS USUARIO OU ATUALIZAÇÃO
SELECT * FROM biblioteca.tabelausuario;
use `BIBLIOTECA`;
insert into tabelaUsuario(nomeUsuario, CPFusuario, sexo, id_cadastro) values
('Marcela Alves', '0987654355',  'F', 6),
('Alvaro de Souza', '87654356788',  'M', 7),
('Jorge dos Santos',  '10987965473', 'M', 8),
('Maria Eduarda goncalves',  '30977845645',  'F', 9),
('Mario Cardoso',  '12343234451',  'M', 10);

-- INSERE OS NOMES DOS FUNCIONARIOS
SELECT * FROM biblioteca.tabelafuncionario;
use `BIBLIOTECA`;
insert into tabelaFuncionario(nomeFuncionario, id_cadastro) values
('Maria Joaquina Santos', 1),
('Eduardo Oliveira', 2),
('Marcia Ferreira', 3),
('Yasmin Torres', 4),
('Joao Carlos da Silva', 5);

-- INSERE A DATA DE DEVOLUÇAO 
SELECT * FROM biblioteca.tabeladevolucao;
use `BIBLIOTECA`;
insert into tabelaDevolucao(dataDevolucao, id_funcionario) values
('2023-06-14', 1),
('2023-05-25', 2),
('2023-08-01', 3),
('2023-08-31', 4),
('2023-08-05', 5);

-- INSERE OS NOMES DE OBRAS, SEU ANO DE PUBLICAÇAO E A QUANTIDADE DISPONIVEL
SELECT * FROM biblioteca.tabelaobra;
use `BIBLIOTECA`;
insert into tabelaObra(titulo, anoPublicacao, quantidade, id_editora, id_autor) values 
('Ensaio sobre a Cegueira', 1995, 4, 1, 1),
('O Evangelho segundo Jesus Cristo', 1991, 3, 1, 1),
('Perto do Coração Selvagem', 1943, 3, 2, 2),
('A Hora da Estrela', 1977, 3, 2, 2),
('Crime e Castigo', 1866, 5, 3, 3),
('Em Busca do Tempo Perdido', 1927, 9, 4, 4),
('Dom Quixote', 1615, 10, 5, 5);

-- INSERE DATA DE EMPRESTIMO E PREVISÃO DE ENTREGA
SELECT * FROM biblioteca.tabelaemprestimo;
use `BIBLIOTECA`;
insert into tabelaEmprestimo(dataEmprestimo, presvisaoDevolucao, id_obra, id_usuario, id_funcionario) values
('2023-05-12', '2023-06-12', 1, 1, 1),
('2023-04-23', '2023-05-23', 2, 2, 2),
('2023-06-30', '2023-07-30', 3, 3, 3),
('2023-07-29', '2023-08-29', 4, 4, 4),
('2023-07-03', '2023-08-03', 5, 5, 5);


-- INSERA DADOS DE ATRASOS PARA GERAÇAO DE MULTA 
SELECT * FROM biblioteca.tabelamulta;
use `BIBLIOTECA`;
insert into tabelaMulta(dataMulta, motivoMulta, diasAtraso, valorMulta, id_emprestimo, id_usuario) values
('2023-06-16', 'atraso', 2, '6.00', 1, 1),
('2023-05-26', 'atraso', 1, '3.00', 2, 2),
('2023-08-16', 'atraso', 15, '45.00', 3, 3),
('2023-09-30', 'atraso', 29, '87.00', 4, 4),
('2023-08-06', 'atraso', 1, '3.00', 5, 5);