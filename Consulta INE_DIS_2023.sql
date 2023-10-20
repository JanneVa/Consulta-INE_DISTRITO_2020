--Actualizamos el valor de la columna 'NOM_ENT' a 'San Luis Potosí' donde 'NOM_ENT' comienza con 'San Luis Potosí'
UPDATE INE_DISTRITO_2020
SET NOM_ENT= 'San Luis Potosí'
WHERE NOM_ENT LIKE 'San Luis Potos%';

--Seleccionamos todos los campos donde 'NOM_ENT' es 'San Luis Potosí'
SELECT * FROM INE_DISTRITO_2020
WHERE NOT_ENT= 'San Luis Potosí';

-- Seleccionamos valores únicos de la columna 'NOM_ENT'
SELECT DISTINCT NOM_ENT FROM INE_DISTRITO_2020
SELECT * FROM INE_DISTRITO_2020
SELECT DISTINCT COMPLEJIDA FROM 

-- Actualizamos el valor de 'COMPLEJIDA' a 'Concentración Media' donde 'COMPLEJIDA' comienza con 'Concentraci'
UPDATE INE_DISTRITO_2020
SET COMPLEJIDA = 'Concentración Media'
WHERE COMPLEJIDA LIKE 'Concentraci%';

--Listamos los valores de la columna complejida
SELECT NOM:ENT FROM INE_Distrito_2020
WHERE NOM_ENT ='Queretaro';
Altamente concentrado 1
Altamente concentrado 2
Concentración media
Concentrado 1
Concentrado 2
Disperso 1
Disperso 2
Muy disperso 1
Muy disperso 2;

--Covertimos los valores de la columna 'complejida' a columnas dummies.
ALTER TABLE dbo.INE_Distrito_2020
ADD ALT_CON_1 INT,ALT_CON_2 INT, CON_MED INT, CON1 INT, CON2 INT, DIS1 INT, DIS2 INT, M_DIST1 INT, M_DIS2 INT;

--Convertimos el valor de las columnas dummies a 1 si tiene información y cero si no la tiene
UPDATE dbo.INE_DISTRITO_2020
SET 
    ALT_CON_1 = CASE WHEN COMPLEJIDA = 'Altamente concentrado 1' THEN 1 ELSE 0 END,
    ALT_CON_2 = CASE WHEN COMPLEJIDA = 'Altamente concentrado 2' THEN 1 ELSE 0 END,
    CON_MED = CASE WHEN COMPLEJIDA = 'Concentración media' THEN 1 ELSE 0 END,
    CON1 = CASE WHEN COMPLEJIDA = 'Concentrado 1' THEN 1 ELSE 0 END,
    CON2 = CASE WHEN COMPLEJIDA = 'Concentrado 2' THEN 1 ELSE 0 END,
    DIS1 = CASE WHEN COMPLEJIDA = 'Disperso 1' THEN 1 ELSE 0 END,
    DIS2 = CASE WHEN COMPLEJIDA = 'Disperso 2' THEN 1 ELSE 0 END,
    M_DIST1 = CASE WHEN COMPLEJIDA = 'Muy disperso 1' THEN 1 ELSE 0 END,
    M_DIS2 = CASE WHEN COMPLEJIDA = 'Muy disperso 2' THEN 1 ELSE 0 END;

