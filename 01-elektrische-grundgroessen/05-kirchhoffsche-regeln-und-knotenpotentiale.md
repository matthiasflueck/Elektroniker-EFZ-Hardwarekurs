# 01.5 – Kirchhoffsche Regeln und Knotenpotentiale

[← Zurück](04-reihen-und-parallelschaltungen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-reale-quellen-lasten-und-innenwiderstand.md)

## Lernziele

Nach dieser Lektion kannst du die behandelten Grössen mit korrektem Bezug und Vorzeichen beschreiben, typische Schaltungen berechnen, reale Abweichungen einordnen und eine sichere Messung planen.

## 1. Knotenregel

Ladung sammelt sich an einem idealen Knoten im stationären Fall nicht an. Mit vorzeichenbehafteten Strömen:

$$\sum I_k = 0.$$

Man darf alle hineinfliessenden Ströme positiv und alle herausfliessenden negativ wählen — oder umgekehrt. Entscheidend ist Konsistenz.

Beispiel: `I1 = 5 mA` und `I2 = 2 mA` fliessen in den Knoten. Dann muss `I3 = 7 mA` herausfliessen.

## 2. Maschenregel

In einer geschlossenen Masche ist die Summe aller vorzeichenbehafteten Spannungen null:

$$\sum U_k = 0.$$

Für eine Quelle `UQ` und zwei Widerstände gilt `UQ - UR1 - UR2 = 0`. Die Regel ist ein besonders guter Messcheck: Stimmen Teilspannungen innerhalb der Unsicherheit nicht mit der Versorgung überein, sind Messpunkt, Bezug oder Schaltung fraglich.

## 3. Knotenpotential bestimmen

Für einen Knoten `V` zwischen `R1` nach `UQ` und `R2` nach `0 V`:

$$\frac{V-U_Q}{R_1}+\frac{V-0}{R_2}=0.$$

Daraus folgt die Spannungsteilerformel. Das Knotenpotentialverfahren skaliert besser auf grössere Netze und zwingt zu eindeutigen Bezugspunkten.

## 4. Vorzeichen sind Ergebnisse

Wird ein berechneter Strom negativ, war die angenommene Richtung umgekehrt. Die Rechnung ist nicht automatisch falsch. Genau diese Freiheit macht systematische Verfahren robust.

## Hardware ↔ Firmware

Diagnosefirmware kann mehrere Knoten nacheinander messen. Kirchhoff liefert Plausibilitätsbeziehungen zwischen den Kanälen. Ein einzelner ADC-Wert kann plausibel aussehen; die Summe aus Quell- und Lastströmen kann trotzdem einen Sensor- oder Verdrahtungsfehler zeigen.

## Praxisbeispiel

An einer Reihenschaltung werden `UQ = 5.02 V`, `UR1 = 3.01 V` und `UR2 = 2.00 V` gemessen. Die Differenz `5.02 - 3.01 - 2.00 = 0.01 V` ist klein und lässt sich mit Auflösung, Toleranz und zeitlicher Änderung vergleichen.


## Bildungsplan 2026

Primär: `b1` (dimensionieren und Schema verstehen), `b4` (messen und Fehler eingrenzen), `b5` (Anforderungen überprüfen). Die begründete Machbarkeit unterstützt `a3`.

## Kurzcheck

1. Welche Bezugsrichtung oder welcher Bezugspunkt wurde verwendet?
2. Welche Bauteiltoleranz oder Messbeeinflussung ist im realen Aufbau relevant?
3. Ist das Ergebnis hinsichtlich Einheit und Grössenordnung plausibel?
