USE persoane.dbf

INSERT INTO persoane.dbf (cnp, nume, data, cod);
	VALUES ('2940712345678', 'Laura Neagu', {^1994/06/17}, 123456)
LIST ALL

x = 0
COUNT TO x FOR (SUBSTR(cnp, 1, 1) = '2' OR SUBSTR(cnp, 1, 1) = '6')
?x

INPUT 'An: ' to y
LIST FIELDS nume, cod FOR YEAR(data) = y

CLOSE ALL
