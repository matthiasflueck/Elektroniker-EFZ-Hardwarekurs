# Modul 13 – Analoge Signalaufbereitung und Sensorik

[← Vorheriges Modul](../12-operationsverstaerker/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../14-digitaltechnik/README.md)

## Worum geht es?

Ein Sensor liefert selten unmittelbar ein robustes ADC-Signal. In diesem Modul entsteht deshalb die vollständige analoge Kette: Erregung, Referenz, Brücke, Verstärkung, Filter, Schutz, Multiplexer und ADC-Anschluss. Im Mittelpunkt stehen reale Signalbereiche, Common Mode, Headroom, Fehlerbudget und Einschwingzeit.

Die Lektionen beginnen jeweils mit der Funktion im Gesamtsystem. Danach folgen Schaltung, Formel, Grenzen und Messnachweis. Projekt A wird bis zu einer praktisch prüfbaren Sensormesskette weitergeführt.

## Lernpfad

1. [13.1 – Konstantstromquellen](01-konstantstromquellen.md)
2. [13.2 – Referenzspannungen](02-referenzspannungen.md)
3. [13.3 – Brückenschaltungen und Wheatstone-Brücke](03-brueckenschaltungen-und-wheatstone-bruecke.md)
4. [13.4 – Sensorsignalaufbereitung](04-sensorsignalaufbereitung.md)
5. [13.5 – Aktive Filter](05-aktive-filter.md)
6. [13.6 – Pegelanpassung und Schutz](06-pegelanpassung-und-schutz.md)
7. [13.7 – Analogschalter und vollständige Messkette](07-analogschalter-und-vollstaendige-messkette.md)

## Üben und Anwenden

- [Übungen Modul 13](../uebungen/modul-13.md)
- [Separate Lösungen](../loesungen/modul-13-loesungen.md)
- [Praxis – Analoges Sensorsystem entwickeln](../praxis/modul-13.md)
- [Projekt A – Analoge Sensormesskette](../projekte/projekt-a-sensormesskette.md)

## Hardware ↔ Firmware

Der ADC-Code wird konsequent bis zu Sensor, Referenz und realem Knoten zurückverfolgt. Firmware setzt Multiplexer, Wartezeit und Diagnosegrenzen; Hardware bestimmt Signalbereich, Schutz, Rauschen und Einschwingen. Programmierdetails bleiben im [STM32-Programmierkurs](https://github.com/matthiasflueck/STM32-Programmierkurs).

## Bezug Bildungsplan 2026

Schwerpunkte: `a1–a3`, `b1`, `b4`, `b5`, `c1–c2`; konkrete Nachweise stehen in der [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
