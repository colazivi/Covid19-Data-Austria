SELECT Zeitpunkt, Ampel.GKZ, Ampelregionen.Region AS "Betroffene Ebene", Warnstufe, Bundesländer.Bundesland, Bezirke.Bezirk FROM Ampel

LEFT JOIN Ampelregionen
	ON Ampel.Region=Ampelregionen.id
LEFT JOIN Bezirke
	ON Ampel.GKZ=Bezirke.GKZ
LEFT JOIN Bundesländer
	ON Ampel.GKZ=Bundesländer.GKZ OR Bezirke.Bundesland=Bundesländer.GKZ

WHERE Zeitpunkt = ( SELECT MAX(Zeitpunkt) FROM Ampel ) ORDER BY Zeitpunkt, Ampel.Region, Warnstufe DESC
