SELECT DATE(A.Timestamp) AS Datum, TIME(A.Timestamp) AS Uhrzeit, A.Anzahl AS "<5", B.Anzahl AS "5-14", C.Anzahl AS "15-24", D.Anzahl AS "25-34", E.Anzahl AS "35-44", F.Anzahl AS "45-54", G.Anzahl AS "55-64", H.Anzahl AS "65-74", I.Anzahl AS "75-84", J.Anzahl AS ">85" FROM Altersverteilung A
INNER JOIN Altersverteilung B ON A.Timestamp=B.Timestamp AND B.Altersgruppe=2
INNER JOIN Altersverteilung C ON A.Timestamp=C.Timestamp AND C.Altersgruppe=3
INNER JOIN Altersverteilung D ON A.Timestamp=D.Timestamp AND D.Altersgruppe=4
INNER JOIN Altersverteilung E ON A.Timestamp=E.Timestamp AND E.Altersgruppe=5
INNER JOIN Altersverteilung F ON A.Timestamp=F.Timestamp AND F.Altersgruppe=6
INNER JOIN Altersverteilung G ON A.Timestamp=G.Timestamp AND G.Altersgruppe=7
INNER JOIN Altersverteilung H ON A.Timestamp=H.Timestamp AND H.Altersgruppe=8
INNER JOIN Altersverteilung I ON A.Timestamp=I.Timestamp AND I.Altersgruppe=9
INNER JOIN Altersverteilung J ON A.Timestamp=J.Timestamp AND J.Altersgruppe=10

WHERE A.Altersgruppe=1 ORDER BY A.Timestamp;
