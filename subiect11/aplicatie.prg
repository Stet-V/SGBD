USE impozite.dbf

ACCEPT 'Nume: ' TO a
ACCEPT 'Tip locuinta: ' TO b
INPUT 'Impozit: ' TO c
INPUT 'Impozit achitat: ' TO d
INSERT INTO impozite.dbf (nume, locuinta, impozit, achitat) VALUES (a, b, c, d)
BROWSE

SUM achitat TO x
?'Suma incasata: ', x

SORT TO impozite1.dbf ON nume
USE impozite1.dbf
BROWSE for locuinta = 'casa' OR locuinta = 'vila'

CLOSE ALL