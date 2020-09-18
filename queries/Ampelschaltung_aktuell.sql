SELECT Zeitpunkt, Ampelregionen.Region AS "Betroffene Ebene", Ampel.GKZ, Bundesländer.Bundesland, Bezirke.Bezirk, Gemeinden.Name AS Gemeinde, Warnstufe, Ampelfarben.Farbe FROM Ampel

LEFT JOIN Ampelregionen
	ON Ampel.Region=Ampelregionen.id
LEFT JOIN Gemeinden
	ON Ampel.GKZ=Gemeinden.GKZ
LEFT JOIN Bezirke
	ON Ampel.GKZ=Bezirke.GKZ OR Gemeinden.Bezirk=Bezirke.GKZ
LEFT JOIN Bundesländer
	ON Ampel.GKZ=Bundesländer.GKZ OR Bezirke.Bundesland=Bundesländer.GKZ
INNER JOIN Ampelfarben
	ON Ampelfarben.id=Ampel.Warnstufe

WHERE Zeitpunkt = ( SELECT MAX(Zeitpunkt) FROM Ampel ) ORDER BY Zeitpunkt, Ampel.Region, Warnstufe DESC
