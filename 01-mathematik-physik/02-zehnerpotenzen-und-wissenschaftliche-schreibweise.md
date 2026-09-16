# 01.2 – Zehnerpotenzen und wissenschaftliche Schreibweise

[← Zurück](01-si-einheiten-praefixe-und-einheitenkontrolle.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-formeln-verstehen-und-sicher-umstellen.md)

## Lernziele

Nach dieser Lektion kannst du:

- Zahlen in wissenschaftlicher Schreibweise darstellen
- mit Zehnerpotenzen multiplizieren und dividieren
- Grössenordnungen vor einer Detailrechnung abschätzen

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Vorherige Lektionen dieses Moduls.

## Warum ist das wichtig?

Zwischen einem Leckstrom von Nanoampere und einem Motorstrom von Ampere liegen neun Zehnerpotenzen. Die wissenschaftliche Schreibweise macht solche Unterschiede sichtbar und verhindert lange Folgen von Nullen.

## Theorie

### Mantisse und Exponent

Eine Zahl wird als `a × 10ⁿ` geschrieben, wobei der Betrag von `a` zwischen 1 und 10 liegt. Der Exponent sagt, wie weit das Dezimalzeichen verschoben wurde. `0,000 0047 A` wird zu `4,7 × 10⁻⁶ A`.

### Rechenregeln

Beim Multiplizieren werden Mantissen multipliziert und Exponenten addiert. Beim Dividieren werden Mantissen dividiert und Exponenten subtrahiert. Bei Addition müssen die Exponenten zuerst gleich gemacht werden.

### Grössenordnung

Vor dem Taschenrechner wird grob geschätzt. `3,3 V / 1 kΩ` muss im Milliamperebereich liegen, denn Volt durch Kiloohm ergibt Milliampere. Ein Ergebnis von 3300 A wäre offensichtlich falsch.

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
