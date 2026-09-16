# 00.3 – ESD-Schutz und Umgang mit Baugruppen

[← Zurück](02-gefaehrdungen-schutzmassnahmen-und-sichere-grenzen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-laborarbeitsplatz-ordnung-und-freigaben.md)

## Lernziele

Nach dieser Lektion kannst du die beschriebenen Regeln auf einen realen Laborauftrag anwenden, Risiken und Freigabekriterien begründen sowie deine Arbeit so dokumentieren, dass eine zweite Person sie sicher nachvollziehen kann.

## 1. Warum ESD unsichtbar schädigen kann

Elektrostatische Entladung (ESD) entsteht, wenn sich unterschiedlich geladene Körper annähern oder berühren. Eine Person kann durch Gehen, Kleidung oder Kunststoff mehrere Kilovolt aufladen. Die Energie ist oft zu klein, um sie zu spüren, aber schnell genug, um dünne Oxidschichten in Halbleitern zu beschädigen.

Ein ESD-Schaden kann drei Formen haben:

- **sofortiger Ausfall** – das Bauteil funktioniert nicht mehr,
- **latenter Schaden** – es funktioniert zunächst, fällt aber früher aus,
- **Parameterdrift** – Leckstrom, Rauschen oder Grenzwerte verschlechtern sich.

## 2. Equipotential statt „hart erden“

Ziel eines ESD-Arbeitsplatzes ist, Person, Werkzeug, Matte und Baugruppe kontrolliert auf dasselbe Potential zu bringen. Geeignete ESD-Ausrüstung enthält definierte Ableitwiderstände und wird geprüft. Ein Handgelenkband darf nie improvisiert direkt an einen Schutzleiter angeschlossen werden.

Standardablauf:

1. ESD-Arbeitsplatz und Prüfdatum kontrollieren.
2. Handgelenkband mit geeignetem Tester prüfen.
3. Baugruppe in geschlossener ESD-Verpackung an den Platz bringen.
4. Erst im Schutzbereich auspacken; Kontakte und Pins nicht berühren.
5. Unbenutzte Baugruppen sofort wieder geschützt lagern.

## 3. ESD und eingeschaltete Schaltungen

ESD-Armbänder sind für spannungsfreie Elektronikarbeiten am dafür vorgesehenen Arbeitsplatz gedacht. Bei Tätigkeiten mit gefährlicher Spannung gelten andere Schutzkonzepte; dort kann ein geerdetes Band selbst gefährlich sein. Solche Arbeiten liegen ausserhalb der Kurslabore.

## 4. Typische Fehlannahmen

- Eine antistatische Tüte schützt nur geschlossen; die Aussenseite ist kein ESD-Arbeitsplatz.
- Schwarzer leitfähiger Schaum ist nicht automatisch für jede Langzeitlagerung geeignet.
- „Ich habe keinen Funken gesehen“ beweist nichts.
- ESD-Schuhe wirken nur zusammen mit geeignetem Boden und geprüftem Gesamtsystem.

## Hardware ↔ Firmware

Ein latent beschädigter Eingang kann sporadische ADC-Werte oder Kommunikationsfehler verursachen, die wie Firmwarebugs wirken. Deshalb gehören ESD-Historie, Baugruppen-ID und Vergleich mit einem bekannten guten Board in die Fehlersuche.

## Kurzpraxis

Notiere für eine Baugruppe: ESD-Empfindlichkeitskennzeichnung, Verpackungsart, zulässige Handhabung und wer die Schutzmittel zuletzt geprüft hat. Fehlende Information wird vor dem Öffnen geklärt.


## Bildungsplan 2026

Dieses Thema unterstützt `a1` (Anforderungen erfassen), `d1` (Aufträge planen), `d2` (Verlauf kontrollieren) und `d3` (Ergebnisse auswerten). Sicherheits-, Qualitäts- und Dokumentationsregeln wirken zusätzlich in allen Hardwarekompetenzen `b1–b5`.

## Kurzcheck

1. Welche Information muss vor dem Einschalten feststehen?
2. Woran erkennt eine zweite Person den tatsächlich geprüften Stand?
3. Welche Hardwareeigenschaft kann sich in der Firmware als scheinbar zufälliger Fehler zeigen?
