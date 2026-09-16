# 01.4 – Prozentrechnung, Abweichung und Toleranz

[← Zurück](03-formeln-verstehen-und-sicher-umstellen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-diagramme-kennlinien-und-steigungen-lesen.md)

## Lernziele

Nach dieser Lektion kannst du:

- absolute und relative Abweichung berechnen
- Bauteiltoleranzen als Bereich angeben
- günstige und ungünstige Grenzfälle unterscheiden

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Vorherige Lektionen dieses Moduls.

## Warum ist das wichtig?

Reale Bauteile besitzen keinen exakt idealen Wert. Ein 1-kΩ-Widerstand kann etwas höher oder tiefer liegen, und ein Messgerät zeigt ebenfalls nicht den unbekannten wahren Wert. Prozentrechnung übersetzt diese Streuungen in nachvollziehbare Grenzen.

## Theorie

### Absolut und relativ

Die absolute Abweichung trägt dieselbe Einheit wie die Grösse: `Δx = x_ist − x_soll`. Die relative Abweichung vergleicht sie mit dem Sollwert: `δ = Δx/x_soll`; als Prozent wird mit 100 % multipliziert.

### Toleranzbereich

Bei einem Nennwert `x_N` und einer symmetrischen Toleranz `t` liegen die Grenzen bei `x_min = x_N(1−t)` und `x_max = x_N(1+t)`. Toleranz ist eine zugesicherte Spanne, keine Wahrscheinlichkeitsverteilung.

### Worst Case

Für eine Ausgangsgrösse werden jene Extremwerte kombiniert, die sie maximal beziehungsweise minimal machen. Vorzeichen und Wirkungsrichtung müssen verstanden werden; blindes Addieren aller Prozente ist oft falsch.

## Anschauliches Beispiel

Bei einem Spannungsteiler macht ein kleiner oberer und grosser unterer Widerstand die Ausgangsspannung maximal. Die umgekehrte Kombination macht sie minimal.

## Berechnungsbeispiel

`R = 4,7 kΩ ± 5 %`: Fünf Prozent sind `0,05 × 4700 Ω = 235 Ω`. Somit `R_min = 4465 Ω`, `R_max = 4935 Ω`. Ein Messwert 4,82 kΩ liegt im Bereich; seine Abweichung vom Nennwert beträgt `+120/4700 = +2,55 %`.

## Praxisbezug

Miss zehn nominell gleiche Widerstände. Berechne Abweichung und Spannweite. Unterscheide beobachtete Stichprobe und garantierten Toleranzbereich.

## Merksatz

> Toleranz beschreibt einen zulässigen Bereich; sie ist nicht automatisch ein Messfehler.

## Häufige Fehler und Missverständnisse

- Prozentpunkte und Prozent verwechseln.
- Die Abweichung auf den Istwert statt den vereinbarten Sollwert beziehen.
- Aus zehn Messwerten auf die gesamte Produktion schliessen.

## Zusammenfassung

Absolute Abweichung zeigt den Unterschied in der Einheit, relative Abweichung macht Werte vergleichbar. Toleranzgrenzen und Worst-Case-Kombinationen sichern die Dimensionierung ab.

## Übungsfragen

1. Berechne die Grenzen von 10 kΩ ±1 %.
2. Was bedeutet eine negative Abweichung?
3. Warum ist Toleranz nicht gleich Messunsicherheit?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.
