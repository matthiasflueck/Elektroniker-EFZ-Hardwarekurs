# 00.7 – Technische Dokumentation und Laborjournal

[← Zurück](06-professioneller-elektronikarbeitsplatz.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](README.md)

## Lernziele

Nach dieser Lektion kannst du:

- ein reproduzierbares Laborjournal führen
- Sollwert, Messwert, Abweichung und Bewertung trennen
- Revisionen und Entscheidungen rückverfolgbar dokumentieren

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b4-LK05`, `b4-LK09–10`, `b5-LK05`, `d1–d3`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Lektionen 00.1–00.6.

## Warum ist das wichtig?

Nach einigen Tagen ist kaum noch sicher erinnerlich, welcher Widerstand eingesetzt oder welche Geräteeinstellung verwendet wurde. Ohne Aufzeichnung kann selbst ein korrektes Resultat nicht zuverlässig wiederholt werden.

Gute Dokumentation entsteht während der Arbeit. Sie zeigt auch verworfene Hypothesen und verhindert, dass derselbe Fehler später nochmals untersucht werden muss.

## Theorie

### Mindestinhalt eines Laborjournals

Zu jedem Versuch gehören Datum, Person, Ziel, Schaltungsrevision, Aufbau, Material, Geräteidentifikation, erwartete Werte, Messbedingungen, Rohdaten, Auswertung, Abweichungen, Änderungen und Schlussfolgerung. Fotos ergänzen ein Schema, ersetzen es aber nicht.

### Soll, Ist und Bewertung

Ein Messwert wird nie allein notiert. `TP3 = 3,28 V gegen GND, DMM-01, 10-V-Bereich, 5,00-V-Versorgung` ist aussagekräftiger als `3,28`. Die Bewertung berücksichtigt Toleranzen und Messunsicherheit.

### Revision und Versionsverwaltung

Schema, Stückliste, PCB, Firmware und Testplan müssen denselben Stand beschreiben. Eine Änderung erhält Grund, Datum, verantwortliche Person und Prüfnachweis. Versionsverwaltung bewahrt Historie; eine Freigabe bezeichnet den geprüften Stand.

## Anschauliches Beispiel

Nach dem Austausch von R7 wird nicht nur «R7 geändert» notiert. Dokumentiert werden alter und neuer Wert, Grund, Schema-Revision, betroffene Messwerte und der Regressionstest, der die Änderung bestätigt.

## Berechnungsbeispiel

Bei `Soll = 5,00 V` und `Ist = 4,92 V` ist die absolute Abweichung `ΔU = −0,08 V`. Relativ: `−0,08 V / 5,00 V × 100 % = −1,6 %`. Erst der zulässige Bereich entscheidet, ob dies akzeptabel ist.

## Praxisbezug

Führe das Laborjournal in der Praxisarbeit vollständig. Tausche es anschliessend mit einer zweiten Person: Diese muss Aufbau, Messpunkte und Bewertung ohne mündliche Ergänzung nachvollziehen können.

## 🔗 Hardware ↔ Firmware

Board-, Schema- und Firmwareversion gehören gemeinsam ins Protokoll. Ein Messbild ohne Firmwarestand ist bei PWM, ADC oder Bussignalen oft nicht reproduzierbar. Detaillierte Codeversionierung wird im STM32-Kurs behandelt.

## Merksatz

> Ein Wert ohne Messpunkt, Bezug, Bedingung, Einheit und Revision ist kein belastbarer Nachweis.

## Häufige Fehler und Missverständnisse

- Rohdaten nachträglich durch berechnete Werte ersetzen.
- Fotos ohne Beschriftung, Massstab oder Schaltungsrevision ablegen.
- Fehlversuche löschen, statt Ursache und Erkenntnis festzuhalten.

## Zusammenfassung

Ein Laborjournal verbindet Erwartung, Rohdaten, Auswertung und Entscheidung. Revisionen sorgen dafür, dass die geprüfte Hardware-/Firmwarekombination eindeutig bleibt.

## Übungsfragen

1. Welche Angaben fehlen bei «Spannung = 3,3»?
2. Warum müssen Rohdaten erhalten bleiben?
3. Was unterscheidet Versionsstand und Freigabe?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.
