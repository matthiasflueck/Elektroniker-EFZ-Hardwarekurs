# Übungen – Modul 03: Gleichstromnetzwerke und Netzwerkanalyse

[← Modul 03](../03-gleichstromnetzwerke/README.md) · [Übungsübersicht](README.md)

Bearbeite die Aufgaben zuerst ohne Lösungen. Zeichne bei jeder Berechnung ein Schema, benenne Knoten und dokumentiere Einheiten sowie Plausibilitätskontrolle.

## Verständnis und Topologie

1. Drei Widerstände sind optisch nebeneinander gezeichnet. Formuliere die elektrische Bedingung dafür, dass sie wirklich parallel liegen.
2. Erkläre ohne Formel, weshalb der Ersatzwiderstand einer Parallelschaltung kleiner als der kleinste Einzelwiderstand ist.
3. An einem Knoten fliessen 8,2 mA und 1,8 mA hinein. Zwei abfliessende Ströme betragen 4,0 mA und 3,5 mA. Bestimme den dritten Abfluss mit Vorzeichenkonvention.

## Berechnung und Schaltungsanalyse

4. Berechne den Ersatzwiderstand von 220 Ω, 330 Ω und 1,0 kΩ a) in Reihe und b) parallel.
5. Eine 12-V-Quelle speist 1,0 kΩ in Reihe mit der Parallelschaltung aus 2,2 kΩ und 3,3 kΩ. Bestimme Gesamtstrom, alle Knotenspannungen, Zweigströme und Widerstandsleistungen. Prüfe Knoten- und Leistungsbilanz.
6. Dimensioniere einen unbelasteten Spannungsteiler von 15 V auf ungefähr 3,0 V. Der Teilerstrom soll zwischen 100 µA und 200 µA liegen. Wähle E24-Werte und berechne den realen Ausgangswert.
7. Der Teiler aus Aufgabe 6 wird mit 47 kΩ belastet. Berechne die neue Ausgangsspannung und die relative Abweichung gegenüber dem Leerlauf.
8. Ein Strom von 20 mA teilt sich auf 470 Ω, 1,0 kΩ und 2,2 kΩ auf. Berechne die Zweigströme über die Leitwerte und prüfe ihre Summe.

## Reale Quellen und Ersatzschaltungen

9. Eine Quelle zeigt unbelastet 9,10 V. Bei 40 mA Laststrom werden 8,70 V gemessen. Bestimme das lineare Quellenmodell und sage die Klemmenspannung bei 70 mA voraus. Nenne eine Bedingung, unter der die Vorhersage ungültig wird.
10. Ein 10-V-Spannungsteiler aus 18 kΩ oben und 12 kΩ unten soll als Thévenin- und Nortonquelle am Mittelabgriff dargestellt werden. Bestimme alle Ersatzgrössen.

## Messung und Fehlersuche

11. Ein 1:1-Teiler aus zweimal 1 MΩ zeigt mit einem 10-MΩ-Voltmeter an 10 V nur etwa 4,76 V. Erkläre und berechne den Wert.
12. In einer Parallelschaltung ist der gemessene Gesamtstrom kleiner als einer der gemessenen Zweigströme. Formuliere mindestens vier überprüfbare Fehlerhypothesen und eine sinnvolle Prüfreihenfolge.
13. Erstelle ein Messschema für Aufgabe 5. Markiere, wo Spannung direkt und Strom bevorzugt indirekt über einen bekannten Widerstand bestimmt werden kann.

## Hardware ↔ Firmware

14. Ein 12-V-Signal wird mit 100 kΩ oben und 33 kΩ unten auf einen MCU-ADC geführt. Berechne den idealen ADC-Pegel. Diskutiere mindestens vier reale Ursachen, weshalb der digitale Wert abweichen kann.

> [Separate Lösungen](../loesungen/modul-03-loesungen.md)
