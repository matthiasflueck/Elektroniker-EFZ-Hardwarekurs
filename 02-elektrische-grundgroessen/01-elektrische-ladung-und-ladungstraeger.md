# 02.1 – Elektrische Ladung und Ladungsträger

[← Zurück](README.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-elektrischer-strom-und-geschlossener-stromkreis.md)

## Lernziele

Nach dieser Lektion kannst du:

- positive und negative Ladung sowie Ladungsträger erklären
- Ladungsmenge und Elementarladung einordnen
- Aufladung, Polarisation und Neutralität unterscheiden

## Einleitung

Bevor Strom fliessen kann, muss geklärt sein, was sich überhaupt bewegt. Ladung ist eine grundlegende Eigenschaft von Materie. Sie erklärt elektrostatische Anziehung, ESD und später den Strom in Leitern und Halbleitern.


<!-- context-expansion-2026 -->
Elektrische Grössen beschreiben verschiedene Seiten desselben Vorgangs: Ladung wird bewegt, Spannung stellt Energie pro Ladung bereit, Widerstände begrenzen den Strom und Leistung beschreibt den Energieumsatz. Erst der geschlossene Stromkreis und ein festgelegter Bezug machen einzelne Zahlen zu einem verständlichen System.

Beim Thema **Elektrische Ladung und Ladungsträger** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Zur Analyse wird zuerst der reale Strompfad gezeichnet und ein Bezugspotential festgelegt. Danach werden Richtung und Polarität definiert. Formeln beschreiben anschliessend diesen bereits verstandenen Vorgang; sie ersetzen weder Schaltbild noch Plausibilitätskontrolle.

### Ladung als Eigenschaft

Protonen tragen positive, Elektronen negative Ladung. Gleichnamige Ladungen stossen sich ab, ungleichnamige ziehen sich an. Ein Körper ist elektrisch neutral, wenn sich positive und negative Ladungen insgesamt ausgleichen. Neutral bedeutet nicht, dass keine Ladungen vorhanden sind.

### Bewegliche Ladungsträger

In Metallen sind Elektronen beweglich, während die Atomrümpfe im Gitter bleiben. In Elektrolyten bewegen sich positive und negative Ionen. In Halbleitern werden Elektronen und Löcher als Ladungsträger beschrieben. Das Material bestimmt also, welche Träger beweglich sind.

### Quantisierung und Einheit

Erst nach dieser Vorstellung wird die Grösse definiert: Die Ladung $Q$ wird in Coulomb ($\mathrm{C}$) angegeben. Die Elementarladung $e$ ist der Betrag der Ladung eines einzelnen Protons beziehungsweise Elektrons:

$$
e = 1.602\cdot10^{-19}~\mathrm{C}
$$

Besteht eine Ladungsmenge aus $N$ gleichartigen Elementarladungen, gilt:

$$
Q = N\cdot e
$$

Dabei ist $N$ eine reine Anzahl ohne Einheit. Makroskopische Ladungsmengen enthalten daher sehr viele einzelne Ladungsträger.

### Ladungstrennung

Reibung, chemische Reaktion oder eine Spannungsquelle können Ladung trennen. Dadurch entsteht ein elektrisches Feld und eine Potentialdifferenz. Ohne geschlossenen Pfad kann Ladung getrennt bleiben; mit einem Pfad erfolgt ein Ausgleich.

### Leiter, Isolator und Halbleiter

In einem Leiter können sich Ladungsträger leicht über grössere Strecken bewegen. In einem Isolator sind sie stärker gebunden; dennoch kann sich seine Oberfläche elektrostatisch aufladen. Halbleiter liegen nicht einfach «dazwischen»: Ihre Leitfähigkeit lässt sich gezielt durch Dotierung, Temperatur, Licht oder elektrische Felder beeinflussen. Genau diese Steuerbarkeit ermöglicht Dioden und Transistoren.

Ladung kann sich innerhalb eines Körpers verschieben, ohne dass seine Gesamtladung geändert wird. Dieses Phänomen heisst Polarisation. Ein geladener Gegenstand kann dadurch auch einen neutralen Körper anziehen, weil die näher liegende entgegengesetzte Ladung stärker wirkt als die weiter entfernte gleichnamige.

### Ladungserhaltung

In einem abgeschlossenen System bleibt die Gesamtladung erhalten. Sie kann getrennt, verschoben und zwischen Körpern übertragen werden, aber nicht einfach verschwinden. Diese Erhaltung bildet später die Grundlage der Knotenregel: Was an Ladung in einen Knoten hineinfließt, muss ihn wieder verlassen oder seine gespeicherte Ladung verändern.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Batterien, Kondensatoren und ESD-Vorgänge
- Ladungsspeicherung in Sensoren und ADC-Eingängen
- Erklärung von Elektronen- und technischer Stromrichtung

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Beim Gehen auf einem isolierenden Boden können Elektronen zwischen Materialien übertragen werden. Berührst du danach eine leitende Baugruppe, gleicht sich die Ladung sehr schnell aus: eine ESD-Entladung.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Anzahl der Elementarladungen bestimmen

Eine Ladungsmenge von **1 µC** soll in die entsprechende Anzahl Elementarladungen umgerechnet werden.

**Gegeben:**

- Ladungsmenge: **1 µC**
- Elementarladung: **1.602 · 10⁻¹⁹ C**

#### 1. Formel

Aus $Q=N\cdot e$ folgt:

$$
N = \frac{Q}{e}
$$

#### 2. Werte einsetzen

Zuerst wird Mikro durch die entsprechende Zehnerpotenz ersetzt:

$$
Q = 1~\mu\mathrm{C} = 1\cdot10^{-6}~\mathrm{C}
$$

Damit ergibt sich:

$$
N =
\frac{1\cdot10^{-6}~\mathrm{C}}
     {1.602\cdot10^{-19}~\mathrm{C}}
$$

#### 3. Berechnen

$$
N \approx 6.24\cdot10^{12}
$$

Die Einheit Coulomb kürzt sich. Das Ergebnis ist deshalb eine Anzahl.

#### 4. Ergebnis

$$
\boxed{N \approx 6.24\cdot10^{12}\ \text{Elementarladungen}}
$$

Der grosse Wert erklärt, warum wir in makroskopischen Stromkreisen meist mit kontinuierlichen Grössen rechnen können.

## Praxisbezug

Beobachte mit einem geeigneten ungefährlichen Elektrostatikversuch Anziehung nach Ladungstrennung. Empfindliche Elektronik bleibt dabei ausserhalb des Versuchsbereichs.

## Merksatz

> Elektrische Neutralität ist ein Gleichgewicht von Ladungen, nicht die Abwesenheit von Ladung.

## Häufige Fehler und Missverständnisse

- Elektronen und elektrische Energie gleichsetzen.
- Annehmen, in jedem Material bewegten sich dieselben Ladungsträger.
- ESD nur dann annehmen, wenn ein Funke sichtbar ist.

## Zusammenfassung

Ladung kann positiv oder negativ sein und wird in Coulomb gemessen. Bewegliche Ladungsträger hängen vom Material ab; Ladungstrennung erzeugt Feld und Potentialunterschied.

## Übungsfragen

1. Was bedeutet elektrisch neutral?
2. Welche Ladungsträger bewegen sich in Metall?
3. Warum kann eine unsichtbare Entladung schaden?

Weitere Aufgaben: [Übungen zu Modul 02](../uebungen/modul-02.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02–03`, `b4-LK01–10`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
