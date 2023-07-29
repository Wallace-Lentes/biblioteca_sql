
-- // Use DBML to define your database structure
-- // https://dbdiagram.io/d/64c334ed02bd1c4a5ed57eb2


-- INSERE OS DADOS PARA NOVOS CADASTRO
SELECT * FROM biblioteca.tabelacadastro;
insert into tabelaCadastro(logradouro, numero, CEP, bairro, cidade, estadoUF, email) values 
('rua do pintasilgo', ' 30', '83401340', 'arruda', 'colombo', 'PR', 'marcel.alves@gmail.com'),
('rua imaculada conceicao', '1237', '80215200', 'prado velho', 'curitiba', 'PR', 'alvaro.souza@gmail.com'),
('rua francisco nunes', '1773', '80215000', ' prado velho', 'curitiba', 'PR', 'jorge.santos@gmail.com'),
('rua do pau brasil', '239', '83400563', 'parque do embu', 'colombo', 'PR', 'maria.eduarda@gmail.com'),
('avenida parana', '789', '82356100', 'boa vista' , 'curitiba', 'PR ', 'mario.cardoso@gmail.com'),
('rua eduardo pinto da rocha', '368', '85674289', 'alto boqueirao', 'curitiba', 'PR', 'maria.santos@gmail.com'),
('rua da araponga', '65', '83401340', 'santa tereza', 'colombo', 'PR', 'eduardo.oliveria@gmail.com'),
('rua carlos gomes', '34', '83301240', 'jardim bela vista', 'piraquara', ' PR', 'marcia.ferreira@gmail.com'),
('rua jorge bom filho', '200', '83430000', 'jardim paulista', 'campina grande', 'PR', 'yasmin.torres@gmail.com'),
('rua luis tolardo', '45', '83420000', 'jardim adelia', 'quatro barras', 'PR', 'joao.carlos@gmail.com');


-- INSERE OS DADOS DOS NOVOS USUARIO OU ATUALIZAÇÃO
SELECT * FROM biblioteca.tabelausuario;
insert into tabelaUsuario(nomeUsuario, CPFusuario, sexo) values
('Marcela Alves', '0987654355',  'F'),
('Alvaro de Souza', '87654356788',  'M'),
('Jorge dos Santos',  '10987965473', 'M'),
('Maria Eduarda goncalves',  '30977845645',  'F'),
('Mario Cardoso',  '12343234451',  'M');

-- INSERE OS NOMES DOS FUNCIONARIOS
SELECT * FROM biblioteca.tabelafuncionario;
insert into tabelaFuncionario(nomeFuncionario) values
('Maria Joaquina Santos'),
('Eduardo Oliveira'),
('Marcia Ferreira'),
('Yasmin Torres'),
('Joao Carlos da Silva');



-- INSERE NOMES DE AUTORES E O PAÍS DE ORIGEM
SELECT * FROM biblioteca.tabelaautor;
insert into tabelaAutor(nomeAutor, nacionalidadeAutor) values
('Jose Saramago', 'Portugal'),
('Clarice Lispector', 'Brasil'),
('Edgar Allan Poe', 'Estados Unidos'),
('Fiodor Dostoievski', 'Russia'),
('Marcel Proust', 'Franca'),
('Miguel de Cervantes', 'Espanha');

-- INSERE DATA DE EMPRESTIMO E PREVISÃO DE ENTREGA
SELECT * FROM biblioteca.tabelaemprestimo;
insert into tabelaEmprestimo(dataEmprestimo, presvisaoDevolucao) values
('2023-05-12', '2023-06-12'),
('2023-04-23', '2023-05-23'),
('2023-06-30', '2023-07-30'),
('2023-07-29', '2023-08-29'),
('2023-07-03', '2023-08-03');



-- INSERE A DATA DE DEVOLUÇAO 
SELECT * FROM biblioteca.tabeladevolucao;
insert into tabelaDevolucao(dataDevolucao) values
('2023-06-14'),
('2023-05-25'),
('2023-08-01'),
('2023-08-31'),
('2023-08-05');

-- INSERA DADOS DE ATRASOS PARA GERAÇAO DE MULTA 
SELECT * FROM biblioteca.tabelamulta;
insert into tabelaMulta(dataMulta, motivoMulta, diasAtraso, valorMulta) values
('16/06/2023', 'atraso', 2, '6,00'),
('26/05/2023', 'atraso', 1, '3,00'),
('16/08/2023', 'atraso', 15, '45,00'),
('31/09/2023', 'atraso', 30, '90,00'),
('06/08/2023', 'atraso', 1, '3,00');


-- INSERE OS NOMES DE OBRAS, SEU ANO DE PUBLICAÇAO E A QUANTIDADE DISPONIVEL 
SELECT * FROM biblioteca.tabelaobra;
insert into tabelaObra(titulo, anoPublicacao, quantidade) values 
('Ensaio sobre a Cegueira', 1995, 4)
('O Evangelho segundo Jesus Cristo', 1991, 3)
('Perto do Coração Selvagem', 1943, 3)
('A Hora da Estrela', 1977, 3)
('Crime e Castigo', 1866, 5)
('Em Busca do Tempo Perdido', 1927, 9)
('Dom Quixote', 1615, 10)



-- INSERE OS NOMES DE EDITORAS E SEU PASA DE ORIGEM
SELECT * FROM biblioteca.tabelafuncionario;
insert into tabelaEditora(noemEditora, cidadeEditora) values 
('Editora Caminho'   'lisboa'),
('Editora Rocco'   'rio de janeiro'),
('The Russian Messenger'    'São Petersburgo'),
('Editions Grasset'   'paris'),
('Editions Gallimard'  'paris'),
('Juan de la Cuesta'  'madri');