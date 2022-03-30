create database empresa1;
create table contratadas (
   ID_contratadas integer PRIMARY KEY AUTOINCREMENT,
    Nome varchar(255) not null,
    Endereco varchar(255) not null,
    Cidade varchar(255) not null
    CONSTRAINT fk_contratoempresa FOREIGN KEY (ID_contrato) REFERENCES contrato (ID_contrato)
);

create table contrato
(
    ID_contrato integer PRIMARY KEY AUTOINCREMENT,
    Nome varchar(255),
    Endereco varchar(255),
    Cidade varchar(255),
    ID_contratadas integer,
    CONSTRAINT fk_contratoempresa FOREIGN KEY (ID_contratadas) REFERENCES contratadas (ID_contratadas)
);