USE colective.dbf

x = 0
COUNT TO x FOR elevi = 30
?'Numarul de clase cu un efectiv de exact 30 de elevi: ', x
BROWSE for elevi = 30

ACCEPT 'Nume: ' to y
BROWSE FOR diriginte = y

SCAN
	REPLACE elevi WITH elevi + 3 FOR SUBSTR(clasa, 1, 2)='IX'
ENDSCAN
BROWSE

CLOSE ALL