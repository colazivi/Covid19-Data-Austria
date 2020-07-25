SELECT DATE(A.Timestamp) AS Datum, TIME(A.Timestamp) AS Uhrzeit, A.Prozent AS "männlich", B.Prozent AS "weiblich"

FROM Geschlechtsverteilung A
INNER JOIN Geschlechtsverteilung B ON A.Timestamp=B.Timestamp AND B.Geschlecht=2

WHERE A.Geschlecht=1
ORDER BY Datum, Uhrzeit;
