--exercicio 1
DO $$
DECLARE
    number INT;
BEGIN
    FOR number IN 1..100 LOOP
        IF number % 2 = 0 THEN
            RAISE NOTICE '%', number;
        END IF;
    END LOOP;
END $$;



--exercicio 1.1

DO
$$
DECLARE
    numero1 NUMERIC := 7;
    numero2 NUMERIC := -5;
    numero3 NUMERIC := 6;
    numero4 NUMERIC := -3.4;
    numero5 NUMERIC := 4.6;
    numero6 NUMERIC := 12;
    total_positivos INT := 0;
BEGIN
    IF numero1 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;
    IF numero2 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;
    IF numero3 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;
    IF numero4 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;
    IF numero5 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;
    IF numero6 > 0 THEN
        total_positivos := total_positivos + 1;
    END IF;

    RAISE NOTICE 'Total de valores positivos: %', total_positivos;
END;
$$


--exercicio 1.3

DO
$$
DECLARE
    x INT := 6;
    y INT := -5;
    soma_impares INT := 0;
BEGIN
    IF x > y THEN
        x := x + y;
        y := x - y;
        x := x - y;
    END IF;

    FOR i IN x..y
    LOOP
        IF i % 2 <> 0 AND i <> x AND i <> y THEN
            soma_impares := soma_impares + i;
        END IF;
    END LOOP;

    RAISE NOTICE 'A soma dos valores ímpares entre % e % é: %', x, y, soma_impares;
END;
$$


--exercicio 1.4

DO $$
DECLARE
    M INTEGER; -- Valor gerado aleatoriamente.
    N INTEGER; -- Valor gerado aleatoriamente.
    soma INTEGER := 0;
    i INTEGER;
BEGIN
    -- Gere os valores iniciais para M e N.
    M := (RANDOM() * 100)::integer; -- Substitua por um valor gerado aleatoriamente.
    N := (RANDOM() * 100)::integer; -- Substitua por um valor gerado aleatoriamente.
	
	RAISE NOTICE 'Os números gerados aleatoriamente são N=% e M=%', N, M;

    IF M < N THEN
        FOR i IN M..N LOOP
            RAISE NOTICE '%', i;
            soma := soma + i;
        END LOOP;
    ELSE 
        FOR i IN N..M LOOP
            RAISE NOTICE '%', i;
            soma := soma + i;
        END LOOP;
    END IF;

    RAISE NOTICE 'Soma=%', soma;
END $$;



--1.5.  Faça um programa que calcule o determinante de uma matriz quadrada de ordem 3
-- utilizando a regra de Sarrus.
-- Preencha a matriz com valores inteiros aleatórios no intervalo de 1 a 12.
DO $$
DECLARE
    -- Criar uma matriz 3x3 com valores aleatórios entre 1 e 12
    matriz INTEGER[][] := ARRAY[
        ARRAY[random() * 11 + 1, random() * 11 + 1, random() * 11 + 1],
        ARRAY[random() * 11 + 1, random() * 11 + 1, random() * 11 + 1],
        ARRAY[random() * 11 + 1, random() * 11 + 1, random() * 11 + 1]
    ];
    -- Inicializar as variáveis para armazenar as somas das diagonais
    soma_esq INTEGER := 0;
    soma_dir INTEGER := 0;
    -- Inicializar a variável para armazenar o determinante
    det INTEGER := 0;
BEGIN
    -- Mostrar a matriz gerada
    RAISE NOTICE 'Matriz: %', matriz;
    
    -- Calcular a soma das diagonais da esquerda para a direita
    soma_esq := matriz[1][1] * matriz[2][2] * matriz[3][3] +
                matriz[1][2] * matriz[2][3] * matriz[3][1] +
                matriz[1][3] * matriz[2][1] * matriz[3][2];
    
    -- Calcular a soma das diagonais da direita para a esquerda
    soma_dir := matriz[1][3] * matriz[2][2] * matriz[3][1] +
                matriz[1][1] * matriz[2][3] * matriz[3][2] +
                matriz[1][2] * matriz[2][1] * matriz[3][3];
    
    -- Calcular o determinante como a diferença entre as somas
    det := soma_esq - soma_dir;
    
    -- Mostrar o resultado
    RAISE NOTICE 'Determinante: %', det;
END $$;


