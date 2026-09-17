# Praxis 09 – Diodenkennlinie und Gleichrichter untersuchen

[← Modul 09](../09-dioden-schutz/README.md) · [Praxisübersicht](README.md) · [Kursübersicht](../README.md)

## Lernziel

Du nimmst eine Diodenkennlinie strombegrenzt auf, vergleichst PN- und Schottky-Diode und untersuchst einen Kleinspannungs-Brückengleichrichter mit Last und Glättung.

## Benötigtes Material

- Siliziumdiode und Schottky-Diode mit Datenblatt
- Brückengleichrichter oder vier geeignete Dioden
- R1 = 1 kΩ sowie passende Lastwiderstände
- C1 = 470 µF und 1000 µF mit ausreichender Spannungsfestigkeit
- Steckbrett und sichere Leitungen

## Benötigte Messgeräte

Strombegrenztes Labornetzgerät, galvanisch sichere Kleinspannungs-AC-Quelle, zwei DMM und Zweikanal-Oszilloskop mit 10:1-Tastköpfen.

## Schaltung / Messaufbau

Teil A: einstellbare Gleichspannung speist R1 und D1 in Serie. DMM 1 misst UD, DMM 2 die Widerstandsspannung zur Berechnung von ID.

Teil B: die isolierte Kleinspannungs-AC-Quelle speist eine Brücke. C1 und Last liegen am DC-Ausgang. Gemessen werden Eingang, Ausgangsmittelwert und Ripple.

![Diodenkennlinie mit Lastgerade und Arbeitspunkt](../bilder/09-dioden-schutz/09-02-kennlinie-lastgerade.png)

## Sicherheitshinweise

Keine direkte Netzspannung verwenden. AC-Quelle und Messgerätemassen müssen galvanisch sicher sein. Elektrolytkondensator polrichtig einsetzen, Spannungsfestigkeit prüfen und vor Umbauten über einen Widerstand entladen. Stromgrenze vor dem Einschalten einstellen.

## Vorbereitung

Sage die Reihenfolge der Flussspannungen von Schottky- und PN-Diode voraus. Skizziere Kennlinie und erwarteten Ripple. Lege maximale Diodenströme, Kondensatorspannung und Abbruchtemperatur fest.

## Berechnung

Berechne für jede Sollquelle den maximalen Strom mit kleinstmöglicher UD. Für den Gleichrichter bestimme Spitzenspannung nach zwei Dioden, Ripplefrequenz und erwartetes ΔU mit `ΔU ≈ IL/(fRipple·C)`.

## Aufbau

Spannungsfrei verdrahten. Diodenpolung und Brückenanschlüsse anhand Datenblatt prüfen, nicht anhand Gehäuseannahmen. Kondensator zunächst weglassen. Sicht-, Durchgangs- und Kurzschlussprüfung durchführen.

## Durchführung und Messung

1. Erhöhe Teil A in kleinen Schritten und erfasse mindestens acht Kennlinienpunkte bis zum freigegebenen Maximalstrom.
2. Wiederhole identisch mit der zweiten Diode; dokumentiere Temperatur und Messbereiche.
3. Nimm Teil B zuerst ohne C1 und ohne Last in Betrieb. Beobachte beide Halbwellen.
4. Ergänze Last, dann 470 µF und 1000 µF. Miss Mittelwert, Upp-Ripple und Ladeimpulsform.
5. Vergleiche Vorhersage, Rechnung und Messung. Ändere nur einen Parameter gleichzeitig.

## Messwerte

| Diode | UD | UR1 | ID | Temperatur/Bedingung |
|---|---:|---:|---:|---|
| | | | | |

| C1 | Laststrom | UDC | Ripple Upp | fRipple | Bedingung |
|---:|---:|---:|---:|---:|---|
| ohne | | | | | |
| 470 µF | | | | | |
| 1000 µF | | | | | |

## Auswertung

Zeichne ID über UD für beide Dioden. Markiere einen Arbeitspunkt und bestimme statischen sowie lokalen differentiellen Widerstand. Erkläre beim Gleichrichter Abweichungen durch Quellenwiderstand, Diodenabfall, Kapazitätstoleranz und kurze Ladeimpulse.

## Fragen

Warum ist die Kennlinie temperaturabhängig? Weshalb halbiert doppeltes C den Ripple nur näherungsweise? Warum kann ein grösserer Kondensator Dioden und Quelle stärker belasten?

## Was solltest du beobachtet haben?

Die Schottky-Diode zeigt im gewählten Strombereich meist kleinere UD. Der Brückenausgang nutzt beide Halbwellen; C1 erhöht den Mittelwert und reduziert Ripple, konzentriert den Nachladestrom aber auf kurze Zeitfenster.

## Bezug zur Theorie

Lektionen 09.1–09.3 und 09.6; Schutzgrenzen aus 09.7.

## 🔗 Hardware ↔ Firmware

Optional erfasst ein ADC den Ripple über einen sicheren Teiler. Abtastrate und Trigger müssen 100-Hz-Ripple und Ladeimpulse unterscheiden. Rohdaten werden mit dem Oszilloskop verglichen.

## Bezug Bildungsplan 2026

`a3`, `b1-LK02–04`, `b1-LK06`, `b4-LK01–10`, `b5`, `c2`, `d8`; Details: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
