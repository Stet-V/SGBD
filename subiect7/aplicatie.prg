USE produse.dbf

INSERT INTO produse.dbf (cod, denumire, unitate, cantitate, pret);
	VALUES (45663, 'ciocolata', 'kg', 30, 3)
LIST ALL

INPUT 'Limita inferioara: ' to x
INPUT 'Limita superioara: ' to y
LIST ALL FOR cantitate >= x AND cantitate <= y

SUM pret * cantitate TO z

CLOSE ALL