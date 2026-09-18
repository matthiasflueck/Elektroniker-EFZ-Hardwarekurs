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

Eine Zahl wird als `a × 10ⁿ` geschrieben, wobei der Betrag von `a` zwischen 1 und 10 liegt. Der Exponent sagt, wie weit das Dezimalzeichen verschoben wurde. `0,000 0047 A` wird zu `4,7 × 10⁻⁶ A`.

### Rechenregeln

Beim Multiplizieren werden Mantissen multipliziert und Exponenten addiert. Beim Dividieren werden Mantissen dividiert und Exponenten subtrahiert. Bei Addition müssen die Exponenten zuerst gleich gemacht werden.

### Grössenordnung

Vor dem Taschenrechner wird grob geschätzt. `3,3 V / 1 kΩ` muss im Milliamperebereich liegen, denn Volt durch Kiloohm ergibt Milliampere. Ein Ergebnis von 3300 A wäre offensichtlich falsch.

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

Ein Kondensatorwert `100 nF` entspricht `100 × 10⁻⁹ F = 1,0 × 10⁻⁷ F`. Beide Darstellungen bezeichnen denselben Wert; `100 nF` ist für Schaltpläne meist lesbarer.

## Berechnungsbeispiel

`(4,7 × 10³) × (2,0 × 10⁻³) = 9,4 × 10⁰ = 9,4`. Die Exponenten `3 + (−3)` heben sich auf. Eine Abschätzung `≈ 5 × 2 = 10` bestätigt die Grössenordnung.

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
2. Was ergibt `10⁶ / 10³`?
3. In welchem Strombereich liegt 5 V / 10 kΩ?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
