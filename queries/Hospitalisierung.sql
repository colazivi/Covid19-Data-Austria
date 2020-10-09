SELECT DATE(Timestamp) AS Datum, TIME(Timestamp) AS Uhrzeit, GesNBVerf + GesNBBel AS "Gesamte Normalbetten", GesIBVerf + GesIBBel AS "Gesamte Intensivbetten", GesNBVerf AS "Verfügbare Normalbetten", GesIBVerf AS "Verfügbare Intensivbetten", GesNBBel AS "Belegte Normalbetten", GesIBBel AS "Belegte Intensivbetten", 100*GesNBBel/(GesNBBel+GesNBVerf) AS "Auslastung Normalbetten (%)", 100*GesIBBel/(GesIBBel+GesIBVerf) AS "Auslastung Intensivbetten (%)"

FROM AllgemeinDaten

ORDER BY Timestamp
