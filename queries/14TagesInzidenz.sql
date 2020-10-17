SELECT B.GKZ, C.Bezirk, C.Bundesland, C.Artikel, (CAST(Anzahl_neu AS SIGNED) - CAST(Anzahl_alt AS SIGNED)) AS Differenz_Anzahl, ROUND(Inzidenz_neu - Inzidenz_alt, 1) AS Differenz_Inzidenz, A.Timestamp AS Timestamp_Alt, B.Timestamp AS Timestamp_Neu, TIMESTAMPDIFF(DAY, A.Timestamp, B.Timestamp) AS Intervall FROM

( SELECT GKZ, Anzahl as Anzahl_alt, Anzahl_Inzidenz AS Inzidenz_alt, Timestamp FROM Bezirksinfektionen

WHERE Timestamp =

(SELECT MIN(Timestamp) FROM Bezirksinfektionen WHERE Timestamp >= DATE_SUB((SELECT MAX(Timestamp) FROM Bezirksinfektionen), INTERVAL 14 DAY)) ) A

RIGHT JOIN
(SELECT GKZ, Anzahl AS Anzahl_neu, Anzahl_Inzidenz AS Inzidenz_neu, Timestamp

FROM Bezirksinfektionen
  WHERE Timestamp = ( SELECT MAX(Timestamp) FROM Bezirksinfektionen)) B
ON A.GKZ = B.GKZ

INNER JOIN
(SELECT DISTINCT Bezirke.GKZ, Bezirk, Bundesländer.Bundesland, Artikel
FROM Bezirke
INNER JOIN Bezirksinfektionen ON Bezirke.GKZ = Bezirksinfektionen.GKZ
INNER JOIN Bundesländer ON Bezirke.Bundesland = Bundesländer.GKZ) C
ON B.GKZ = C.GKZ

ORDER BY Differenz_Inzidenz DESC
