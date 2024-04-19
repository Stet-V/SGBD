USE tari.dbf

INSERT INTO tari.dbf (denumire, continent, capitala, locuitori);
	VALUES ('Australia', 'Australia', 'Canberra', 25000000)
LIST ALL

ACCEPT 'Continent: ' to x
y = 0
COUNT TO y FOR continent = x
?y

SORT TO tari1.dbf ON locuitori /D
USE tari1.dbf
LIST FIELDS denumire, capitala

CLOSE ALL