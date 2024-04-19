USE firme.dbf

INSERT INTO firme.dbf (denumire, data, tip, capital, valoare);
	VALUES ('Firma 11', {^2019/08/21}, 'S.R.L.', 220000, 85000)
LIST ALL

INPUT 'Prag maxim: ' to x
DELETE FOR valoare > x
PACK
LIST ALL

CALCULATE MIN(valoare) TO y
LIST ALL FOR valoare = y

CLOSE ALL