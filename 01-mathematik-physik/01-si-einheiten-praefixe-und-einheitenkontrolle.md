# 01.1 – SI-Einheiten, Präfixe und Einheitenkontrolle

[← Zurück](README.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-zehnerpotenzen-und-wissenschaftliche-schreibweise.md)

## Lernziele

Nach dieser Lektion kannst du:

- SI-Grössen, Einheiten und Präfixe sicher verwenden
- Werte ohne Bedeutungsänderung umrechnen
- eine Rechnung mit Einheiten prüfen

## Einleitung

In Elektronikdatenblättern stehen Werte von Pikofarad bis Megaohm. Ein übersehenes Präfix kann ein Ergebnis um den Faktor tausend oder eine Million verändern. Einheiten sind deshalb Teil der technischen Aussage, nicht bloss eine Beschriftung hinter der Zahl.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **SI-Einheiten, Präfixe und Einheitenkontrolle** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Grösse, Zahlenwert und Einheit

Eine physikalische Angabe besteht aus Zahlenwert und Einheit, zum Beispiel $4{,}7\,\mathrm{k}\Omega$. Der Widerstand ist die Grösse, 4,7 der Zahlenwert und Kiloohm die Einheit mit Präfix. Erst gemeinsam ist die Aussage vollständig.

### Häufige Präfixe

| Präfix | Zeichen | Faktor | Beispiel |
|---|---:|---:|---:|
| pico | p | $10^{-12}$ | $22\,\mathrm{pF}$ |
| nano | n | $10^{-9}$ | $100\,\mathrm{nF}$ |
| mikro | µ | $10^{-6}$ | $10\,\mu\mathrm{A}$ |
| milli | m | $10^{-3}$ | $25\,\mathrm{mA}$ |
| kilo | k | $10^3$ | $4{,}7\,\mathrm{k}\Omega$ |
| mega | M | $10^6$ | $10\,\mathrm{M}\Omega$ |

Gross-/Kleinschreibung ist bedeutsam: $\mathrm{m}$ ist milli, $\mathrm{M}$ ist mega. Beim Umrechnen bleibt die physikalische Grösse gleich; nur Zahlenwert und Einheit ändern sich.

### Einheiten als Fehlerdetektor

Eine Gleichung muss auf beiden Seiten dieselbe Dimension besitzen. Bei $U=R\cdot I$ ergibt sich $\Omega\cdot\mathrm{A}=\mathrm{V}$. Passt die Einheit nicht, ist mindestens ein Rechenschritt oder eine Formel falsch.

### Mit Einheiten rechnen

Einheiten dürfen wie algebraische Faktoren behandelt werden. Werden Meter durch Sekunden geteilt, entsteht Meter pro Sekunde. Werden Volt durch Ampere geteilt, entsteht Ohm. Dieses Mitführen zwingt dazu, Eingangsgrössen korrekt umzuwandeln und macht sichtbar, ob die verwendete Beziehung überhaupt zur gesuchten Grösse passt.

Vor dem Einsetzen werden alle Werte entweder in zusammenpassende technische Einheiten oder in SI-Einheiten gebracht. Beide Wege sind zulässig, solange sie konsequent bleiben. Die praktische Beziehung $\frac{\mathrm{V}}{\mathrm{k}\Omega}=\mathrm{mA}$ ist schnell und sicher; ein Gemisch wie Volt, Ohm und Milliampere ohne Umrechnung führt dagegen zum Faktor-1000-Fehler.

### Sinnvolle Schreibweise wählen

Technische Werte werden so geschrieben, dass sie gut lesbar und schwer verwechselbar sind. $0{,}000001\,\mathrm{F}$ ist mathematisch korrekt, $1\,\mu\mathrm{F}$ aber leichter zu erfassen. Sehr viele oder sehr wenige signifikante Stellen erschweren den Vergleich. Die Schreibweise soll zur Genauigkeit der Angabe passen.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Auswahl von Bauteilwerten aus Datenblättern
- Beschriftung von Messachsen und Prüfberichten
- Umrechnung zwischen mV, V, µA und A

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Ein Schaltplan nennt $\mathrm{R1}=4\mathrm{k}7$. Das bedeutet $4{,}7\,\mathrm{k}\Omega=4700\,\Omega$, nicht $47\,\mathrm{k}\Omega$. Die Schreibweise ersetzt das Dezimalkomma und verhindert, dass es im Druck verschwindet.

## Berechnungsbeispiel

$3300\,\mu\mathrm{A}$ werden in Milliampere umgerechnet. Da $1\,\mathrm{mA}=1000\,\mu\mathrm{A}$, gilt $\frac{3300\,\mu\mathrm{A}}{1000}=3{,}3\,\mathrm{mA}$. Kontrolle: Die Einheit wird grösser, also muss der Zahlenwert kleiner werden.

## Praxisbezug

Suche an fünf realen Bauteilen oder Geräten Werte mit unterschiedlichen Präfixen. Übertrage sie in die SI-Basiseinheit und danach in eine gut lesbare technische Einheit.

## 🔗 Hardware ↔ Firmware

Registerwerte sind einheitenlos, aber Firmware rechnet sie in Volt, Ampere oder Sekunden um. Konstanten brauchen deshalb klare Einheiten im Namen oder in der Dokumentation. Eine Zeitangabe in Millisekunden darf nicht mit einer Angabe in Mikrosekunden verwechselt werden.

## Merksatz

> Zahlenwert und Einheit gehören zusammen; das Präfix ist ein Teil der Zahl.

## Häufige Fehler und Missverständnisse

- $\mathrm{m}$ und $\mathrm{M}$ verwechseln.
- Einheiten während der Rechnung weglassen.
- Dezimalpräfixe wie Zweierpotenzen behandeln.

## Zusammenfassung

SI-Einheiten machen technische Angaben vergleichbar. Präfixe verkürzen grosse und kleine Zahlen, während die Einheitenkontrolle viele Rechenfehler sichtbar macht.

## Übungsfragen

1. Wie viele Ohm sind 2,2 MΩ?
2. Warum ist 10 mA nicht dasselbe wie 10 MA?
3. Welche Einheit ergibt $\Omega\cdot\mathrm{A}$?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
