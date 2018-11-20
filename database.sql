drop if exists db_livros;
create database db_livros;
use db_livros;

create table editora(
  id      int           not null    auto_increment,
  nome    varchar(200)  not null,
  primary key(id)
);

create table usuário(
  id      int           not null    auto_increment,
  nome    varchar(200)  not null,
  email   varchar(200)  not null,
  senha   varchar(200)  not null,
  ativo   boolean       not null    default true,
  primary key(id)
);

create table livro(
  id          int           not null    auto_increment,
  titulo      varchar(200)  not null,
  descricao   text          not null,
  publicacao  date          not null,
  ISBN        varchar(200),
  autores     json,
  editora_id  int           not null,
  primary key(id),
  foreign key(editora_id) references editora(id)
);

insert into editora (nome) values
  ('Novatec'),
  ('Pearson'),
  ('Casa do Código');

insert into autor (nome) values
  ('Nilo Ney Coutinho Menezes'),
  ('Lúcia A. Kinoshita'),
  ('Wes McKinney'),
  ('Luciano Ramalho'),
  ('Felipe Cruz');
  
insert into livro (titulo, descricao, publicacao, ISBN, autores, editora_id) values
  ('Introdução à Programação com Python', '...', '2014-06-17', '978-8575224083', '{"autores": ["Nilo Ney Coutinho Menezes"]}', 1),
  
  ('Python Para Análise de Dados: Tratamento de Dados com Pandas, NumPy e IPython', '...', '2018-01-07', '978-8575226476', '{"autores": ["Wes McKinney", "Lúcia A. Kinoshitas"]}', 1),
  
  ('Python Fluente: Programação Clara, Concisa e Eficaz', '...', '2015-11-03', '978-8575224625', '{"autores": ["Luciano Ramalho"]}', 1),
  
  ('Python: Escreva seus primeiros programas', '...', '2017-01-01', '978-8555190919', '{"autores": ["Felipe Cruz"]}', 3);

