# 03.3 – Spannungsteiler und belasteter Spannungsteiler

[← Zurück](02-kirchhoffsche-knoten-und-maschenregel.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-stromteiler-und-parallelzweige.md)

## Lernziele

Nach dieser Lektion kannst du:

- einen unbelasteten Spannungsteiler verstehen und dimensionieren
- die Wirkung einer Last oder eines Messeingangs berechnen
- beurteilen, wann ein Spannungsteiler keine geeignete Versorgung ist

## Einleitung

Spannungsteiler begegnen dir bei Sensorsignalen, Referenzpegeln, Batterieüberwachung und Eingangsbeschaltungen. Die Grundformel wirkt einfach, gilt aber nur dann direkt, wenn am Ausgang praktisch kein Strom entnommen wird. Genau diese Bedingung wird in realen Schaltungen oft übersehen.

Ein Spannungsteiler erzeugt keine «feste kleinere Versorgung». Er stellt einen Ausgangspegel bereit, dessen Wert von den Widerständen und von jeder angeschlossenen Last abhängt. Deshalb gehört zur Dimensionierung immer die Frage: Was wird am Ausgang angeschlossen, welchen Eingangswiderstand besitzt es und wie dynamisch ist die Belastung?


<!-- context-expansion-2026 -->
Eine Baugruppe besteht aus verbundenen Quellen, Bauteilen und Lasten. Gleichstromnetzwerke liefern die Regeln, mit denen sich unbekannte Ströme und Spannungen aus Topologie und Bauteilwerten ableiten lassen. Dabei sind Knoten, Maschen und Rückstrompfade ebenso wichtig wie die Zahlenwerte.

Beim Thema **Spannungsteiler und belasteter Spannungsteiler** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Netzwerke werden aus Sicht ihrer Topologie gelesen: Bauteile in demselben Strompfad liegen in Reihe, Bauteile an denselben zwei Knoten parallel. Erst danach werden Ersatzwerte, Knotenbilanzen oder Maschengleichungen gebildet. Diese Reihenfolge verhindert viele Vorzeichen- und Zuordnungsfehler.

### Unbelasteter Teiler

Zwei Widerstände liegen in Reihe an der Eingangsspannung. Der Ausgang ist der Zwischenknoten gegen den unteren Bezugspunkt. Da im unbelasteten Fall derselbe Strom durch beide Widerstände fliesst, verteilt sich die Eingangsspannung proportional zu ihren Widerständen.

![Unbelasteter und belasteter Spannungsteiler mit Ausgangsknoten](../bilder/03-gleichstromnetzwerke/03-03-spannungsteiler.png)

`Uout = Uin · R2 / (R1 + R2)`

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `Uin` | Eingangsspannung des Teilers | V |
| `Uout` | Ausgangsspannung gegen den unteren Bezugsknoten | V |
| `R1` | oberer Widerstand | Ω |
| `R2` | unterer Widerstand | Ω |

Der Quotient `R2/(R1+R2)` heisst Teilverhältnis. Er liegt bei positiven Widerständen zwischen 0 und 1. Die Ausgangsspannung kann daher ohne aktive Bauteile nicht grösser als die Eingangsspannung werden.

### Belastung verändert den unteren Zweig

Eine Last `RL` vom Ausgang nach GND liegt parallel zu `R2`. Für die Berechnung wird zuerst `R2L = R2 || RL` gebildet und dann dieser Ersatzwiderstand in die Teilerformel eingesetzt:

`Uout,bel = Uin · R2L / (R1 + R2L)`

`RL` bezeichnet den Lastwiderstand, `R2L` den Ersatzwiderstand aus unterem Teilerwiderstand und Last. Weil `R2L` kleiner als `R2` ist, sinkt die Ausgangsspannung. Eine praktische Faustidee lautet: Der Lastwiderstand sollte deutlich, häufig mindestens um den Faktor zehn, grösser als der wirksame Ausgangswiderstand sein. Ob das genügt, entscheidet die erlaubte Abweichung.

### Ausgangswiderstand und Messgerätebelastung

Vom Ausgang aus gesehen besitzt der Teiler bei kurzgeschlossener idealer Quelle den Widerstand `Rout = R1 || R2`. Ein Voltmeter mit endlichem Eingangswiderstand wird selbst zur Last. Bei 10 MΩ ist die Wirkung an einem 10-kΩ-Teiler meist klein, an einem Teiler im Megaohmbereich jedoch messbar.

Hohe Widerstandswerte sparen Ruhestrom, erhöhen aber Empfindlichkeit gegenüber Leckströmen, Störeinkopplung und ADC-Abtaststrom. Niedrige Werte belasten die Quelle und erzeugen Verlustleistung. Die Auswahl ist daher ein Kompromiss.

### Dynamische Lasten

Ein ADC-Eingang ist nicht nur ein idealer Widerstand. Beim Abtasten muss ein interner Kondensator über die Quellimpedanz geladen werden. Ein statisch korrekt berechneter Teiler kann deshalb bei kurzer Abtastzeit falsche Werte liefern. Ein Stützkondensator oder Pufferverstärker kann helfen; die zulässige Quellimpedanz steht im MCU-Datenblatt.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Erzeugen von Referenz- und Sensorspannungen
- Pegelvorgabe für ADC- oder Komparatoreingänge
- Bewertung der Belastung durch Messgerät oder Folgestufe

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein Potentiometer ist ein verstellbarer Spannungsteiler. Zwischen seinen Endanschlüssen liegt die Versorgung; der Schleifer greift einen Anteil ab. Wird der Schleifer stark belastet, ist seine Stellung nicht mehr proportional zur Ausgangsspannung. Dieses Verhalten ist dieselbe Belastungswirkung wie bei zwei festen Widerständen.

## Berechnungsbeispiel

Zuerst wird der unbelastete Sollwert bestimmt. Danach lässt sich klar erkennen, welche Änderung allein durch die zusätzliche Last entsteht.

`R1 = 10 kΩ` und `R2 = 10 kΩ` teilen 10 V unbelastet auf 5 V. Eine Last von `RL = 10 kΩ` ergibt `R2L = 10 kΩ || 10 kΩ = 5 kΩ`. Damit wird `Uout,bel = 10 V · 5 kΩ/(10 kΩ+5 kΩ) = 3,33 V`. Die Last halbiert also nicht nur einen Strom, sondern verändert das Teilverhältnis deutlich.

## Praxisbezug

Miss denselben Teiler unbelastet, mit verschiedenen Lastwiderständen und mit zwei Messgeräten unterschiedlicher Eingangsimpedanz. Dokumentiere jeweils Quelle, Widerstandswerte, Last, erwartete Ausgangsspannung und Istwert. So wird die Messgerätebelastung direkt sichtbar.

## 🔗 Hardware ↔ Firmware

Bei einer 12-V-Batteriemessung skaliert der Teiler die Spannung in den zulässigen ADC-Bereich. Die Firmware muss das Teilverhältnis und die ADC-Referenz für die Rückrechnung kennen. Abweichungen können von Widerstandstoleranz, Quellimpedanz, Referenz, Abtastzeit oder einer falschen Skalierung im Code stammen. Der [STM32-Programmierkurs](https://github.com/matthiasflueck/STM32-Programmierkurs) vertieft die ADC-Konfiguration; hier steht die reale Eingangsbeschaltung im Mittelpunkt.

## Merksatz

> Jeder angeschlossene Eingang belastet den Spannungsteiler – manchmal vernachlässigbar, manchmal entscheidend.

## Häufige Fehler und Missverständnisse

- Die unbelastete Formel trotz niederohmiger Last verwenden.
- Einen Spannungsteiler als Versorgung für wechselnde Lasten einsetzen.
- ADC-Quellimpedanz und Abtastkondensator ignorieren.
- Nur das Widerstandsverhältnis, nicht Ruhestrom und Verlustleistung prüfen.

## Zusammenfassung

Ein Spannungsteiler stellt einen definierten Anteil der Eingangsspannung bereit, solange die Belastung berücksichtigt wird. Der Ausgangswiderstand erklärt, wie stark Last, Messgerät oder ADC den Pegel verändern. Eine gute Dimensionierung verbindet Teilverhältnis, Stromverbrauch, Dynamik und Toleranz.

## Übungsfragen

1. Weshalb sinkt die Ausgangsspannung bei einer Last gegen GND?
2. Berechne einen Teiler von 12 V auf 3 V mit insgesamt ungefähr 100 kΩ.
3. Welchen Ausgangswiderstand besitzt ein Teiler aus zweimal 47 kΩ?
4. Warum kann ein ADC trotz korrekter Leerlaufspannung einen falschen Wert messen?

Weitere Aufgaben: [Übungen zu Modul 03](../uebungen/modul-03.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02–03`, `b1-LK06`, `b1-LK08`, `b4-LK01`, `b4-LK06–10`
- Nachweise: belasteter Teiler, Messgerätevergleich und ADC-Transfer; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
