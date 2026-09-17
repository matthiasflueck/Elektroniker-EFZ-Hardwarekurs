# Projekt A – Analoge Sensormesskette

[← Projektübersicht](README.md) · [Kursübersicht](../README.md)

## Systemkette

```text
Sensor → Messbrücke/Spannungsteiler → OPV → Filter → 0–3.3-V-Signal → ADC → Firmware
```

## Module

03–05, 08, 12–13, 15, 17–19, 22–23, 27

## Meilenstein nach Modul 04

- Sensorprinzip und konkreten NTC-Typ dokumentieren
- Kennlinie mit Messbedingungen aufnehmen und gegen Herstellerdaten prüfen
- Spannungsteiler inklusive Last, Toleranz, Eigenerwärmung und ADC-Bereich dimensionieren
- Rohdaten, Diagramm und erste Diagnosegrenzen für Unterbruch/Kurzschluss festhalten
- Hardware-/Firmware-Schnittstelle mit Teilerorientierung, Referenz und Umrechnungsweg beschreiben

## Meilenstein nach Modul 08

- Entkopplung des Sensorknotens und der späteren Verstärkerstufe begründen
- zulässige Filterbandbreite aus Messdynamik und Störfrequenzen ableiten
- RC-Tiefpass mit Toleranzen dimensionieren und seinen Bode-Verlauf vorhersagen
- Frequenzgang messen und Grenzfrequenz sowie Phasenlage mit der Rechnung vergleichen
- Einfluss von Quellimpedanz, ADC-Abtastung und Firmware-Abtastrate dokumentieren

## Verbindliche Nachweise

Anforderungen und Akzeptanzkriterien, Blockdiagramm, Berechnungen, Datenblattentscheidungen, genormtes Schema, Gefährdungs- und Messplan, as-built-Stand, Rohdaten, Soll-Ist-Auswertung, Fehler-/Änderungsjournal sowie Abschluss- und Übergabedokumentation.

## Gate-Prinzip

Ein Meilenstein wird erst freigegeben, wenn Sicherheit, technische Plausibilität, Reproduzierbarkeit und Dokumentation geprüft sind. Die konkreten Gates werden mit den jeweiligen Modulblöcken ausgearbeitet.
