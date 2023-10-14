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




