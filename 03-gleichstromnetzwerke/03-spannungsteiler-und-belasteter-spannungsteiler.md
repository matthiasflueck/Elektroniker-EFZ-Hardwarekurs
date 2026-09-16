# 03.3 – Spannungsteiler und belasteter Spannungsteiler

[← Zurück](02-kirchhoffsche-knoten-und-maschenregel.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-stromteiler-und-parallelzweige.md)

## Lernziele

Nach dieser Lektion kannst du:

- einen unbelasteten Spannungsteiler verstehen und dimensionieren
- die Wirkung einer Last oder eines Messeingangs berechnen
- beurteilen, wann ein Spannungsteiler keine geeignete Versorgung ist

## Warum ist das wichtig?

Spannungsteiler begegnen dir bei Sensorsignalen, Referenzpegeln, Batterieüberwachung und Eingangsbeschaltungen. Die Grundformel wirkt einfach, gilt aber nur dann direkt, wenn am Ausgang praktisch kein Strom entnommen wird. Genau diese Bedingung wird in realen Schaltungen oft übersehen.

Ein Spannungsteiler erzeugt keine «feste kleinere Versorgung». Er stellt einen Ausgangspegel bereit, dessen Wert von den Widerständen und von jeder angeschlossenen Last abhängt. Deshalb gehört zur Dimensionierung immer die Frage: Was wird am Ausgang angeschlossen, welchen Eingangswiderstand besitzt es und wie dynamisch ist die Belastung?

## Theorie

### Unbelasteter Teiler

Zwei Widerstände liegen in Reihe an der Eingangsspannung. Der Ausgang ist der Zwischenknoten gegen den unteren Bezugspunkt. Da im unbelasteten Fall derselbe Strom durch beide Widerstände fliesst, verteilt sich die Eingangsspannung proportional zu ihren Widerständen.

![Unbelasteter und belasteter Spannungsteiler mit Ausgangsknoten](../bilder/03-gleichstromnetzwerke/03-03-spannungsteiler.png)

`U_out = U_in · R_2 / (R_1 + R_2)`

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `U_in` | Eingangsspannung des Teilers | V |
| `U_out` | Ausgangsspannung gegen den unteren Bezugsknoten | V |
| `R_1` | oberer Widerstand | Ω |
| `R_2` | unterer Widerstand | Ω |

Der Quotient `R_2/(R_1+R_2)` heisst Teilverhältnis. Er liegt bei positiven Widerständen zwischen 0 und 1. Die Ausgangsspannung kann daher ohne aktive Bauteile nicht grösser als die Eingangsspannung werden.

### Belastung verändert den unteren Zweig

Eine Last `R_L` vom Ausgang nach GND liegt parallel zu `R_2`. Für die Berechnung wird zuerst `R_2L = R_2 || R_L` gebildet und dann dieser Ersatzwiderstand in die Teilerformel eingesetzt:

`U_out,bel = U_in · R_2L / (R_1 + R_2L)`

`R_L` bezeichnet den Lastwiderstand, `R_2L` den Ersatzwiderstand aus unterem Teilerwiderstand und Last. Weil `R_2L` kleiner als `R_2` ist, sinkt die Ausgangsspannung. Eine praktische Faustidee lautet: Der Lastwiderstand sollte deutlich, häufig mindestens um den Faktor zehn, grösser als der wirksame Ausgangswiderstand sein. Ob das genügt, entscheidet die erlaubte Abweichung.

### Ausgangswiderstand und Messgerätebelastung

Vom Ausgang aus gesehen besitzt der Teiler bei kurzgeschlossener idealer Quelle den Widerstand `R_out = R_1 || R_2`. Ein Voltmeter mit endlichem Eingangswiderstand wird selbst zur Last. Bei 10 MΩ ist die Wirkung an einem 10-kΩ-Teiler meist klein, an einem Teiler im Megaohmbereich jedoch messbar.

Hohe Widerstandswerte sparen Ruhestrom, erhöhen aber Empfindlichkeit gegenüber Leckströmen, Störeinkopplung und ADC-Abtaststrom. Niedrige Werte belasten die Quelle und erzeugen Verlustleistung. Die Auswahl ist daher ein Kompromiss.

### Dynamische Lasten

Ein ADC-Eingang ist nicht nur ein idealer Widerstand. Beim Abtasten muss ein interner Kondensator über die Quellimpedanz geladen werden. Ein statisch korrekt berechneter Teiler kann deshalb bei kurzer Abtastzeit falsche Werte liefern. Ein Stützkondensator oder Pufferverstärker kann helfen; die zulässige Quellimpedanz steht im MCU-Datenblatt.

## Anschauliches Beispiel

Ein Potentiometer ist ein verstellbarer Spannungsteiler. Zwischen seinen Endanschlüssen liegt die Versorgung; der Schleifer greift einen Anteil ab. Wird der Schleifer stark belastet, ist seine Stellung nicht mehr proportional zur Ausgangsspannung. Dieses Verhalten ist dieselbe Belastungswirkung wie bei zwei festen Widerständen.

## Berechnungsbeispiel

Zuerst wird der unbelastete Sollwert bestimmt. Danach lässt sich klar erkennen, welche Änderung allein durch die zusätzliche Last entsteht.

`R_1 = 10 kΩ` und `R_2 = 10 kΩ` teilen 10 V unbelastet auf 5 V. Eine Last von `R_L = 10 kΩ` ergibt `R_2L = 10 kΩ || 10 kΩ = 5 kΩ`. Damit wird `U_out,bel = 10 V · 5 kΩ/(10 kΩ+5 kΩ) = 3,33 V`. Die Last halbiert also nicht nur einen Strom, sondern verändert das Teilverhältnis deutlich.

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
