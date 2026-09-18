# 01.2 – Zehnerpotenzen und wissenschaftliche Schreibweise

[← Zurück](01-si-einheiten-praefixe-und-einheitenkontrolle.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-formeln-verstehen-und-sicher-umstellen.md)

## Lernziele

Nach dieser Lektion kannst du:

- Zahlen in wissenschaftlicher Schreibweise darstellen
- mit Zehnerpotenzen multiplizieren und dividieren
- Grössenordnungen vor einer Detailrechnung abschätzen

## Einleitung

Zwischen einem Leckstrom von Nanoampere und einem Motorstrom von Ampere liegen neun Zehnerpotenzen. Die wissenschaftliche Schreibweise macht solche Unterschiede sichtbar und verhindert lange Folgen von Nullen.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **Zehnerpotenzen und wissenschaftliche Schreibweise** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Mantisse und Exponent

Eine Zahl wird in wissenschaftlicher Schreibweise dargestellt als:

$$
x = a \cdot 10^n
$$

Dabei liegt der Betrag der Mantisse $a$ zwischen 1 und 10. Der Exponent $n$ sagt, wie weit das Dezimalzeichen verschoben wurde. Ein Beispiel:

$$
0{,}000\,0047\,\mathrm{A} =
4{,}7 \cdot 10^{-6}\,\mathrm{A}
$$

### Rechenregeln

Beim Multiplizieren werden Mantissen multipliziert und Exponenten addiert:

$$
(a\cdot10^m)\cdot(b\cdot10^n) =
(a\cdot b)\cdot10^{m+n}
$$

Beim Dividieren werden Mantissen dividiert und Exponenten subtrahiert:

$$
\frac{a\cdot10^m}{b\cdot10^n} =
\frac{a}{b}\cdot10^{m-n}
$$

Bei einer Addition müssen die Exponenten zuerst gleich gemacht werden.

### Grössenordnung

Vor dem Taschenrechner wird grob geschätzt. Der Ausdruck

$$
\frac{3{,}3\,\mathrm{V}}
     {1\,\mathrm{k}\Omega}
$$

muss im Milliamperebereich liegen, denn Volt durch Kiloohm ergibt Milliampere. Ein Ergebnis von **3300 A** wäre offensichtlich falsch.

### Das Dezimalzeichen bewusst verschieben

Beim Wechsel zur wissenschaftlichen Schreibweise wird das Dezimalzeichen so verschoben, dass links genau eine von null verschiedene Ziffer steht. Jede Stelle nach links erhöht den Exponenten um eins; jede Stelle nach rechts verringert ihn um eins. Zahl und Zehnerpotenz ändern sich gemeinsam, der Wert bleibt gleich.

Bei technischen Präfixen sind Dreierschritte besonders wichtig. Mikro, Milli, Basis, Kilo und Mega unterscheiden sich jeweils um drei Zehnerpotenzen. Ein Wechsel um eine Präfixstufe verändert den Zahlenwert daher um den Faktor 1000, nicht um zehn.

### Überschlagsrechnung vor der exakten Rechnung

Für die Schätzung werden Mantissen grob gerundet. Aus 4,7 wird etwa 5, aus 2,2 etwa 2. Der Exponent bleibt bewusst sichtbar. Stimmt das exakte Ergebnis nicht mit diesem groben Bereich überein, werden Eingabe und Potenzrechnung geprüft, bevor das Resultat weiterverwendet wird.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Darstellung sehr kleiner Leckströme
- Berechnung grosser Widerstandsbereiche
- Plausibilisierung von Frequenz- und Zeitangaben

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Ein Kondensatorwert von **100 nF** lässt sich in wissenschaftlicher Schreibweise ausdrücken als:

$$
100\,\mathrm{nF} =
100\cdot10^{-9}\,\mathrm{F} =
1{,}0\cdot10^{-7}\,\mathrm{F}
$$

Beide Darstellungen bezeichnen denselben Wert; **100 nF** ist für Schaltpläne meist lesbarer.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Zahlen in wissenschaftlicher Schreibweise multiplizieren

Zwei Zahlen in wissenschaftlicher Schreibweise sollen miteinander multipliziert werden.

**Gegeben:**

- erster Faktor: **4,7 · 10³**
- zweiter Faktor: **2,0 · 10⁻³**

#### 1. Rechenregel

$$
(a\cdot10^m)\cdot(b\cdot10^n) =
(a\cdot b)\cdot10^{m+n}
$$

#### 2. Werte einsetzen

$$
(4{,}7\cdot10^3)\cdot(2{,}0\cdot10^{-3}) =
(4{,}7\cdot2{,}0)\cdot10^{3+(-3)}
$$

#### 3. Mantisse und Exponent berechnen

$$
4{,}7\cdot2{,}0 = 9{,}4
$$

$$
3+(-3)=0
$$

Damit folgt:

$$
9{,}4\cdot10^0 = 9{,}4
$$

#### 4. Ergebnis

$$
\boxed{9{,}4}
$$

**Plausibilitätskontrolle:** Die Überschlagsrechnung bestätigt die Grössenordnung:

$$
5\cdot2\approx10
$$

## Praxisbezug

Rechne zehn Werte zwischen pF und MΩ ohne Taschenrechner in wissenschaftliche Schreibweise um. Prüfe anschliessend mit einem zweiten Rechenweg.

## Merksatz

> Erst Grössenordnung schätzen, dann exakt rechnen.

## Häufige Fehler und Missverständnisse

- Beim Dividieren die Exponenten addieren.
- Eine Mantisse grösser als 10 stehen lassen.
- Negativen Exponenten mit negativem Zahlenwert verwechseln.

## Zusammenfassung

Wissenschaftliche Schreibweise trennt signifikanten Zahlenwert und Grössenordnung. Die Potenzregeln vereinfachen Rechnungen über viele Präfixbereiche.

## Übungsfragen

1. Schreibe 0,00047 in wissenschaftlicher Form.
2. Berechne:

   $$
   \frac{10^6}{10^3}
   $$

3. In welchem Strombereich liegt der folgende Quotient?

   $$
   \frac{5\,\mathrm{V}}
        {10\,\mathrm{k}\Omega}
   $$

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
