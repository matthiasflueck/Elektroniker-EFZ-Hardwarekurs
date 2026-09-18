# 01.3 – Formeln verstehen und sicher umstellen

[← Zurück](02-zehnerpotenzen-und-wissenschaftliche-schreibweise.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-prozentrechnung-abweichung-und-toleranz.md)

## Lernziele

Nach dieser Lektion kannst du:

- Variablen, Gleichheitszeichen und Gültigkeitsbedingungen erklären
- Formeln schrittweise nach einer gesuchten Grösse umstellen
- das Resultat mit Einheiten und Rückeinsetzen prüfen

## Einleitung

Eine Formel ist eine verdichtete Aussage über einen Zusammenhang. Wer sie nur als Zahlenrezept benutzt, übersieht leicht, wann sie gilt und was sich physikalisch ändert. Sicheres Umstellen beginnt deshalb mit einer sprachlichen Beschreibung.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **Formeln verstehen und sicher umstellen** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Gleichgewicht erhalten

Das Gleichheitszeichen bedeutet, dass links und rechts derselbe Wert steht. Jede zulässige Rechenoperation wird auf beiden Seiten ausgeführt. Ziel ist, die gesuchte Variable allein stehen zu lassen.

### Beispiel Ohmsches Gesetz

Die Aussage

$$
U = R \cdot I
$$

bedeutet: Bei konstantem Widerstand steigt die Spannung proportional zum Strom. Gesucht sei $I$. Beide Seiten werden durch $R$ geteilt:

$$
\frac{U}{R}
=
\frac{R\cdot I}{R}
$$

Der Faktor $R$ kürzt sich auf der rechten Seite. Damit ergibt sich:

$$
I = \frac{U}{R}
$$

### Bedingungen und Symbole

Vor dem Einsetzen werden Symbole, Einheiten und Modellgrenzen notiert. Das Ohmsche Gesetz in dieser Form beschreibt einen ohmschen Widerstand bei hinreichend konstanter Temperatur; es ist nicht die Kennlinie jeder LED oder Diode.

### Erst die Abhängigkeit verstehen

Vor dem Umstellen wird gefragt, wie sich die gesuchte Grösse verändert. Für den Strom gilt:

$$
I = \frac{U}{R}
$$

Der Strom muss steigen, wenn $U$ steigt, und sinken, wenn $R$ steigt. Diese qualitative Aussage ist ein wirksamer Kontrollpunkt: Ergibt die umgestellte Formel das Gegenteil, ist sie falsch oder das Modell wurde missverstanden.

Klammern helfen, zusammengehörige Terme sichtbar zu halten. Bei längeren Formeln wird nicht versucht, mehrere Schritte gleichzeitig «im Kopf» zu erledigen. Jede Zeile enthält genau eine nachvollziehbare Operation. Das dauert kaum länger und macht Vorzeichen- oder Kehrwertfehler deutlich leichter auffindbar.

### Symbole vor Zahlen

Eine Formel wird zuerst symbolisch umgestellt und erst danach mit Zahlen gefüllt. Dadurch bleibt sichtbar, welche Grössen im Zähler und Nenner stehen. Ausserdem lässt sich derselbe Rechenweg für andere Werte verwenden und durch Dimensionsanalyse prüfen.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Dimensionierung von Widerständen und Filtern
- Umstellen von Datenblattformeln
- Berechnung unbekannter Messgrössen

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Die bekannte Beziehung wird als Waage vorgestellt. Multiplizierst du nur eine Seite mit 2, kippt die Waage. Führst du dieselbe Operation auf beiden Seiten aus, bleibt die Gleichheit erhalten.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Spannung aus Leistung und Strom bestimmen

Ein Verbraucher nimmt eine Leistung von **0,50 W** auf. Durch ihn fliesst ein Strom von **0,10 A**. Gesucht ist die Spannung.

**Gegeben:**

- Leistung: **0,50 W**
- Strom: **0,10 A**
- gesucht: Spannung $U$

#### 1. Formel

Ausgangspunkt ist die elektrische Leistung:

$$
P = U \cdot I
$$

Nach $U$ umgestellt:

$$
U = \frac{P}{I}
$$

#### 2. Werte einsetzen

$$
U =
\frac{0{,}50\,\mathrm{W}}
     {0{,}10\,\mathrm{A}}
$$

#### 3. Berechnen

$$
U = 5{,}0\,\mathrm{V}
$$

#### 4. Ergebnis

$$
\boxed{U = 5{,}0\,\mathrm{V}}
$$

#### Rückprüfung

$$
5{,}0\,\mathrm{V}\cdot0{,}10\,\mathrm{A}
=
0{,}50\,\mathrm{W}
$$

Die Rückprüfung ergibt wieder die vorgegebene Leistung.

## Praxisbezug

Stelle die folgenden Beziehungen jeweils nach jeder vorkommenden Grösse um:

$$
U = R\cdot I
$$

$$
P = U\cdot I
$$

$$
\eta = \frac{P_{\mathrm{out}}}{P_{\mathrm{in}}}
$$

Schreibe jeden Rechenschritt aus.

## 🔗 Hardware ↔ Firmware

Firmwareformeln für ADC-Skalierung oder Timerperioden folgen denselben Regeln. Integerdivision, Rundung und Einheitenskalierung können jedoch zusätzliche Abweichungen erzeugen; das mathematische Modell und die Implementierung werden getrennt geprüft.

## Merksatz

> Was du auf einer Seite der Gleichung tust, musst du auf der anderen ebenfalls tun.

## Häufige Fehler und Missverständnisse

- Variablen beim «Herüberbringen» ohne nachvollziehbare Operation vertauschen.
- Einheiten erst am Schluss ergänzen.
- Eine Formel ausserhalb ihres Gültigkeitsbereichs verwenden.

## Zusammenfassung

Formeln beschreiben Bedingungen und Zusammenhänge. Systematisches Umstellen, Einheitenkontrolle und Rückeinsetzen machen den Rechenweg überprüfbar.

## Übungsfragen

1. Stelle die folgende Formel nach $t$ um:

   $$
   E=P\cdot t
   $$
2. Warum ist Rückeinsetzen nützlich?
3. Welche Bedingung gilt beim ohmschen Widerstand?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
