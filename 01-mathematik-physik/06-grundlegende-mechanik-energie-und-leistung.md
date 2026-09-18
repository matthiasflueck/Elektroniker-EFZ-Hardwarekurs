# 01.6 – Grundlegende Mechanik, Energie und Leistung

[← Zurück](05-diagramme-kennlinien-und-steigungen-lesen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-mathematische-plausibilitaetspruefung-in-der-elektronik.md)

## Lernziele

Nach dieser Lektion kannst du:

- Kraft, Arbeit, Energie und Leistung sprachlich unterscheiden
- Energieumwandlung in einem elektromechanischen System verfolgen
- Wirkungsgrad und Verlustleistung berechnen

## Einleitung

Elektronik wirkt auf die physische Welt: Ein Motor hebt eine Last, ein Relais bewegt einen Anker, ein Kühlkörper führt Wärme ab. Die gleichen Begriffe Energie und Leistung verbinden Mechanik, Elektrik und Thermik.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **Grundlegende Mechanik, Energie und Leistung** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Arbeit und Energie

Arbeit beschreibt übertragene Energie. Wird eine konstante Kraft $F$ entlang des Weges $s$ ausgeübt, gilt:

$$
W = F\cdot s
$$

Die Einheit Joule ist gleich Newtonmeter. Energie kann gespeichert oder umgewandelt werden.

### Leistung

Leistung sagt, wie schnell Energie umgesetzt wird:

$$
P = \frac{W}{t}
$$

Ein Joule pro Sekunde ist ein Watt. Zwei Geräte können dieselbe Energie verbrauchen, aber unterschiedlich schnell.

### Wirkungsgrad und Wärme

Der Wirkungsgrad vergleicht die nutzbare Ausgangsleistung mit der zugeführten Leistung:

$$
\eta = \frac{P_{\mathrm{nutz}}}{P_{\mathrm{zu}}}
$$

Er liegt bei passiven Umwandlungen zwischen 0 und 1. Die Differenz wird überwiegend zu Wärme. Diese Verlustleistung bestimmt Temperaturanstieg und Kühlbedarf.

### Energie kann gespeichert und übertragen werden

Eine angehobene Masse speichert potenzielle Energie, ein bewegter Körper kinetische Energie. In der Elektronik speichern Kondensatoren Energie im elektrischen Feld und Spulen im magnetischen Feld. Eine Quelle stellt Energie bereit; sie erzeugt sie nicht aus dem Nichts. Für jeden Vorgang lässt sich fragen, woher Energie kommt, wo sie gespeichert wird und wohin sie geht.

Leistung wird besonders wichtig, wenn sich ein Zustand schnell ändert. Eine kleine Energie, die in sehr kurzer Zeit umgesetzt wird, kann eine hohe Momentanleistung erzeugen. Das erklärt, warum ESD oder das Abschalten einer Spule trotz begrenzter Gesamtenergie Bauteile schädigen kann.

### Thermischer Endzustand

Verlustleistung erhöht zunächst die Temperatur. Gleichzeitig wächst meist die Wärmeabgabe an Umgebung oder Kühlkörper. Im stationären Zustand sind erzeugte und abgeführte Wärmeleistung gleich. Die erreichte Temperatur hängt daher nicht nur von Watt, sondern auch von Gehäuse, Leiterplatte, Luftstrom und Umgebung ab.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Thermische und mechanische Abschätzungen
- Leistungsbilanz von Reglern und Lasten
- Energiebetrachtung bei Kondensatoren und Spulen

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Ein Motor hebt eine Masse. Die elektrische Quelle liefert Energie, der Treiber verliert Wärme, der Motor wandelt einen Teil in Bewegung um und Reibung erzeugt weitere Wärme. Der gesamte Energiepfad muss bilanziert werden.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Wirkungsgrad und Verlustenergie bestimmen

Ein System nimmt **12 W** elektrische Leistung auf und gibt **9 W** als nutzbare mechanische Leistung ab. Es läuft während **10 min**.

**Gegeben:**

- zugeführte Leistung: **12 W**
- nutzbare Leistung: **9 W**
- Betriebsdauer: **10 min = 600 s**

#### 1. Formeln

$$
\eta = \frac{P_{\mathrm{nutz}}}{P_{\mathrm{zu}}}
$$

$$
P_{\mathrm{verlust}} =
P_{\mathrm{zu}}-P_{\mathrm{nutz}}
$$

$$
E_{\mathrm{verlust}} =
P_{\mathrm{verlust}}\cdot t
$$

#### 2. Werte einsetzen

$$
\eta =
\frac{9~\mathrm{W}}
     {12~\mathrm{W}}
$$

$$
P_{\mathrm{verlust}} =
12~\mathrm{W}-9~\mathrm{W}
$$

$$
E_{\mathrm{verlust}} =
3~\mathrm{W}\cdot600~\mathrm{s}
$$

#### 3. Berechnen

$$
\eta = 0.75 = 75~\\%
$$

$$
P_{\mathrm{verlust}} = 3~\mathrm{W}
$$

$$
E_{\mathrm{verlust}} = 1800~\mathrm{J}
$$

#### 4. Ergebnis

$$
\boxed{\eta = 75~\\%}
$$

$$
\boxed{P_{\mathrm{verlust}} = 3~\mathrm{W}}
$$

$$
\boxed{E_{\mathrm{verlust}} = 1800~\mathrm{J}}
$$

Die nicht nutzbare Leistung wird überwiegend in Wärme umgesetzt.

## Praxisbezug

Erstelle für Lüfter, Relais oder Motor ein Energieflussdiagramm. Markiere Nutzleistung, Verluste und Messstellen. Schätze Werte und begründe Unsicherheiten.

## 🔗 Hardware ↔ Firmware

PWM verändert die mittlere Energiezufuhr zur Last. Firmware bestimmt Tastgrad und Regelung, die Hardware trägt Schalt- und Leitverluste. Ein softwareseitig kleiner Mittelwert schliesst hohe Spitzenströme nicht aus.

## Merksatz

> Energie ist eine Menge; Leistung beschreibt deren Umsetzung pro Zeit.

## Häufige Fehler und Missverständnisse

- Watt und Wattstunde verwechseln.
- Wirkungsgrad in Prozent direkt als Zahl 75 einsetzen statt 0.75.
- Verlustleistung ohne thermische Folgen betrachten.

## Zusammenfassung

Mechanische und elektrische Systeme folgen derselben Energiebilanz. Leistung, Wirkungsgrad und Verlustwärme machen die Umwandlung quantitativ.

## Übungsfragen

1. Was unterscheidet Joule und Watt?
2. Wohin geht die Differenz zwischen Zu- und Nutzleistung?
3. Berechne die Verlustleistung bei 20 W Eingang und 80 % Wirkungsgrad.

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
