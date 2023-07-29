-- CRIA UM BANCO DE DADOS CHAADA BIBLIOTECA
create database if not exists `BIBLIOTECA`;
use `BIBLIOTECA`;

-- CRIA UMA TABELA DE CADASTRO PARA RECEBER DADOS DE ENDEREÇO.
CREATE TABLE `tabelaCadastro` (
    `id_cadastro` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `logradouro` VARCHAR(100) NOT NULL,
    `numero` INT NOT NULL,
    `CEP` INT NOT NULL,
    `bairro` VARCHAR(50) NOT NULL,
    `cidade` VARCHAR(50) NOT NULL,
    `estadoUF` VARCHAR(2) NOT NULL,
    `email` VARCHAR(100) NOT NULL
);

-- CRIA UMA TABELA DE FUNCIONARIO E RECEBE O NOME DOS FUNCIONARIOS.
CREATE TABLE `tabelaFuncionario` (
    `id_funcionario` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeFuncionario` VARCHAR(50) NOT NULL,
    `id_cadastro` INT NOT NULL,
    FOREIGN KEY (`id_cadastro`)
        REFERENCES `tabelaCadastro` (`id_cadastro`)
);

-- CRIA UMA TABELA DE USUARIO E RECEBE ALGUNS DADOS A MAIS REFERENTE A CADASTRO.
CREATE TABLE `tabelaUsuario` (
    `id_usuario` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeUsuario` VARCHAR(50) NOT NULL,
    `CPFusuario` VARCHAR(11) NOT NULL,
    `sexo` VARCHAR(1) NOT NULL,
    `id_cadastro` INT NOT NULL,
    FOREIGN KEY (`id_cadastro`)
        REFERENCES `tabelaCadastro` (`id_cadastro`)
);

-- CRIA UMA TABELA DE DEVOLUÇÃO PARA CONTROLE DE DEVOLUÇOES.
CREATE TABLE `tabelaDevolucao` (
    `id_devolucao` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `dataDevolucao` DATE NOT NULL,
    `id_funcionario` INT NOT NULL,
    FOREIGN KEY (`id_funcionario`)
        REFERENCES `tabelaFuncionario` (`id_funcionario`)
);

-- CRIA UMA TABELA DE EDITORA COM NOMES DELAS.
CREATE TABLE `tabelaEditora` (
    `id_editora` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `noemEditora` VARCHAR(40) NOT NULL,
    `cidadeEditora` VARCHAR(40) NOT NULL
);

-- CRIA UMA TABELA DE AUTORES.
CREATE TABLE `tabelaAutor` (
    `id_autor` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeAutor` VARCHAR(50) NOT NULL,
    `nacionalidadeAutor` VARCHAR(50) NOT NULL
);

-- CRIA UMA TABELA DE OBRA PARA GUARDAR OS LIVROS.
CREATE TABLE `tabelaObra` (
    `id_obra` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `titulo` VARCHAR(30) NOT NULL,
    `anoPublicacao` INT NOT NULL,
    `quantidade` INT NOT NULL,
    `id_editora` INT NOT NULL,
    `id_autor` INT NOT NULL,
    FOREIGN KEY (`id_autor`)
        REFERENCES `tabelaAutor` (`id_autor`),
    FOREIGN KEY (`id_editora`)
        REFERENCES `tabelaEditora` (`id_editora`)
);

-- CRIA UMA TABELA DE EMPRESTIMO PARA CONTROLE DE DIA DO EMPRESTIMO E UMA PREVISÃO DE ENTREGA.
CREATE TABLE `tabelaEmprestimo` (
    `id_emprestimo` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `dataEmprestimo` DATE NOT NULL,
    `presvisaoDevolucao` DATE NOT NULL,
    `id_obra` INT NOT NULL,
    `id_usuario` INT NOT NULL,
    `id_funcionario` INT NOT NULL,
    FOREIGN KEY (`id_obra`)
        REFERENCES `tabelaObra` (`id_obra`),
    FOREIGN KEY (`id_usuario`)
        REFERENCES `tabelaUsuario` (`id_usuario`),
    FOREIGN KEY (`id_funcionario`)
        REFERENCES `tabelaFuncionario` (`id_funcionario`)
);

-- CRIA UMA TABELA DE MULTA PARA GERAR UMA COBRANÇA CASO HAJA ATRAS NA DEVOLUÇAO DE LIVROS.
CREATE TABLE `tabelaMulta` (
    `id_multa` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `dataMulta` DATE NOT NULL,
    `motivoMulta` VARCHAR(7) NOT NULL,
    `diasAtraso` INT NOT NULL,
    `valorMulta` DOUBLE NOT NULL,
    `id_emprestimo` INT NOT NULL,
    `id_usuario` INT NOT NULL,
    FOREIGN KEY (`id_usuario`)
        REFERENCES `tabelaUsuario` (`id_usuario`),
    FOREIGN KEY (`id_emprestimo`)
        REFERENCES `tabelaEmprestimo` (`id_emprestimo`)
);

