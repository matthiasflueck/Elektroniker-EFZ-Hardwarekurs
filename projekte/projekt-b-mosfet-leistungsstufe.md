# Projekt B – Mikrocontroller-gesteuerte MOSFET-Leistungsstufe

[← Projektübersicht](README.md) · [Kursübersicht](../README.md)

## Systemkette

```text
MCU/Logik → Gate-Ansteuerung → MOSFET → Last; ergänzt um Schutz, Freilauf, Strommessung, Temperatur und PWM
```

## Module

06, 11, 15–21, 26–27

## Meilenstein nach Modul 06

- induktive Last mit Nennstrom, Spulenwiderstand und gespeicherter Energie beschreiben
- Strompfad im eingeschalteten Zustand und beim Abschalten vollständig einzeichnen
- Freilaufpfad dimensionieren und Polarität von D1 begründen
- erwartete Abschaltspannung für Diode und kontrollierte höhere Klemmung qualitativ vergleichen
- Messpunkte, Massebezug, Strombegrenzung und sichere Oszilloskopmessung planen

## Meilenstein nach Modul 11

- N-Kanal-MOSFET anhand von VDS, ID, RDS(on), Gate Charge, SOA und thermischen Grenzwerten auswählen
- nachweisen, dass der angegebene RDS(on)-Wert zur tatsächlich verfügbaren Gate-Spannung passt und VGS(th) nicht als Durchsteuerbedingung verwenden
- Leitverluste, vereinfachte Schaltverluste und Sperrschichttemperatur für Nennlast und Grenzfall abschätzen
- Gate-Widerstand und Gate-Pulldown begründen; GPIO-Spitzenstrom und gewünschte Schaltzeit gegeneinander abwägen
- Gate-Source- und Drain-Source-Spannung mit gemeinsamer Zeitbasis messen und Miller-Plateau, Flanken und Überschwingen beurteilen
- Fehlerzustände bei offenem Gate, fehlender Masseverbindung, überhöhter PWM-Frequenz und induktiver Last dokumentieren

## Verbindliche Nachweise

Anforderungen und Akzeptanzkriterien, Blockdiagramm, Berechnungen, Datenblattentscheidungen, genormtes Schema, Gefährdungs- und Messplan, as-built-Stand, Rohdaten, Soll-Ist-Auswertung, Fehler-/Änderungsjournal sowie Abschluss- und Übergabedokumentation.

## Gate-Prinzip

Ein Meilenstein wird erst freigegeben, wenn Sicherheit, technische Plausibilität, Reproduzierbarkeit und Dokumentation geprüft sind. Die konkreten Gates werden mit den jeweiligen Modulblöcken ausgearbeitet.
