# Labor 02 – RC-Sprungantwort und LED-Schaltung

[← Praxisübersicht](README.md) · [Modul 02](../02-bauteile-schaltungsaufbau/README.md) · [Kursübersicht](../README.md)

## Ziel

Du baust zwei einfache Schaltungen schemaorientiert auf: eine dimensionierte LED-Anzeige und einen RC-Tiefpass. Du misst Strom, Rechtecksignal und Zeitkonstante und dokumentierst die Oszilloskopeinstellungen vollständig.

## Material

Netzgerät `5 V` mit `20 mA` Stromgrenze, DMM, Funktionsgenerator, Oszilloskop und `10:1`-Tastkopf, Steckbrett, rote LED, `620 Ω`, `10 kΩ`, `10 nF` Folien- oder Keramikkondensator. Für den Elektrolytvergleich optional `10 µF` bei reduzierter Frequenz und korrekter Polarität.

## Teil A – LED

Schema: `+5 V → 620 Ω → LED → 0 V`.

1. Nimm `UF = 2.0 V` an und berechne Strom und Widerstandsleistung.
2. Prüfe Widerstand und LED-Polarität energiefrei.
3. Stelle `5.00 V` und `20 mA` Stromgrenze bei ausgeschaltetem Ausgang ein.
4. Nimm in Betrieb; miss Versorgung, LED- und Widerstandsspannung.
5. Berechne den realen LED-Strom aus der Widerstandsspannung.
6. Drehe die LED **nur spannungsfrei** um. Erwartung: dunkel, nahezu kein Strom. Stelle den freigegebenen Zustand wieder her.

## Teil B – RC-Sprungantwort

Schema: Generator `OUT → 10 kΩ → TP_OUT`; `10 nF` von `TP_OUT` nach `0 V`. Generator und Oszilloskop teilen denselben freigegebenen `0-V`-Bezug.

Nominal: `τ = 10 kΩ · 10 nF = 100 µs`, Grenzfrequenz `fc ≈ 1/(2πτ) = 1.59 kHz`.

1. Stelle ein Rechteck `0…5 V`, `500 Hz`, `50 %` Tastgrad ein. Prüfe die tatsächliche Amplitude direkt am Generatorausgang.
2. Zeige Eingang auf Kanal 1 und `TP_OUT` auf Kanal 2; beide Tastköpfe `10:1`, DC-Kopplung.
3. Triggere auf die steigende Flanke von Kanal 1.
4. Miss `τ` als Zeit bis `63.2 %` des Ausgangssprungs. Vergleiche mit `100 µs`.
5. Wiederhole bei `100 Hz`, `1.6 kHz` und `10 kHz`. Beschreibe Amplitude und Form.
6. Vertausche R und C zur Hochpassanordnung und dokumentiere den kurzen Impuls an jeder Flanke.

## Messprotokoll

| Aufbau/Frequenz | Soll | Ist | Unsicherheit/Einstellung | Bewertung |
|---|---:|---:|---|---|
| LED-Strom | ca. `4.8 mA` | | DMM | |
| `τ` | `100 µs` | | Cursor/Abtastrate | |
| `fc` | `1.59 kHz` | | aus R/C bzw. Messung | |

Füge ein Oszillogramm mit Kanalbezeichnungen, V/div, s/div, Tastkopffaktor, Kopplung, Trigger und Messpunkten bei.

## Fehlerbilder

- Ausgang bleibt `0 V`: fehlender Generator, Kurzschluss, fehlende Masse oder falscher Messpunkt.
- Ausgang folgt sofort: Kondensator nicht verbunden oder Zeitbasis ungeeignet.
- Amplitude unerwartet doppelt: Generator-Lastmodus `50 Ω` an hochohmiger Last.
- Starkes Überschwingen: lange Masseleitung oder ungeeigneter Aufbau.

## Bildungsplan 2026

`b1`, `b3`, `b4`, `b5`, `d3`.
