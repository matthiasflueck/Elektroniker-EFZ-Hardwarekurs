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

Die absolute Abweichung trägt dieselbe Einheit wie die betrachtete Grösse:

$$
\Delta x = x_{\mathrm{ist}} - x_{\mathrm{soll}}
$$

Die relative Abweichung vergleicht die absolute Abweichung mit dem Sollwert:

$$
\delta = \frac{\Delta x}{x_{\mathrm{soll}}}
$$

Für die Angabe in Prozent wird mit 100 % multipliziert:

$$
\delta_{\%} =
\frac{\Delta x}{x_{\mathrm{soll}}}\cdot100\,\%
$$

### Toleranzbereich

Bei einem Nennwert $x_{\mathrm{N}}$ und einer symmetrischen Toleranz $t$ ergeben sich die Grenzen zu:

$$
x_{\mathrm{min}} = x_{\mathrm{N}}(1-t)
$$

$$
x_{\mathrm{max}} = x_{\mathrm{N}}(1+t)
$$

Toleranz ist eine zugesicherte Spanne, keine Wahrscheinlichkeitsverteilung.

### Worst Case

Für eine Ausgangsgrösse werden jene Extremwerte kombiniert, die sie maximal beziehungsweise minimal machen. Vorzeichen und Wirkungsrichtung müssen verstanden werden; blindes Addieren aller Prozente ist oft falsch.

### Bezugswert eindeutig festlegen

Eine Prozentangabe ist nur verständlich, wenn der Bezugswert genannt wird. «Drei Prozent zu klein» kann sich auf Nennwert, Messwert oder Endwert beziehen. Im Soll-Ist-Vergleich wird die Differenz üblicherweise auf den Sollwert bezogen. Diese Vereinbarung muss im Prüfbericht erkennbar sein.

Toleranzen verschiedener Ursachen dürfen nicht unüberlegt addiert werden. Bauteiltoleranz, Temperaturänderung und Messunsicherheit beschreiben unterschiedliche Effekte. Für eine erste sichere Grenze kann eine Worst-Case-Summe geeignet sein; für eine statistische Aussage wäre dagegen ein anderes Verfahren notwendig.

### Asymmetrische Grenzen

Nicht jede Spezifikation ist symmetrisch. Ein Regler kann beispielsweise **+2 % / −3 %** erlauben. Dann werden obere und untere Grenze getrennt berechnet. Auch Grenzwerte wie «höchstens 100 mA» haben nur eine relevante Richtung und dürfen nicht als symmetrische Toleranz interpretiert werden.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Toleranz- und Worst-Case-Rechnung
- Vergleich von Soll- und Messwert
- Bewertung von Wirkungsgrad und Drift

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Bei einem Spannungsteiler macht ein kleiner oberer und grosser unterer Widerstand die Ausgangsspannung maximal. Die umgekehrte Kombination macht sie minimal.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Widerstandstoleranz und Messwert beurteilen

Ein Widerstand besitzt den Nennwert **4,7 kΩ** und eine Toleranz von **±5 %**. Gemessen werden **4,82 kΩ**. Zuerst wird der zulässige Bereich bestimmt, danach der Messwert beurteilt.

**Gegeben:**

- Nennwert: **4,7 kΩ**
- Toleranz: **±5 %**
- Messwert: **4,82 kΩ**

#### 1. Formeln

$$
\Delta R = R_{\mathrm{N}}\cdot t
$$

$$
R_{\mathrm{min}} = R_{\mathrm{N}}-\Delta R
$$

$$
R_{\mathrm{max}} = R_{\mathrm{N}}+\Delta R
$$

#### 2. Werte einsetzen

Die Toleranz von 5 % wird als Dezimalzahl **0,05** eingesetzt:

$$
\Delta R =
4700\,\Omega\cdot0{,}05
$$

#### 3. Toleranz und Grenzwerte berechnen

$$
\Delta R = 235\,\Omega
$$

$$
R_{\mathrm{min}} =
4700\,\Omega-235\,\Omega =
4465\,\Omega
$$

$$
R_{\mathrm{max}} =
4700\,\Omega+235\,\Omega =
4935\,\Omega
$$

Die relative Abweichung des Messwerts beträgt:

$$
\delta_R =
\frac{4820\,\Omega-4700\,\Omega}
     {4700\,\Omega}
\cdot100\,\% =
2{,}55\,\%
$$

#### 4. Ergebnis

$$
\boxed{4465\,\Omega \le R \le 4935\,\Omega}
$$

$$
\boxed{\delta_R = +2{,}55\,\%}
$$

Der Messwert von **4,82 kΩ** liegt innerhalb des zulässigen Toleranzbereichs.

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

1. Berechne die Grenzen eines Widerstands von **10 kΩ ±1 %**.
2. Was bedeutet eine negative Abweichung?
3. Warum ist Toleranz nicht gleich Messunsicherheit?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
