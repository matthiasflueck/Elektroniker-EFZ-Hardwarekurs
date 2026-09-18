# 01.4 – Prozentrechnung, Abweichung und Toleranz

[← Zurück](03-formeln-verstehen-und-sicher-umstellen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-diagramme-kennlinien-und-steigungen-lesen.md)

## Lernziele

Nach dieser Lektion kannst du:

- absolute und relative Abweichung berechnen
- Bauteiltoleranzen als Bereich angeben
- günstige und ungünstige Grenzfälle unterscheiden

## Einleitung

Reale Bauteile besitzen keinen exakt idealen Wert. Ein 1-kΩ-Widerstand kann etwas höher oder tiefer liegen, und ein Messgerät zeigt ebenfalls nicht den unbekannten wahren Wert. Prozentrechnung übersetzt diese Streuungen in nachvollziehbare Grenzen.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **Prozentrechnung, Abweichung und Toleranz** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Absolut und relativ

Die absolute Abweichung trägt dieselbe Einheit wie die Grösse: $\Delta x=x\mathrm{ist}-x\mathrm{soll}$. Die relative Abweichung vergleicht sie mit dem Sollwert: $\delta=\frac{\Delta x}{x\mathrm{soll}}$; als Prozent wird mit $100\,\%$ multipliziert.

### Toleranzbereich

Bei einem Nennwert $xN$ und einer symmetrischen Toleranz $t$ liegen die Grenzen bei $x\mathrm{min}=xN(1-t)$ und $x\mathrm{max}=xN(1+t)$. Toleranz ist eine zugesicherte Spanne, keine Wahrscheinlichkeitsverteilung.

### Worst Case

Für eine Ausgangsgrösse werden jene Extremwerte kombiniert, die sie maximal beziehungsweise minimal machen. Vorzeichen und Wirkungsrichtung müssen verstanden werden; blindes Addieren aller Prozente ist oft falsch.

### Bezugswert eindeutig festlegen

Eine Prozentangabe ist nur verständlich, wenn der Bezugswert genannt wird. «Drei Prozent zu klein» kann sich auf Nennwert, Messwert oder Endwert beziehen. Im Soll-Ist-Vergleich wird die Differenz üblicherweise auf den Sollwert bezogen. Diese Vereinbarung muss im Prüfbericht erkennbar sein.

Toleranzen verschiedener Ursachen dürfen nicht unüberlegt addiert werden. Bauteiltoleranz, Temperaturänderung und Messunsicherheit beschreiben unterschiedliche Effekte. Für eine erste sichere Grenze kann eine Worst-Case-Summe geeignet sein; für eine statistische Aussage wäre dagegen ein anderes Verfahren notwendig.

### Asymmetrische Grenzen

Nicht jede Spezifikation ist symmetrisch. Ein Regler kann beispielsweise $+2\,\%/-3\,\%$ erlauben. Dann werden obere und untere Grenze getrennt berechnet. Auch Grenzwerte wie «höchstens 100 mA» haben nur eine relevante Richtung und dürfen nicht als symmetrische Toleranz interpretiert werden.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Toleranz- und Worst-Case-Rechnung
- Vergleich von Soll- und Messwert
- Bewertung von Wirkungsgrad und Drift

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Bei einem Spannungsteiler macht ein kleiner oberer und grosser unterer Widerstand die Ausgangsspannung maximal. Die umgekehrte Kombination macht sie minimal.

## Berechnungsbeispiel

$R=4{,}7\,\mathrm{k}\Omega\pm5\,\%$: Fünf Prozent sind $0{,}05\cdot4700\,\Omega=235\,\Omega$. Somit gelten $R\mathrm{min}=4465\,\Omega$ und $R\mathrm{max}=4935\,\Omega$. Ein Messwert von $4{,}82\,\mathrm{k}\Omega$ liegt im Bereich; seine Abweichung vom Nennwert beträgt $\frac{120}{4700}=2{,}55\,\%$.

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

1. Berechne die Grenzen von $10\,\mathrm{k}\Omega\pm1\,\%$.
2. Was bedeutet eine negative Abweichung?
3. Warum ist Toleranz nicht gleich Messunsicherheit?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
