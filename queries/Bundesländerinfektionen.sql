SELECT DATE(A.Timestamp) AS Datum, TIME(A.Timestamp) AS Uhrzeit, A.Anzahl AS Burgenland, B.Anzahl AS Kärnten, C.Anzahl AS Niederösterreich, D.Anzahl AS Oberösterreich, E.Anzahl AS Salzburg, F.Anzahl AS Steiermark, G.Anzahl AS Tirol, H.Anzahl AS Vorarlberg, I.Anzahl AS Wien FROM Bundesländerinfektionen A

INNER JOIN Bundesländerinfektionen B ON A.Timestamp=B.Timestamp AND B.GKZ=2
INNER JOIN Bundesländerinfektionen C ON A.Timestamp=C.Timestamp AND C.GKZ=3
INNER JOIN Bundesländerinfektionen D ON A.Timestamp=D.Timestamp AND D.GKZ=4
INNER JOIN Bundesländerinfektionen E ON A.Timestamp=E.Timestamp AND E.GKZ=5
INNER JOIN Bundesländerinfektionen F ON A.Timestamp=F.Timestamp AND F.GKZ=6
INNER JOIN Bundesländerinfektionen G ON A.Timestamp=G.Timestamp AND G.GKZ=7
INNER JOIN Bundesländerinfektionen H ON A.Timestamp=H.Timestamp AND H.GKZ=8
INNER JOIN Bundesländerinfektionen I ON A.Timestamp=I.Timestamp AND I.GKZ=9

WHERE A.GKZ=1

ORDER BY Datum, Uhrzeit;
