USE colective.dbf

x = 0
COUNT TO x FOR elevi = 30
?x
LIST ALL for elevi = 30

ACCEPT 'Nume: ' to y
LIST ALL FOR diriginte = y

SCAN
	replace elevi WITH elevi + 3 FOR SUBSTR(clasa, 1, 2)='IX'
ENDSCAN
LIST ALL

CLOSE ALL