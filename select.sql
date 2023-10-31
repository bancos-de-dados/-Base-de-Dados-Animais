-- Seleciona todos os animais.
SELECT * FROM animais;


-- Seleciona todos os animais que pesam menos que 13.1.
SELECT * FROM animais WHERE PESO < 13.1;

-- Seleciona todos que nasceram entre fevereiro e dezembro de 2015.
SELECT * FROM animais WHERE YEAR(DATA_DE_NASCIMENTO) = 2015 AND MONTH(DATA_DE_NASCIMENTO) BETWEEN 2 AND 12;

-- Seleciona todos os animais brancos que pesam menos que 15.0.
SELECT * FROM animais WHERE COR = 'branco' AND PESO < 15.0;

-- Seleciona nome, cor e peso de todos cujo nome comece com 'B'.
SELECT NOME, COR, PESO FROM animais WHERE NOME LIKE 'B%';

-- Seleciona nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja.
SELECT NOME, COR, PESO FROM animais WHERE COR IN ('vermelho', 'amarelo', 'marrom', 'laranja');

-- Seleciona nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens.
SELECT NOME, COR, DATA_DE_NASCIMENTO, PESO FROM animais ORDER BY DATA_DE_NASCIMENTO DESC;

-- Seleciona todos os animais cujo nome comece com 'C' e não sejam brancos.
SELECT * FROM animais WHERE NOME LIKE 'c%' AND COR != 'branco';

-- Seleciona todos os animais cujo nome contenha 'ba'.
SELECT * FROM animais WHERE NOME LIKE '%ba%';

-- Seleciona todos os animais com peso entre 13.0 e 15.0.
SELECT * FROM animais WHERE PESO BETWEEN 13.0 AND 15.0;

-- Seleciona todos os animais que o peso não seja maior que 30, com cor amarela ou roxa e nascidos depois de 2012.
SELECT * FROM animais WHERE PESO <= 30 AND (COR = 'amarelo' OR COR = 'roxo') AND YEAR(DATA_DE_NASCIMENTO) > 2012;
