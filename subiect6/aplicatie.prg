USE rezervari.dbf

INSERT INTO rezervari.dbf (numar, loc, data, nopti, nume);
   VALUES (15, 'Casuta', {^2024/04/17}, 20, 'John Smith')
LIST ALL


ACCEPT 'Persoana: ' to x
y = 0
COUNT TO y FOR nume = x AND loc = 'Casuta'
?y

SORT TO rezervari1.dbf ON loc
USE rezervari1.dbf
LIST FIELDS numar FOR data + nopti < DATE()

CLOSE ALL