
#  Base de Dados Animais

![OIP](https://github.com/bancos-de-dados/Com-rcio-Eletr-nico/assets/127689567/04d14a04-b832-4024-8f7e-40e38399a9f3)


Você foi designado para criar um sistema de biblioteca. Aqui estão os detalhes adicionais:

### Criação da tabela Comercio Eletronico 

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

# Selecione todos os animais
```SQL
SELECT * FROM animais WHERE PESO < 13.1;

```
![Selecione todos os animais](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/efbbd518-2af1-49ab-b815-8b9a3acde738)

# Selecione todos os animais que pesam menos que 13.1
```SQL
SELECT * FROM animais WHERE YEAR(DATA_DE_NASCIMENTO) = 2015 AND MONTH(DATA_DE_NASCIMENTO) BETWEEN 2 AND 12;

```
![Seleciona todos os animais que pesam menos que 13 1](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/d9812bb2-705f-4b8e-affb-2bacc282b640)

# Selecione todos nasceram entre fevereiro e dezembro de 2015
```SQL
SELECT * FROM animais WHERE YEAR(DATA_DE_NASCIMENTO) = 2015 AND MONTH(DATA_DE_NASCIMENTO) BETWEEN 2 AND 12;

```
![Seleciona todos que nasceram entre fevereiro e dezembro de 2015](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/6ff75ea8-dfad-494d-89dd-22f1ce5daacc)

# Selecione todos os animais brancos que pesam menos que 15.0
```SQL
SELECT * FROM animais WHERE COR = 'branco' AND PESO < 15.0;

```
![Seleciona todos os animais brancos que pesam menos que 15 0](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/28537119-1b9a-46db-98e6-a1f347090ad0)

# Selecione nome, cor e peso de todos cujo nome comece com ’B’
```SQL
SELECT NOME, COR, PESO FROM animais WHERE NOME LIKE 'B%';

```
![Seleciona nome, cor e peso de todos cujo nome comece com 'B'](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/7beeba3f-aa19-4dea-b3a6-d3cd544bcbcf)

# Selecione nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja
```SQL
SELECT NOME, COR, PESO FROM animais WHERE COR IN ('vermelho', 'amarelo', 'marrom', 'laranja');

```
![Seleciona nome, cor e peso de todos com cor vermelha, amarela, marrom e laranj](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/f823e93e-3d6d-4fb2-a5b7-a842f292dc4b)

# Selecione nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens
```SQL
SELECT NOME, COR, DATA_DE_NASCIMENTO, PESO FROM animais ORDER BY DATA_DE_NASCIMENTO DESC;

```
![Seleciona nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/4f4dee98-dda2-4f78-9bcb-cdad8deeca41)

# Selecione todos os animais cujo nome comece com 'C' e não sejam brancos
```SQL
SELECT * FROM animais WHERE NOME LIKE 'c%' AND COR != 'branco';

```
![Seleciona todos os animais cujo nome comece com 'C' e não sejam brancos](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/5897297e-e5a3-45bb-baf9-589887d00c0b)

# Selecione todos os animais cujo nome contenha 'ba'
```SQL
SELECT * FROM animais WHERE NOME LIKE '%ba%';

```
![Seleciona todos os animais cujo nome contenha 'ba'](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/b46e52aa-701b-4ada-9f13-0ecbd8649333)

# Selecione todos os animais com peso entre 13.0 à 15.0
```SQL
SELECT * FROM animais WHERE PESO BETWEEN 13.0 AND 15.0;

```

![Seleciona todos os animais com peso entre 13 0 e 15 0](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/4f7677f5-c995-4072-a4a6-cb8ccc063116)

# Selecione todos os animais que o peso não seja maior que 30, com cor amarelo ou roxo e nascidos depois de 2012
```SQL
SELECT * FROM animais WHERE PESO <= 30 AND (COR = 'amarelo' OR COR = 'roxo') AND YEAR(DATA_DE_NASCIMENTO) > 2012;


```

![Seleciona todos os animais que o peso não seja maior que 30, com cor amarela ou roxa e nascidos depois de 2012](https://github.com/bancos-de-dados/-Base-de-Dados-Animais/assets/127689567/87b72331-3446-46da-a732-90822a74ac32)
