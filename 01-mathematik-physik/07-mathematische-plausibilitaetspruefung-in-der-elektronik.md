# 01.7 – Mathematische Plausibilitätsprüfung in der Elektronik

[← Zurück](06-grundlegende-mechanik-energie-und-leistung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](README.md)

## Lernziele

Nach dieser Lektion kannst du:

- Ergebnisse durch Grössenordnung, Einheit und Grenzfall prüfen
- unabhängige Rechen- und Messwege vergleichen
- unplausible Resultate systematisch eingrenzen

## Einleitung

Taschenrechner führen auch falsch eingegebene Rechnungen zuverlässig aus. Plausibilitätsprüfung ist deshalb kein optionaler letzter Blick, sondern eine zweite, möglichst unabhängige Methode.


<!-- context-expansion-2026 -->
Mathematik ist in der Elektronik kein Selbstzweck, sondern eine gemeinsame Sprache für Datenblatt, Schaltung, Messgerät und Prüfbericht. Eine Rechnung ist erst dann nützlich, wenn Einheit, Grössenordnung, Randbedingungen und physikalische Bedeutung zusammenpassen.

Beim Thema **Mathematische Plausibilitätsprüfung in der Elektronik** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie die Darstellung beim Rechnen, Lesen von Datenblättern, Auswerten von Messungen und Prüfen der Grössenordnung konkret eingesetzt wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Jede mathematische Darstellung besteht aus Grössen, Einheiten, Beziehungen und einem Gültigkeitsbereich. Vor dem Einsetzen von Zahlen wird daher geklärt, was gesucht ist, welche Annahmen gelten und welche Grössenordnung physikalisch zu erwarten ist.

### Vier Prüfungen

1. **Einheit:** Passt die Dimension? 2. **Grössenordnung:** Liegt das Resultat im erwarteten Bereich? 3. **Grenzfall:** Verhält sich die Formel bei sehr grossen oder kleinen Werten sinnvoll? 4. **Unabhängiger Weg:** Bestätigt Rückrechnung, Messung oder Simulation das Resultat?

### Signifikante Stellen

Ein Resultat wird nicht genauer, nur weil der Rechner viele Ziffern anzeigt. Eingangstoleranzen und Messauflösung begrenzen die sinnvolle Stellenzahl. Zwischenrechnungen dürfen mehr Stellen behalten; das Endresultat wird begründet gerundet.

### Fehler eingrenzen

Bei einem unplausiblen Wert werden Präfixe, Einheiten, Vorzeichen, Klammern, Schaltungsmodell und Messaufbau einzeln geprüft. Nicht sofort eine neue Zahl ausprobieren; zuerst eine Hypothese formulieren.

### Mehrere unabhängige Kontrollwege

Eine Rückrechnung mit derselben falsch eingegebenen Zahl kann denselben Fehler bestätigen. Besser ist ein möglichst unabhängiger Weg: grobe Kopfrechnung, zweite Formel, Simulation, Messung oder Vergleich mit einem bekannten Grenzwert. Je unterschiedlicher die Methoden sind, desto wahrscheinlicher entdecken sie gemeinsame Denkfehler.

Auch ein plausibler Einzelwert kann in einem unplausiblen Zusammenhang stehen. Eine Versorgung von 5.00 V wirkt korrekt, während gleichzeitig 2 A durch einen 10-kΩ-Widerstand gemeldet werden. Deshalb werden zusammengehörige Grössen als System geprüft und nicht nur jede Zahl für sich.

### Plausibel ist noch nicht bewiesen

Plausibilität zeigt, dass ein Wert möglich erscheint. Sie ersetzt keine genaue Verifikation. Nach dem schnellen Filter folgen – abhängig vom Risiko – Toleranzrechnung, kalibrierte Messung und dokumentierter Test. Plausibilitätsprüfung verhindert grobe Fehler, die formale Prüfung bestätigt die Anforderung.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Prüfen von Simulation und Messwert
- Erkennen falscher Einheiten oder Dezimalstellen
- Bewerten, ob ein Ergebnis zur realen Schaltung passt

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Für eine Spannung von **5 V** an einem Widerstand von **1 kΩ** zeigt ein falsch bedienter Rechner **5000 A**. Schon die Einheitenerwartung zeigt, dass dieses Resultat unmöglich ist:

$$
\frac{\mathrm{V}}{\mathrm{k}\Omega} = \mathrm{mA}
$$

Die korrekte Grössenordnung lautet:

$$
\frac{5~\mathrm{V}}
     {1~\mathrm{k}\Omega} =
5~\mathrm{mA}
$$

Der Widerstand wurde bei der falschen Eingabe vermutlich als **0.001 Ω** statt **1000 Ω** eingegeben.

## Berechnungsbeispiel

### 🧮 Berechnungsbeispiel: Strom berechnen und sinnvoll runden

An einem gemessenen Widerstand von **997 Ω** liegen **4.98 V**. Gesucht ist der Strom. Vor der exakten Rechnung wird ein Ergebnis nahe **5 mA** erwartet.

**Gegeben:**

- Spannung: **4.98 V**
- Widerstand: **997 Ω**
- erwartete Grössenordnung: **etwa 5 mA**

#### 1. Formel

$$
I = \frac{U}{R}
$$

#### 2. Werte einsetzen

$$
I =
\frac{4.98~\mathrm{V}}
     {997~\Omega}
$$

#### 3. Berechnen

$$
I =
0.004994984\ldots~\mathrm{A} =
4.994984\ldots~\mathrm{mA}
$$

#### 4. Ergebnis sinnvoll runden

$$
\boxed{I \approx 4.99~\mathrm{mA}}
$$

Das Ergebnis stimmt mit der erwarteten Grössenordnung von ungefähr 5 mA überein. Eine Angabe wie **4.994984954864 mA** würde eine nicht vorhandene Genauigkeit vortäuschen.

## Praxisbezug

Bearbeite den Plausibilitätsparcours in [Praxis Modul 01](../praxis/modul-01.md). Dokumentiere bei jedem absichtlich fehlerhaften Resultat, welche der vier Prüfungen den Fehler zuerst findet.

## 🔗 Hardware ↔ Firmware

Bei ADC- und Timerberechnungen werden theoretischer Wertebereich, Registergrenzen und gemessenes Signal verglichen. Ein Überlauf oder eine Integerdivision kann mathematisch richtige Formeln in der Firmware falsch abbilden.

## Merksatz

> Ein Ergebnis ist erst belastbar, wenn Einheit, Grössenordnung und ein unabhängiger Kontrollweg passen.

## Häufige Fehler und Missverständnisse

- Alle angezeigten Rechnerstellen übernehmen.
- Plausibilität mit persönlichem Gefühl statt einem begründeten Bereich verwechseln.
- Bei Abweichung gleichzeitig Schaltung, Formel und Messgerät ändern.

## Zusammenfassung

Plausibilitätsprüfung kombiniert Dimension, Grössenordnung, Grenzfall und unabhängige Kontrolle. Sie findet viele Fehler früher als eine Detailanalyse.

## Übungsfragen

1. Welche vier Prüfungen werden verwendet?
2. Warum sind 12 Rechnerstellen kein Genauigkeitsnachweis?
3. Nenne einen sinnvollen Grenzfall für:

$$
I=\frac{U}{R}
$$

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
