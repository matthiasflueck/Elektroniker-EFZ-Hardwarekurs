# P1 – Mess- und Lernadapter

[← Projektübersicht](README.md) · [Kursübersicht](../README.md)

## Zielprodukt

Ein robuster Kleinspannungs-Messadapter mit geschützten Testpunkten, LED-Lasten, RC-Netzen und dokumentierten Referenzwerten.

## Verlauf

Module 00–06 führen von Anforderungen und sicheren Anschlüssen über passive Netzwerke bis zu Schutz und Abnahme.

### P1-M0 – Auftrag und Sicherheitsrahmen (Modul 00)

- SELV-Betriebsbereich `0…12 V DC` und maximale Einspeiseenergie festlegen.
- Laborjournal, Signalnamen, Revisionierung und Freigabekette definieren.
- Messbare Akzeptanzkriterien für Kurzschlussfreiheit, LED-Pfad und Testpunkte formulieren.

### P1-M1 – Gleichstromnetz und Messpunkte (Modul 01)

- LED-Strom, Teiler und Bauteilleistung mit Toleranzen berechnen.
- `+5V`, `0V`, `TP_LED` und `TP_DIV` als eindeutige Netze/Testpunkte definieren.
- Sollwerttabelle und DMM-Messplan erstellen; Erkenntnisse aus Labor 01 übernehmen.

### P1-M2 – Passiver Prototyp (Modul 02)

- LED mit Vorwiderstand, belastbaren Spannungsteiler und umschaltbares RC-Netz aufbauen.
- As-built-Schema und Stückliste nachführen.
- LED-Strom, Teilerbelastung und RC-Zeitkonstante messen; Oszillogramm vollständig beschriften.

### Spätere Meilensteine

Module 03–06 ergänzen Ersatzschaltungsanalyse, freigegebene Bauteilauswahl, Frequenzgang und Schutzbeschaltung. Details werden mit den jeweiligen Modulen ausgearbeitet.

## Verbindliche Nachweise

- Anforderungen und messbare Akzeptanzkriterien
- Blockdiagramm, Schema und begründete Bauteilwahl
- Gefährdungs- und Inbetriebnahmeplan
- Berechnungen, Simulationen und Design-Reviews
- Messprotokoll mit Rohdaten, Bedingungen und Soll-Ist-Vergleich
- Fehler- und Änderungsjournal
- Hardware ↔ Firmware-Schnittstellenbeschreibung
- Abschlussbericht und kurze technische Präsentation

## Gate-Prinzip

Ein Meilenstein wird erst freigegeben, wenn Sicherheitsfragen geklärt, Resultate reproduzierbar und Dokumente nachgeführt sind. Die konkrete Stückliste und Schaltung werden in der jeweiligen Ausbauphase versioniert freigegeben.
