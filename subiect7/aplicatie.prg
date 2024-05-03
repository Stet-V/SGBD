USE produse.dbf

INPUT 'Cod produs: ' TO a
ACCEPT 'Denumire produs: ' TO b
ACCEPT 'Unitate de masura: ' TO c
INPUT 'Cantitate: ' TO d
INPUT 'Pret: ' TO e
INSERT INTO produse.dbf (cod, denumire, unitate, cantitate, pret) VALUES (a, b, c, d, e)
BROWSE

INPUT 'Limita inferioara: ' to x
INPUT 'Limita superioara: ' to y
BROWSE FOR cantitate >= x AND cantitate <= y

SUM pret * cantitate TO z
?'Valoarea stocului: ', z

CLOSE ALL