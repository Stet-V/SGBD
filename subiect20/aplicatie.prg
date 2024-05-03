USE firme.dbf

ACCEPT 'Denumirea firmei: ' TO a
ACCEPT 'Data infintarii: ' TO b
ACCEPT 'Tipul firmei: ' TO c
INPUT 'Capitalul social: ' TO d
INPUT 'Valoarea ofertei curenta: ' TO e
INSERT INTO firme.dbf (denumire, data, tip, capital, valoare) VALUES (a, CTOD(b), c, d, e)
BROWSE

INPUT 'Prag maxim: ' to x
DELETE FOR valoare > x
PACK
BROWSE

CALCULATE MIN(valoare) TO y
BROWSE FOR valoare = y

CLOSE ALL