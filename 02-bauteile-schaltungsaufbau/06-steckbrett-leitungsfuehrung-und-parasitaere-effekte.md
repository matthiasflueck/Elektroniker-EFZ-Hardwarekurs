# 02.6 – Steckbrett, Leitungsführung und parasitäre Effekte

[← Zurück](05-leds-schalter-und-grundlegende-schutzbeschaltung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-erste-messungen-mit-funktionsgenerator-und-oszilloskop.md)

## Lernziele

Nach dieser Lektion kannst du Funktion, Grenzwerte und reale Nichtidealitäten der behandelten Bauteile erklären, sie im Schema und Aufbau sicher zuordnen und ihr Verhalten mit geeigneten Messmitteln prüfen.

## 1. Interne Verbindungen kennen

Bei üblichen Steckbrettern sind Fünfergruppen verbunden; die mittlere Nut trennt die beiden Seiten. Versorgungsschienen können in der Mitte unterbrochen sein. Diese Struktur wird mit Durchgangsprüfung verifiziert, bevor sie angenommen wird.

Ein Aufbau soll das Schema lesbar abbilden: kurze Rückstrompfade, Versorgung farblich konsistent, Bauteile nicht übereinander verborgen, Messpunkte zugänglich.

## 2. Parasitäre Elemente

Jeder Draht besitzt Widerstand und Induktivität; benachbarte Reihen besitzen Kapazität. Bei langsamen DC-Schaltungen sind diese Effekte klein. Bei schnellen Flanken, hochohmigen Knoten oder Schaltreglern können sie dominieren.

Ein Steckbrett eignet sich nicht für:

- hohe Ströme,
- Netzspannung,
- präzise sehr hochohmige Messungen,
- schnelle Leistungs-Schaltknoten,
- reproduzierbare Hochfrequenzschaltungen.

## 3. Entkopplung und Stromschleifen

Ein Entkopplungskondensator wirkt nur gut, wenn die Schleife zwischen Versorgungspin, Kondensator und Masse klein ist. Ein Kondensator am entfernten Ende langer Steckdrähte kann schnelle Stromspitzen kaum liefern.

## 4. Kontaktfehler

Typische Fehler sind versetzte Pins, lose Drähte, oxidierte Kontakte, unterbrochene Versorgungsschienen und Bauteilbeinchen, die nicht dieselbe Reihe treffen. Systematische Prüfung arbeitet netzweise und vergleicht mit dem Schema.

## Hardware ↔ Firmware

Schlechte Kontakte können Reset, ADC-Sprünge oder Busfehler erzeugen. Firmware-Logging hilft, Zeitpunkt und Zustand zu sehen, beweist aber nicht die Ursache. Wackeltests dürfen nur kontrolliert und bei sicherer Energie durchgeführt werden; besser sind Messung und reproduzierbarer Neuaufbau.

## Aufbaucheck

Vor Energie: Netzstruktur prüfen, Versorgungsschienen markieren, Widerstände messen, Polaritäten prüfen, GND-Kontinuität bestätigen und Kurzschlusswiderstand zwischen Versorgung und GND beurteilen.


## Bildungsplan 2026

Primär: `b1`, `b3`, `b4`, `b5`; je nach Aufbau zusätzlich Anforderungen und Machbarkeit aus `a1–a3`.

## Kurzcheck

1. Welche Energie oder Zustandsgrösse kann dieses Bauteil speichern oder beeinflussen?
2. Welcher Datenblattwert begrenzt den sicheren Betrieb?
3. Wie unterscheidest du Bauteilfehler, Aufbaufehler und falsche Messung?
