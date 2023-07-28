create database if not exists `BIBLIOTECA`;
use `BIBLIOTECA`;

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

CREATE TABLE `tabelaFuncionario` (
    `id_funcionario` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeFuncionario` VARCHAR(50) NOT NULL,
    `id_cadastro` INT NOT NULL,
    FOREIGN KEY (`id_cadastro`)
        REFERENCES `tabelaCadastro` (`id_cadastro`)
);

CREATE TABLE `tabelaUsuario` (
    `id_usuario` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeUsuario` VARCHAR(50) NOT NULL,
    `CPFusuario` VARCHAR(11) NOT NULL,
    `sexo` VARCHAR(1) NOT NULL,
    `id_cadastro` INT NOT NULL,
    FOREIGN KEY (`id_cadastro`)
        REFERENCES `tabelaCadastro` (`id_cadastro`)
);

CREATE TABLE `tabelaDevolucao` (
    `id_devolucao` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `dataDevolucao` DATE NOT NULL,
    `id_funcionario` INT NOT NULL,
    FOREIGN KEY (`id_funcionario`)
        REFERENCES `tabelaFuncionario` (`id_funcionario`)
);

CREATE TABLE `tabelaEditora` (
    `id_editora` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `noemEditora` VARCHAR(40) NOT NULL,
    `cidadeEditora` VARCHAR(40) NOT NULL
);

CREATE TABLE `tabelaAutor` (
    `id_autor` INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    `nomeAutor` VARCHAR(50) NOT NULL,
    `nacinalidadeAutor` VARCHAR(50) NOT NULL
);

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

