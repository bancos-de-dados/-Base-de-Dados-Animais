
#  Base de Dados Animais



# Etapa 1 

## Codigo:

```SQL
CREATE TABLE animais (
    ID                  INT PRIMARY KEY,
    NOME                VARCHAR(80),
    DATA_DE_NASCIMENTO  DATE,
    PESO                DECIMAL(10,2),
    COR                 VARCHAR(80)
);


```

#### Selecione todos os animais
```SQL
SELECT * FROM animais WHERE PESO < 13.1;

```
![Selecione todos os animais](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/efbbd518-2af1-49ab-b815-8b9a3acde738)

#### Selecione todos os animais que pesam menos que 13.1
```SQL
SELECT * FROM animais WHERE YEAR(DATA_DE_NASCIMENTO) = 2015 AND MONTH(DATA_DE_NASCIMENTO) BETWEEN 2 AND 12;

```
![Seleciona todos os animais que pesam menos que 13 1](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/d9812bb2-705f-4b8e-affb-2bacc282b640)

#### Selecione todos nasceram entre fevereiro e dezembro de 2015
```SQL
SELECT * FROM animais WHERE YEAR(DATA_DE_NASCIMENTO) = 2015 AND MONTH(DATA_DE_NASCIMENTO) BETWEEN 2 AND 12;

```
![Seleciona todos que nasceram entre fevereiro e dezembro de 2015](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/6ff75ea8-dfad-494d-89dd-22f1ce5daacc)

#### Selecione todos os animais brancos que pesam menos que 15.0
```SQL
SELECT * FROM animais WHERE COR = 'branco' AND PESO < 15.0;

```
![Seleciona todos os animais brancos que pesam menos que 15 0](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/28537119-1b9a-46db-98e6-a1f347090ad0)

#### Selecione nome, cor e peso de todos cujo nome comece com ’B’
```SQL
SELECT NOME, COR, PESO FROM animais WHERE NOME LIKE 'B%';

```
![Seleciona nome, cor e peso de todos cujo nome comece com 'B'](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/7beeba3f-aa19-4dea-b3a6-d3cd544bcbcf)

#### Selecione nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja
```SQL
SELECT NOME, COR, PESO FROM animais WHERE COR IN ('vermelho', 'amarelo', 'marrom', 'laranja');

```
![Seleciona nome, cor e peso de todos com cor vermelha, amarela, marrom e laranj](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/f823e93e-3d6d-4fb2-a5b7-a842f292dc4b)

#### Selecione nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens
```SQL
SELECT NOME, COR, DATA_DE_NASCIMENTO, PESO FROM animais ORDER BY DATA_DE_NASCIMENTO DESC;

```
![Seleciona nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/4f4dee98-dda2-4f78-9bcb-cdad8deeca41)

#### Selecione todos os animais cujo nome comece com 'C' e não sejam brancos
```SQL
SELECT * FROM animais WHERE NOME LIKE 'c%' AND COR != 'branco';

```
![Seleciona todos os animais cujo nome comece com 'C' e não sejam brancos](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/5897297e-e5a3-45bb-baf9-589887d00c0b)

#### Selecione todos os animais cujo nome contenha 'ba'
```SQL
SELECT * FROM animais WHERE NOME LIKE '%ba%';

```
![Seleciona todos os animais cujo nome contenha 'ba'](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/b46e52aa-701b-4ada-9f13-0ecbd8649333)

#### Selecione todos os animais com peso entre 13.0 à 15.0
```SQL
SELECT * FROM animais WHERE PESO BETWEEN 13.0 AND 15.0;

```

![Seleciona todos os animais com peso entre 13 0 e 15 0](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/4f7677f5-c995-4072-a4a6-cb8ccc063116)

#### Selecione todos os animais que o peso não seja maior que 30, com cor amarelo ou roxo e nascidos depois de 2012
```SQL
SELECT * FROM animais WHERE PESO <= 30 AND (COR = 'amarelo' OR COR = 'roxo') AND YEAR(DATA_DE_NASCIMENTO) > 2012;


```

![Seleciona todos os animais que o peso não seja maior que 30, com cor amarela ou roxa e nascidos depois de 2012](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/87b72331-3446-46da-a732-90822a74ac32)



# ETAPA 2

## 1)crie um banco de dados para armazenar dados de Animais e Espécies. Um animal tem seu nome, data_nasc e peso. Uma espécie tem um nome e uma descrição.
```SQL
create table animal(
Nome varchar(50),
data_nasc date, 
peso decimal(10,02)
);


 create table especie(
 Nome varchar(90),
 Descricao text
 );

```
## Faça a modelagem relacional, DER.

![Captura de tela 2023-10-30 234025](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/d648f2e5-f8c1-4323-8a7e-6f6632972829)

## Insira pelo menos 8 animais e 3 espécies.
```SQL
insert into animal (Nome, data_nasc, peso) values ('Bailey', '2023-01-23', 10.2);
insert into animal (Nome, data_nasc, peso) values ('Lili', '2022-02-25', 09.2);
insert into animal (Nome, data_nasc, peso) values ('Bumba', '2021-01-24', 11.02);
insert into animal (Nome, data_nasc, peso) values ('Milk ', '2022-09-05', 25.09);
insert into animal (Nome, data_nasc, peso) values ('Leão', '2015-03-12', 18.5);
insert into animal (Nome, data_nasc, peso) values ('Elefante', '2010-07-25', 45.75);
insert into animal (Nome, data_nasc, peso) values ('Girafa', '2018-11-02', 12.25);
insert into animal (Nome, data_nasc, peso) values ('Escobar', '2021-06-09', 10.2);

insert into especie (Nome, Descricao) values ('Biver', 'Cachorro de porte pequeno');
insert into especie (Nome, Descricao) values ('gato', 'Femea, calma');
insert into especie (Nome, Descricao) values ('Vira lata', 'Cachorro de porte medio achado em rua');
insert into especie (Nome, Descricao) values ('Macaco', 'De uma especie calma, para educar em casa');
insert into especie (Nome, Descricao) values ('Gato', 'Nome dato por sua cor laranja');
insert into especie (Nome, Descricao) values ('Cachorro', 'De grande porte');
insert into especie (Nome, Descricao) values ('Cachorro', 'Cachorro de porte grande e alto');
insert into especie (Nome, Descricao) values ('Cobra', 'CObra domesticada');

```
## 2)Crie um banco de dados para registrar dados de Produtos e Marcas. Um produto deve ter nome, preço de custo, preço de venda, data de validade e marca. Uma marca deve ter, nome, site oficial e telefone.
```SQL
CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco_custo DECIMAL(10, 2) NOT NULL,
    preco_venda DECIMAL(10, 2) NOT NULL,
    data_validade DATE NOT NULL,
    marca VARCHAR(255) NOT NULL
);


CREATE TABLE Marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    site_oficial VARCHAR(255),
    telefone VARCHAR(20)
);

```
## Faça a modelagem relacional, DER

![Captura de tela 2023-10-30 234109](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/9c65d757-f9c8-4f32-bee4-952447140c8a)


## Insira pelo menos 8 Produtos e 3 Marcas.
```SQL

INSERT INTO Produtos (nome, preco_custo, preco_venda, data_validade, marca) VALUES
    ('Camiseta', 15.99, 29.99, '2023-12-31', 'Nike'),
    ('Notebook', 600.00, 999.99, '2024-06-30', 'Dell'),
    ('Celular', 200.00, 399.99, '2024-04-15', 'Samsung'),
    ('Tênis', 40.00, 79.99, '2023-12-31', 'Adidas'),
    ('Máquina de Café', 30.00, 59.99, '2024-02-28', 'Breville'),
    ('Tablet', 120.00, 249.99, '2024-03-15', 'Apple'),
    ('Fone de Ouvido', 10.00, 29.99, '2024-01-31', 'Sony'),
    ('Relógio', 50.00, 99.99, '2023-12-31', 'Casio');
    
    INSERT INTO Marcas (nome, site_oficial, telefone) VALUES
    ('Nike', 'https://www.nike.com', '+1 (800) 344-6453'),
    ('Dell', 'https://www.dell.com', '+1 (800) 624-9897'),
    ('Samsung', 'https://www.samsung.com', '+1 (800) 726-7864'),
    ('Adidas', 'https://www.adidas.com', '+1 (800) 982-9337'),
    ('Breville', 'https://www.breville.com', '+1 (866) 273-8455'),
    ('Apple', 'https://www.apple.com', '+1 (800) 692-7753'),
    ('Sony', 'https://www.sony.com', '+1 (239) 245-6361'),
    ('Casio', 'https://www.casio.com', '+1 (800) 435-7732');

```
## Crie um banco de dados para registrar dados de Filmes e Categorias. Um filme tem seu título, sinopse, estudio e categoria. Uma categoria deve ter nome e público alvo.
```SQL
CREATE TABLE Filmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    sinopse TEXT,
    estudio VARCHAR(255),
    categoria VARCHAR(50)
);


CREATE TABLE Categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    publico_alvo VARCHAR(255)
);



```
## Faça a modelagem relacional, DER.

![Captura de tela 2023-10-30 234143](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/917ec873-c8b2-4d3e-9ba1-436b4ea76bed)



## Insira pelo menos 8 Filmes e 3 Categorias.
```SQL

INSERT INTO Filmes (titulo, sinopse, estudio, categoria) VALUES
('Matrix', 'Um hacker descobre uma realidade virtual dominada por máquinas.', 'Warner Bros.', 'Ficção Científica'),
    ('O Senhor dos Anéis', 'Uma jornada épica em um mundo de fantasia.', 'New Line Cinema', 'Fantasia'),
    ('Titanic', 'Um romance a bordo do famoso navio que naufragou.', '20th Century Fox', 'Romance'),
    ('Jurassic Park', 'Dinossauros são trazidos de volta à vida em um parque temático.', 'Universal Pictures', 'Aventura'),
    ('Pulp Fiction', 'Histórias entrelaçadas de crime e redenção.', 'Miramax Films', 'Crime'),
    ('Forrest Gump', 'A vida de um homem comum que presencia eventos históricos.', 'Paramount Pictures', 'Drama'),
    ('Star Wars', 'A saga de uma galáxia muito, muito distante.', 'Lucasfilm', 'Ação'),
    ('E.T. - O Extraterrestre', 'Um garoto faz amizade com um alienígena perdido na Terra.', 'Universal Pictures', 'Família');
    
    INSERT INTO Categorias (nome, publico_alvo) VALUES
    ('Ação', 'Adultos'),
    ('Comédia', 'Todas as idades'),
    ('Drama', 'Adultos'),
    ('Ficção Científica', 'Jovens e adultos'),
    ('Animação', 'Crianças'),
    ('Terror', 'Adultos'),
    ('Romance', 'Jovens e adultos'),
    ('Documentário', 'Todas as idades');

```
