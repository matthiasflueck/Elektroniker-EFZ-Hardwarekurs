# 04.6 – NTC und PTC

[← Zurück](05-smd-widerstaende-und-potentiometer.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-ldr-und-weitere-widerstandssensoren.md)

## Lernziele

Nach dieser Lektion kannst du:

- das unterschiedliche Temperaturverhalten von NTC und PTC erklären
- einen NTC mit Beta-Modell und Kennlinie auswerten
- Eigenerwärmung, Messstrom und Schutzanwendung berücksichtigen

## Einleitung

Temperaturabhängige Widerstände werden als Sensoren, Einschaltstrombegrenzer und Schutzbauteile eingesetzt. Die Bezeichnungen NTC und PTC sagen zunächst nur, in welche Richtung sich der Widerstand mit steigender Temperatur verändert. Kennlinienform, Nennwert und Belastbarkeit hängen vom konkreten Bauteil ab.

Ein Temperatursensor soll möglichst die Umgebung messen. Der dazu verwendete Messstrom erwärmt ihn jedoch selbst. Ein Leistungs-NTC zur Einschaltstrombegrenzung nutzt Eigenerwärmung dagegen absichtlich. Gleicher Grundeffekt, aber völlig unterschiedliche Auslegung.


<!-- context-expansion-2026 -->
Ein Widerstand ist nicht nur ein Zahlenwert in Ohm. Technologie, Toleranz, Temperatur, Spannung, Pulsenergie, Bauform und Alterung entscheiden, ob er seine Aufgabe zuverlässig erfüllt. Widerstandssensoren nutzen dieselben Abhängigkeiten gezielt als Messprinzip.

Beim Thema **NTC und PTC** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Bei der Bauteilauswahl werden Nennwert und Bauform mit den realen Betriebsbedingungen verknüpft. Neben dem Normalbetrieb werden Toleranz, Temperatur, Verlustleistung, kurzzeitige Überlast und Fehlerfall geprüft. Das Datenblatt ist dabei Teil der Schaltungsauslegung.

### NTC: negativer Temperaturkoeffizient

Bei einem NTC sinkt der Widerstand mit steigender Temperatur. Viele Mess-NTCs besitzen bei der Referenztemperatur 25 °C einen angegebenen Nennwiderstand `R25`. Ihre Kennlinie ist stark nichtlinear.

Für einen begrenzten Bereich kann das Beta-Modell verwendet werden:

`R(T) = R0 · exp[B·(1/T − 1/T0)]`

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `R(T)` | NTC-Widerstand bei absoluter Temperatur `T` | Ω |
| `R0` | Widerstand bei der Referenztemperatur `T0` | Ω |
| `B` | material- und bereichsabhängige Beta-Konstante | K |
| `T`, `T0` | absolute Temperaturen | K |
| `exp` | Exponentialfunktion zur Basis `e` | – |

Für das Modell müssen Temperaturen in Kelvin eingesetzt werden: `T[K] = ϑ[°C] + 273,15`. Der B-Wert gilt nur für den spezifizierten Temperaturbereich. Für höhere Genauigkeit werden Herstellerkennlinien, Tabellen oder die Steinhart-Hart-Gleichung verwendet.

![Typische qualitative Widerstandskennlinien von NTC und PTC](../bilder/04-widerstaende-sensoren/04-06-ntc-ptc-kennlinien.png)

### PTC: positiver Temperaturkoeffizient

Bei einem PTC steigt der Widerstand mit der Temperatur. Metallische Widerstandssensoren wie Pt100 nutzen ein vergleichsweise berechenbares positives Verhalten zur Temperaturmessung. Keramische PTCs können oberhalb einer charakteristischen Temperatur sehr steil ansteigen und als selbstregelnde Heizelemente oder Schutzbauteile dienen.

Ein PTC ist daher nicht einfach «ein NTC mit umgekehrtem Vorzeichen». Material, Kennlinienform und Einsatzgebiet müssen aus dem Datenblatt hervorgehen.

### Spannungsteiler als Messschaltung

Ein NTC wird häufig mit einem Festwiderstand als Spannungsteiler betrieben. Je nach Position steigt oder fällt die Ausgangsspannung mit der Temperatur.

![NTC-Spannungsteiler mit ADC, Messstrom und Eigenerwärmung](../bilder/04-widerstaende-sensoren/04-06-ntc-adc-teiler.png)

Liegt der NTC unten gegen GND, gilt `Uout = Uin·RNTC/(Rfix+RNTC)`. Mit steigender Temperatur sinkt `RNTC` und damit `Uout`. Der Festwiderstand wird oft in der Nähe des NTC-Werts im interessierenden Temperaturzentrum gewählt, um dort eine gute Empfindlichkeit zu erhalten. Die genaue Wahl hängt von Messbereich, ADC und zulässigem Strom ab.

### Eigenerwärmung und thermische Zeitkonstante

Die Leistung `P = I²R` erwärmt den Sensor. Der Datenblattparameter Dissipationskonstante beschreibt näherungsweise, wie viel Leistung pro Temperaturerhöhung an die Umgebung abgegeben werden kann. Luftströmung, Kontakt zum Messobjekt und Gehäuse verändern diesen Wert.

Temperaturänderungen erscheinen ausserdem verzögert. Die thermische Zeitkonstante beschreibt, wie schnell der Sensor einem Temperatursprung folgt. Sie ist nicht mit einer elektrischen RC-Zeitkonstante identisch, obwohl beide einen zeitlichen Annäherungsvorgang beschreiben.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Temperaturmessung an Akku, Motor oder Regler
- Einschaltstrombegrenzung mit PTC/NTC
- Übertemperatur- und Frostüberwachung

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein 10-kΩ-NTC bei 25 °C bildet mit 10 kΩ einen halben Teiler. Wird er wärmer, sinkt sein Widerstand und – bei Position gegen GND – auch die Ausgangsspannung. Wird der NTC nach oben an die Versorgung gesetzt, kehrt sich die Signalrichtung um.

## Berechnungsbeispiel

Für einen rein didaktischen NTC seien `R0 = 10 kΩ` bei `T0 = 298,15 K` und `B = 3950 K` gegeben. Bei 50 °C ist `T = 323,15 K`. Das Beta-Modell ergibt ungefähr `R(50 °C) ≈ 3,59 kΩ`. Mit `Rfix = 10 kΩ` und 3,3 V entstehen etwa `0,872 V`. Für eine reale Entwicklung werden die konkreten Herstellerdaten verwendet.

## Praxisbezug

Im Modulversuch wird eine NTC-Kennlinie bei mehreren stabilisierten Temperaturen aufgenommen. Die Temperatur wird mit einem Referenzmessgerät bestimmt. Der Ohmmeter-Messstrom beziehungsweise Teilerstrom bleibt klein, und vor jeder Ablesung wird das thermische Einschwingen abgewartet.

## 🔗 Hardware ↔ Firmware

Der ADC misst eine Spannung, nicht direkt Temperatur. Firmware rechnet zuerst über Referenzspannung und Teilerschaltung zum Widerstand zurück und danach über Tabelle oder Modell zur Temperatur. Fehlerquellen sind Widerstandstoleranz, ADC-Referenz, Eigenerwärmung, falsche NTC-Position und eine Celsius/Kelvin-Verwechslung.

## Merksatz

> NTC und PTC beschreiben die Richtung der Widerstandsänderung; die konkrete Kennlinie liefert das Datenblatt.

## Häufige Fehler und Missverständnisse

- Celsiuswerte direkt in das Beta-Modell einsetzen.
- Jeden PTC als linearen Temperatursensor behandeln.
- Eigenerwärmung und Einschwingzeit bei der Kennlinienmessung ignorieren.
- Die Signalrichtung des Teilers nicht aus der NTC-Position ableiten.

## Zusammenfassung

NTCs besitzen fallende, stark nichtlineare Widerstandskennlinien; PTCs steigen und können sehr unterschiedliche Materialien und Funktionen besitzen. Messschaltung, Modell, thermische Kopplung und Eigenerwärmung bestimmen gemeinsam die erreichbare Qualität.

## Übungsfragen

1. In welche Richtung ändert sich `Uout`, wenn ein NTC unten im Teiler liegt und wärmer wird?
2. Warum verlangt das Beta-Modell absolute Temperaturen?
3. Wodurch entsteht Eigenerwärmung?
4. Welche Schritte führen vom ADC-Code zur Temperatur?

Weitere Aufgaben: [Übungen zu Modul 04](../uebungen/modul-04.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK01–04`, `b1-LK06`, `b4-LK01–10`, `b5-LK01–05`, `c1–c2`
- Nachweise: Kennlinienaufnahme, Modellvergleich und ADC-Schnittstellenanalyse; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
