USE biblioteca.dbf

INSERT INTO biblioteca.dbf (titlu, autor, gen, volume);
	VALUES ('Insula comorii', 'Robert Louis Stevenson', 'proza', 1)
LIST ALL

ACCEPT 'Gen literar: ' to x
SORT TO biblioteca1.dbf ON titlu
USE biblioteca1.dbf
LIST ALL FOR gen = x

y = 0
COUNT TO y FOR volume > 5
?y

CLOSE ALL
