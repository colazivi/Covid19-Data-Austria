SELECT DATE(A.Timestamp) AS Datum, TIME(A.Timestamp) AS Uhrzeit, A.Genesen AS Burgenland, B.Genesen AS Kärnten, C.Genesen AS Niederösterreich, D.Genesen AS Oberösterreich, E.Genesen AS Salzburg, F.Genesen AS Steiermark, G.Genesen AS Tirol, H.Genesen AS Vorarlberg, I.Genesen AS Wien FROM GenesenTodesfälleBL A INNER JOIN GenesenTodesfälleBL B ON A.Timestamp=B.Timestamp AND B.GKZ=2
INNER JOIN GenesenTodesfälleBL C ON A.Timestamp=C.Timestamp AND C.GKZ=3
INNER JOIN GenesenTodesfälleBL D ON A.Timestamp=D.Timestamp AND D.GKZ=4
INNER JOIN GenesenTodesfälleBL E ON A.Timestamp=E.Timestamp AND E.GKZ=5
INNER JOIN GenesenTodesfälleBL F ON A.Timestamp=F.Timestamp AND F.GKZ=6
INNER JOIN GenesenTodesfälleBL G ON A.Timestamp=G.Timestamp AND G.GKZ=7
INNER JOIN GenesenTodesfälleBL H ON A.Timestamp=H.Timestamp AND H.GKZ=8
INNER JOIN GenesenTodesfälleBL I ON A.Timestamp=I.Timestamp AND I.GKZ=9
WHERE A.GKZ=1 ORDER BY A.Timestamp;
