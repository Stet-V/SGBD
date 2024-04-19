USE scoli.dbf

INSERT INTO scoli.dbf (nume, localitate, nivel, clase, elevi);
	VALUES ('Scoala Gimnaziala Nr. 11', 'Craiova', 'gimnazial', 14, 320)
LIST ALL

COPY TO scoli1.dbf FOR RECNO() <= 3
USE scoli1.dbf
LIST ALL

USE scoli.dbf
ACCEPT 'Nivel: ' to x
SUM elevi TO y FOR nivel = x
?y

CLOSE ALL