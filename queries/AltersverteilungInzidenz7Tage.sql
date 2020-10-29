SELECT Alt.Timestamp AS "Zeitpunkt vor 7 Tagen", Neu.Timestamp AS "Aktueller Zeitpunkt", AG.Altersgruppe AS Altersgruppe, (Neu.Anzahl - Alt.Anzahl) AS "Neuinfektionen", ((Neu.Anzahl - Alt.Anzahl) * 100000 / EW.Einwohner) AS "Inzidenz", TIMESTAMPDIFF(DAY, Alt.Timestamp, Neu.Timestamp) AS Intervall FROM

(
(SELECT Timestamp, Altersgruppe, Anzahl FROM Altersverteilung

        WHERE Timestamp = (SELECT MIN(Timestamp) FROM Altersverteilung WHERE Timestamp >= DATE_SUB((SELECT MAX(Timestamp) FROM Altersverteilung), INTERVAL 7 DAY)) ) Alt

INNER JOIN

(SELECT Timestamp, Altersgruppe, Anzahl FROM Altersverteilung

        WHERE Timestamp = ( SELECT MAX(Timestamp) FROM Altersverteilung)) Neu

        ON Alt.Altersgruppe=Neu.Altersgruppe

INNER JOIN
(SELECT Altersgruppe, GruppenID FROM Altersgruppen) AG
        ON AG.GruppenID=Neu.Altersgruppe

INNER JOIN

(SELECT Einwohner, Altersgruppe FROM EinwohnerJeAltersgruppe) EW
        ON EW.Altersgruppe=Neu.Altersgruppe
)

ORDER BY Neu.Altersgruppe
