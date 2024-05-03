USE scoli.dbf

ACCEPT 'Nume: ' TO a
ACCEPT 'Localitate: ' TO b
ACCEPT 'Nivel de invatamant: ' TO c
INPUT 'Numar de clase din unitate: ' TO d
INPUT 'Numar de elevi din unitate: ' TO e
INSERT INTO scoli.dbf (nume, localitate, nivel, clase, elevi) VALUES (a, b, c, d, e)
BROWSE

COPY TO scoli1.dbf FOR RECNO() <= 3
USE scoli1.dbf
BROWSE

USE scoli.dbf
ACCEPT 'Nivel: ' to x
SUM elevi TO y FOR nivel = x
?'Numarul total al elevilor pentru nivelul dat: ', y

CLOSE ALL
