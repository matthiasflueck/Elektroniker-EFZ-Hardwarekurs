# 00.6 – Technische Dokumentation und Versionsverwaltung

[← Zurück](05-messstrategie-messprotokoll-und-rueckverfolgbarkeit.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-hardware-und-firmware-als-gesamtsystem.md)

## Lernziele

Nach dieser Lektion kannst du die beschriebenen Regeln auf einen realen Laborauftrag anwenden, Risiken und Freigabekriterien begründen sowie deine Arbeit so dokumentieren, dass eine zweite Person sie sicher nachvollziehen kann.

## 1. Dokumente haben einen Lebenszyklus

Schema, Stückliste, Aufbau, Firmware und Prüfplan müssen denselben Entwicklungsstand beschreiben. Eine typische Kennzeichnung besteht aus Dokumentnummer, Revision, Status, Datum und verantwortlicher Person. „final_final2“ ist keine Revisionierung.

Sinnvolle Status sind beispielsweise:

- **Entwurf:** noch nicht freigegeben,
- **zur Prüfung:** bereit für Review,
- **freigegeben:** definierter, verwendbarer Stand,
- **ungültig:** durch neuere Revision ersetzt.

## 2. As-designed, as-built, as-tested

Drei Stände dürfen nicht verwechselt werden:

- **as-designed:** so ist die Schaltung geplant,
- **as-built:** so wurde das konkrete Exemplar tatsächlich aufgebaut,
- **as-tested:** genau dieser Stand wurde mit genau diesen Bedingungen geprüft.

Ein Drahtpatch oder ausgetauschtes Bauteil wird vor der Abnahmemessung in Schema, Stückliste oder Änderungsjournal nachgeführt.

## 3. Gute Commit- und Änderungsnachrichten

Eine Änderung erklärt Wirkung und Grund: „R17 von 10 kΩ auf 4.7 kΩ ändern, damit I²C-Anstiegszeit bei 200 pF unter 1 µs bleibt.“ Eine Nachricht wie „fix“ verliert die technische Entscheidung.

Versionierung ersetzt kein Review. Sie macht aber nachvollziehbar, wer welche Änderung wann eingebracht hat und ermöglicht den Vergleich mit einem früheren funktionierenden Stand.

## 4. Minimales Änderungsjournal

| Revision | Änderung | Grund | Nachweis |
|---|---|---|---|
| A | Erstaufbau | Ausgangsstand | Sichtprüfung |
| B | R17 angepasst | Anstiegszeit zu langsam | Oszillogramm M-017 |

## Hardware ↔ Firmware

Eine Hardware-Revision kann andere Pinbelegung, Polarität, ADC-Skalierung oder Taktquelle verlangen. Firmware muss die kompatiblen Boardrevisionen erkennen oder eindeutig dokumentieren. Verweise im [STM32-Kurs zur professionellen Firmware-Architektur](https://github.com/matthiasflueck/STM32-Programmierkurs/tree/main/15-firmware-architektur) ergänzen die Softwareseite.

## Praxisregel

Freigegeben wird nicht die Datei, die gerade geöffnet ist, sondern ein eindeutig identifizierter, geprüfter Stand.


## Bildungsplan 2026

Dieses Thema unterstützt `a1` (Anforderungen erfassen), `d1` (Aufträge planen), `d2` (Verlauf kontrollieren) und `d3` (Ergebnisse auswerten). Sicherheits-, Qualitäts- und Dokumentationsregeln wirken zusätzlich in allen Hardwarekompetenzen `b1–b5`.

## Kurzcheck

1. Welche Information muss vor dem Einschalten feststehen?
2. Woran erkennt eine zweite Person den tatsächlich geprüften Stand?
3. Welche Hardwareeigenschaft kann sich in der Firmware als scheinbar zufälliger Fehler zeigen?
