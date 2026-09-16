# 01.1 – SI-Einheiten, Präfixe und Einheitenkontrolle

[← Zurück](README.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-zehnerpotenzen-und-wissenschaftliche-schreibweise.md)

## Lernziele

Nach dieser Lektion kannst du:

- SI-Grössen, Einheiten und Präfixe sicher verwenden
- Werte ohne Bedeutungsänderung umrechnen
- eine Rechnung mit Einheiten prüfen

## Warum ist das wichtig?

In Elektronikdatenblättern stehen Werte von Pikofarad bis Megaohm. Ein übersehenes Präfix kann ein Ergebnis um den Faktor tausend oder eine Million verändern. Einheiten sind deshalb Teil der technischen Aussage, nicht bloss eine Beschriftung hinter der Zahl.

## Theorie

### Grösse, Zahlenwert und Einheit

Eine physikalische Angabe besteht aus Zahlenwert und Einheit, zum Beispiel `4,7 kΩ`. Der Widerstand ist die Grösse, 4,7 der Zahlenwert und Kiloohm die Einheit mit Präfix. Erst gemeinsam ist die Aussage vollständig.

### Häufige Präfixe

| Präfix | Zeichen | Faktor | Beispiel |
|---|---:|---:|---:|
| pico | p | `10⁻¹²` | `22 pF` |
| nano | n | `10⁻⁹` | `100 nF` |
| mikro | µ | `10⁻⁶` | `10 µA` |
| milli | m | `10⁻³` | `25 mA` |
| kilo | k | `10³` | `4,7 kΩ` |
| mega | M | `10⁶` | `10 MΩ` |

Gross-/Kleinschreibung ist bedeutsam: `m` ist milli, `M` ist mega. Beim Umrechnen bleibt die physikalische Grösse gleich; nur Zahlenwert und Einheit ändern sich.

### Einheiten als Fehlerdetektor

Eine Gleichung muss auf beiden Seiten dieselbe Dimension besitzen. Bei `U = R · I` ergibt `Ω · A = V`. Passt die Einheit nicht, ist mindestens ein Rechenschritt oder eine Formel falsch.

### Mit Einheiten rechnen

Einheiten dürfen wie algebraische Faktoren behandelt werden. Werden Meter durch Sekunden geteilt, entsteht Meter pro Sekunde. Werden Volt durch Ampere geteilt, entsteht Ohm. Dieses Mitführen zwingt dazu, Eingangsgrössen korrekt umzuwandeln und macht sichtbar, ob die verwendete Beziehung überhaupt zur gesuchten Grösse passt.

Vor dem Einsetzen werden alle Werte entweder in zusammenpassende technische Einheiten oder in SI-Einheiten gebracht. Beide Wege sind zulässig, solange sie konsequent bleiben. Die praktische Beziehung `V/kΩ = mA` ist schnell und sicher; ein Gemisch wie Volt, Ohm und Milliampere ohne Umrechnung führt dagegen zum Faktor-1000-Fehler.

### Sinnvolle Schreibweise wählen

Technische Werte werden so geschrieben, dass sie gut lesbar und schwer verwechselbar sind. `0,000001 F` ist mathematisch korrekt, `1 µF` aber leichter zu erfassen. Sehr viele oder sehr wenige signifikante Stellen erschweren den Vergleich. Die Schreibweise soll zur Genauigkeit der Angabe passen.

## Anschauliches Beispiel

Ein Schaltplan nennt `R1 = 4k7`. Das bedeutet `4,7 kΩ = 4700 Ω`, nicht 47 kΩ. Die Schreibweise ersetzt das Dezimalkomma und verhindert, dass es im Druck verschwindet.

## Berechnungsbeispiel

`3300 µA` werden in Milliampere umgerechnet. Da `1 mA = 1000 µA`, gilt `3300 µA ÷ 1000 = 3,3 mA`. Kontrolle: Die Einheit wird grösser, also muss der Zahlenwert kleiner werden.

## Praxisbezug

Suche an fünf realen Bauteilen oder Geräten Werte mit unterschiedlichen Präfixen. Übertrage sie in die SI-Basiseinheit und danach in eine gut lesbare technische Einheit.

## 🔗 Hardware ↔ Firmware

Registerwerte sind einheitenlos, aber Firmware rechnet sie in Volt, Ampere oder Sekunden um. Konstanten brauchen deshalb klare Einheiten im Namen oder in der Dokumentation. `timeout_ms` und `timeout_us` dürfen nicht verwechselt werden.

## Merksatz

> Zahlenwert und Einheit gehören zusammen; das Präfix ist ein Teil der Zahl.

## Häufige Fehler und Missverständnisse

- `m` und `M` verwechseln.
- Einheiten während der Rechnung weglassen.
- Dezimalpräfixe wie Zweierpotenzen behandeln.

## Zusammenfassung

SI-Einheiten machen technische Angaben vergleichbar. Präfixe verkürzen grosse und kleine Zahlen, während die Einheitenkontrolle viele Rechenfehler sichtbar macht.

## Übungsfragen

1. Wie viele Ohm sind 2,2 MΩ?
2. Warum ist 10 mA nicht dasselbe wie 10 MA?
3. Welche Einheit ergibt Ω·A?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
