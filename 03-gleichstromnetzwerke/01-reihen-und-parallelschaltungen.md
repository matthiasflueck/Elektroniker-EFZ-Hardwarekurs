# 03.1 – Reihen- und Parallelschaltungen

[← Zurück](README.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-kirchhoffsche-knoten-und-maschenregel.md)

## Lernziele

Nach dieser Lektion kannst du:

- Reihen- und Parallelschaltungen am Knotenbild sicher unterscheiden
- Gesamtwiderstand, Teilspannungen und Zweigströme berechnen
- Ergebnisse mit Grenzfällen und einer Messung plausibilisieren

## Einleitung

Elektronische Schaltungen bestehen selten aus einem einzelnen Widerstand. Vorwiderstand und LED liegen beispielsweise in Reihe; mehrere Versorgungspfade oder Pull-up-Widerstände können parallel wirken. Wer nur nach der gezeichneten Anordnung «nebeneinander» oder «untereinander» urteilt, erkennt die elektrische Struktur oft falsch.

Entscheidend sind die Knoten. Zwei Bauteile liegen in Reihe, wenn ihr gemeinsamer Knoten keine weitere Abzweigung besitzt: Durch beide fliesst derselbe Strom. Sie liegen parallel, wenn beide Anschlüsse jeweils mit denselben zwei Knoten verbunden sind: An beiden liegt dieselbe Spannung. Diese Definition funktioniert auch bei unübersichtlich gezeichneten Schemas.


<!-- context-expansion-2026 -->
Eine Baugruppe besteht aus verbundenen Quellen, Bauteilen und Lasten. Gleichstromnetzwerke liefern die Regeln, mit denen sich unbekannte Ströme und Spannungen aus Topologie und Bauteilwerten ableiten lassen. Dabei sind Knoten, Maschen und Rückstrompfade ebenso wichtig wie die Zahlenwerte.

Beim Thema **Reihen- und Parallelschaltungen** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Netzwerke werden aus Sicht ihrer Topologie gelesen: Bauteile in demselben Strompfad liegen in Reihe, Bauteile an denselben zwei Knoten parallel. Erst danach werden Ersatzwerte, Knotenbilanzen oder Maschengleichungen gebildet. Diese Reihenfolge verhindert viele Vorzeichen- und Zuordnungsfehler.

### Reihenschaltung: ein gemeinsamer Strompfad

In einer Reihenschaltung kann sich der Strom an keinem Zwischenknoten aufteilen. Jeder Widerstand wird daher vom gleichen Strom durchflossen. Die Gesamtspannung verteilt sich auf die Einzelwiderstände. Ein grösserer Widerstand verursacht bei gleichem Strom einen grösseren Spannungsabfall.

![Vergleich von Reihen- und Parallelschaltung mit markierten Knoten und Strompfaden](../bilder/03-gleichstromnetzwerke/03-01-reihe-parallel.png)

Die Ersatzschaltung soll bei gleicher Klemmenspannung denselben Strom aufnehmen. Für Widerstände in Reihe gilt deshalb:

`Req = R1 + R2 + … + Rn`

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `Req` | Ersatz- oder Gesamtwiderstand (*equivalent resistance*) | Ω |
| `R1 … Rn` | einzelne Widerstände | Ω |
| `G`, `Geq` | Leitwert eines Zweigs beziehungsweise Gesamtleitwert | S (Siemens) |
| `G1 … Gn` | einzelne Zweigleitwerte | S |
| `n` | Anzahl der Widerstände | einheitenlos |

Der Ersatzwiderstand einer Reihenschaltung ist immer grösser als der grösste Einzelwiderstand. Das ist eine schnelle Plausibilitätskontrolle.

### Parallelschaltung: gemeinsame Klemmenspannung

In einer Parallelschaltung liegt jeder Zweig an denselben beiden Knoten. Deshalb ist die Spannung über allen Zweigen gleich. Der Gesamtstrom ist die Summe der Zweigströme. Ein kleiner Widerstand führt bei gleicher Spannung zu einem grossen Zweigstrom.

Rechnerisch ist es hilfreich, zuerst mit dem Leitwert zu denken. Der Leitwert `G` beschreibt, wie gut ein Pfad Strom leitet, und ist der Kehrwert des Widerstands: `G = 1/R`. Parallele Leitpfade addieren sich:

`Geq = G1 + G2 + … + Gn`

und damit:

`1/Req = 1/R1 + 1/R2 + … + 1/Rn`

Für genau zwei parallele Widerstände folgt `Req = (R1·R2)/(R1+R2)`. Der Gesamtwiderstand muss kleiner sein als der kleinste Einzelwiderstand, weil jeder weitere Zweig einen zusätzlichen Strompfad öffnet.

### Ideale Verbindung und reale Leiter

In der Grundrechnung haben Leitungen null Ohm und jeder gezeichnete Knoten genau ein Potential. Reale Leiterbahnen, Steckkontakte und Messleitungen besitzen jedoch kleine Widerstände. Bei hohen Strömen können dadurch messbare Spannungsabfälle entstehen. Die ideale Netzwerkanalyse bleibt der Ausgangspunkt; parasitäre Widerstände werden ergänzt, wenn ihre Wirkung relevant ist.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- LED-Ketten und Serienwiderstände
- Parallele Verbraucher an Versorgungsschienen
- Ersatzwertbildung in Mess- und Sensornetzen

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Drei gleich breite Türen hintereinander machen einen Fluchtweg nicht breiter: Alle Personen müssen nacheinander durch jede Tür. Das ähnelt einer Reihenschaltung. Drei Türen nebeneinander schaffen zusätzliche Wege und erhöhen den möglichen Gesamtfluss. Die Analogie erklärt die Tendenz, ersetzt aber nicht das elektrische Schema: Ladung wird nicht verbraucht, und Spannung ist kein Stoffstrom.

## Berechnungsbeispiel

An 12 V liegen `R1 = 1,0 kΩ` und `R2 = 2,0 kΩ` in Reihe. Der Gesamtwiderstand beträgt `3,0 kΩ`; daraus folgt `I = 12 V / 3,0 kΩ = 4,0 mA`. Die Teilspannungen sind `U1 = 4,0 V` und `U2 = 8,0 V`. Ihre Summe ergibt wieder 12 V.

Werden dieselben Widerstände parallel an 12 V gelegt, fliessen `I1 = 12 mA` und `I2 = 6 mA`. Der Gesamtstrom ist 18 mA und `Req = 12 V / 18 mA ≈ 667 Ω`. Das Ergebnis liegt wie erwartet unter 1,0 kΩ.

## Praxisbezug

Miss Widerstände vor dem Aufbau einzeln und danach den Ersatzwiderstand der spannungsfreien Schaltung. Vergleiche berechnete und gemessene Werte unter Berücksichtigung der Bauteiltoleranz. Bei der Strommessung wird das Messgerät in Serie eingesetzt; die Spannung wird parallel zu den benannten Knoten gemessen.

## 🔗 Hardware ↔ Firmware

Ein interner MCU-Pull-up liegt elektrisch parallel zu einem externen Pull-up. Sein schlecht definierter Widerstandsbereich kann den resultierenden Pegel und die Stromaufnahme verändern. Die Firmware entscheidet, ob der interne Pull-up aktiviert ist; das Multimeter zeigt die reale Wirkung am Pin. Bei Abweichungen müssen daher Schaltung und Pin-Konfiguration gemeinsam geprüft werden.

## Merksatz

> Reihe bedeutet gleicher Strom; parallel bedeutet gleiche Spannung – erkennbar an den Knoten, nicht an der Zeichenrichtung.

## Häufige Fehler und Missverständnisse

- Bauteile wegen ihrer optischen Lage statt anhand der Knoten einordnen.
- Bei parallelen Widerständen einen Ersatzwert berechnen, der grösser als der kleinste Zweig ist.
- Das Ohmmeter an einer gespeisten Schaltung verwenden.
- Bei einer realen Platine Leiterbahn- und Kontaktwiderstände grundsätzlich ignorieren.

## Zusammenfassung

Reihenwiderstände addieren sich, weil derselbe Strom nacheinander durch alle Bauteile fliesst. Parallele Leitwerte addieren sich, weil mehrere Zweige zwischen denselben Knoten Strom führen. Grenzwertprüfung, Knotenbild und Messung bilden zusammen eine zuverlässige Kontrolle.

## Übungsfragen

1. Woran erkennst du unabhängig von der Zeichnung, dass zwei Widerstände parallel liegen?
2. Berechne `Req` für 330 Ω und 680 Ω in Reihe sowie parallel.
3. Weshalb muss ein paralleler Ersatzwiderstand kleiner als der kleinste Einzelwiderstand sein?
4. Wie verändert ein aktivierter interner Pull-up eine externe Pull-up-Schaltung?

Weitere Aufgaben: [Übungen zu Modul 03](../uebungen/modul-03.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b1-LK06`, `b4-LK01`, `b4-LK06–10`
- Nachweise: Berechnungen, Messschema und Praxisversuch in Modul 03; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
