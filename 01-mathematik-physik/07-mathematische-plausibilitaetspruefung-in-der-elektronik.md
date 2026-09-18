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

Auch ein plausibler Einzelwert kann in einem unplausiblen Zusammenhang stehen. Eine Versorgung von 5,00 V wirkt korrekt, während gleichzeitig 2 A durch einen 10-kΩ-Widerstand gemeldet werden. Deshalb werden zusammengehörige Grössen als System geprüft und nicht nur jede Zahl für sich.

### Plausibel ist noch nicht bewiesen

Plausibilität zeigt, dass ein Wert möglich erscheint. Sie ersetzt keine genaue Verifikation. Nach dem schnellen Filter folgen – abhängig vom Risiko – Toleranzrechnung, kalibrierte Messung und dokumentierter Test. Plausibilitätsprüfung verhindert grobe Fehler, die formale Prüfung bestätigt die Anforderung.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Prüfen von Simulation und Messwert
- Erkennen falscher Einheiten oder Dezimalstellen
- Bewerten, ob ein Ergebnis zur realen Schaltung passt

In einer konkreten Rechnung werden Formel, Einheiten und Annahmen vollständig notiert. Das Resultat wird anschliessend mit Grenzfällen, Grössenordnung oder einem Messwert geprüft, damit ein formal korrektes, aber physikalisch falsches Ergebnis nicht unbemerkt bleibt.

## Anschauliches Beispiel

Für 5 V an 1 kΩ zeigt ein Rechner 5000 A. Die Einheitserwartung `V/kΩ = mA` entlarvt den Fehler sofort: Der Widerstand wurde vermutlich als 0,001 Ω statt 1000 Ω eingegeben.

## Berechnungsbeispiel

Exakt: `4,98 V / 997 Ω = 4,994… mA`. Mit etwa 5 V und 1 kΩ war 5 mA erwartet. Das Endresultat `4,99 mA` ist angemessen; `4,994984954864… mA` täuscht Genauigkeit vor.

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
3. Nenne einen sinnvollen Grenzfall für `I = U/R`.

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
