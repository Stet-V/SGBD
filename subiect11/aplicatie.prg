USE impozite.dbf

INSERT INTO impozite.dbf (nume, locuinta, impozit, achitat);
	VALUES ('Ioana Tudor', 'casa', 2901, 1301)
LIST ALL

SUM achitat TO x
?x

SORT TO impozite1.dbf ON nume
USE impozite1.dbf
LIST ALL for locuinta = 'casa' OR locuinta = 'vila'

CLOSE ALL