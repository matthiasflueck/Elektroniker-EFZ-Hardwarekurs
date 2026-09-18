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

$$
U_{\mathrm{out}} =
U_{\mathrm{in}}
\frac{R_2}{R_1+R_2}
$$

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| $U_{\mathrm{in}}$ | Eingangsspannung des Teilers | V |
| $U_{\mathrm{out}}$ | Ausgangsspannung gegen den unteren Bezugsknoten | V |
| $R_1$ | oberer Widerstand | Ω |
| $R_2$ | unterer Widerstand | Ω |

Der Quotient $R_2/(R_1+R_2)$ heisst Teilverhältnis. Er liegt bei positiven Widerständen zwischen 0 und 1. Die Ausgangsspannung kann daher ohne aktive Bauteile nicht grösser als die Eingangsspannung werden.

### Belastung verändert den unteren Zweig

Eine Last $R_L$ vom Ausgang nach GND liegt parallel zu $R_2$. Für die Berechnung wird zuerst der Ersatzwiderstand des unteren Zweigs gebildet:

$$
R_{2L} = R_2\parallel R_L =
\frac{R_2\cdot R_L}
     {R_2+R_L}
$$

Danach wird dieser Ersatzwiderstand in die Teilerformel eingesetzt:

$$
U_{\mathrm{out,bel}} =
U_{\mathrm{in}}
\frac{R_{2L}}{R_1+R_{2L}}
$$

$R_L$ bezeichnet den Lastwiderstand, $R_{2L}$ den Ersatzwiderstand aus unterem Teilerwiderstand und Last. Weil $R_{2L}$ kleiner als $R_2$ ist, sinkt die Ausgangsspannung. Eine praktische Faustidee lautet: Der Lastwiderstand sollte deutlich, häufig mindestens um den Faktor zehn, grösser als der wirksame Ausgangswiderstand sein. Ob das genügt, entscheidet die erlaubte Abweichung.

### Ausgangswiderstand und Messgerätebelastung

Vom Ausgang aus gesehen besitzt der Teiler bei kurzgeschlossener idealer Quelle den Widerstand:

$$
R_{\mathrm{out}} = R_1\parallel R_2
$$

Ein Voltmeter mit endlichem Eingangswiderstand wird selbst zur Last. Bei 10 MΩ ist die Wirkung an einem 10-kΩ-Teiler meist klein, an einem Teiler im Megaohmbereich jedoch messbar.

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

### 🧮 Berechnungsbeispiel: Belasteten Spannungsteiler berechnen

Ein Spannungsteiler aus zweimal **10 kΩ** liegt an **10 V**. Danach wird der Ausgang mit weiteren **10 kΩ** gegen GND belastet. Gesucht sind Leerlauf- und belastete Ausgangsspannung.

**Gegeben:**

- Eingangsspannung: **10 V**
- oberer Widerstand $R_1$: **10 kΩ**
- unterer Widerstand $R_2$: **10 kΩ**
- Lastwiderstand $R_L$: **10 kΩ**

#### 1. Formel

$$
U_{\mathrm{out}} =
U_{\mathrm{in}}
\frac{R_2}{R_1+R_2}
$$

$$
R_{2L} = R_2\parallel R_L
$$

$$
U_{\mathrm{out,bel}} =
U_{\mathrm{in}}
\frac{R_{2L}}{R_1+R_{2L}}
$$

#### 2. Werte einsetzen

$$
U_{\mathrm{out}} =
10~\mathrm{V}
\frac{10~\mathrm{k}\Omega}
     {10~\mathrm{k}\Omega+10~\mathrm{k}\Omega}
$$

$$
R_{2L} = 10~\mathrm{k}\Omega\parallel10~\mathrm{k}\Omega
$$

$$
U_{\mathrm{out,bel}} =
10~\mathrm{V}
\frac{5~\mathrm{k}\Omega}
     {10~\mathrm{k}\Omega+5~\mathrm{k}\Omega}
$$

#### 3. Berechnen

$$
U_{\mathrm{out}} = 5.0~\mathrm{V}
$$

$$
R_{2L} = 5.0~\mathrm{k}\Omega
$$

$$
U_{\mathrm{out,bel}} \approx 3.33~\mathrm{V}
$$

#### 4. Ergebnis

$$
\boxed{U_{\mathrm{out}} = 5.0~\mathrm{V}}
$$

$$
\boxed{U_{\mathrm{out,bel}} \approx 3.33~\mathrm{V}}
$$

Die zusätzliche Last verkleinert den wirksamen unteren Widerstand und verändert dadurch das Teilverhältnis deutlich.

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
