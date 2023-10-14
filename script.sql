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







