# 01.7 – Mathematische Plausibilitätsprüfung in der Elektronik

[← Zurück](06-grundlegende-mechanik-energie-und-leistung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](README.md)

## Lernziele

Nach dieser Lektion kannst du:

- Ergebnisse durch Grössenordnung, Einheit und Grenzfall prüfen
- unabhängige Rechen- und Messwege vergleichen
- unplausible Resultate systematisch eingrenzen

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Vorherige Lektionen dieses Moduls.

## Warum ist das wichtig?

Taschenrechner führen auch falsch eingegebene Rechnungen zuverlässig aus. Plausibilitätsprüfung ist deshalb kein optionaler letzter Blick, sondern eine zweite, möglichst unabhängige Methode.

## Theorie

### Vier Prüfungen

1. **Einheit:** Passt die Dimension? 2. **Grössenordnung:** Liegt das Resultat im erwarteten Bereich? 3. **Grenzfall:** Verhält sich die Formel bei sehr grossen oder kleinen Werten sinnvoll? 4. **Unabhängiger Weg:** Bestätigt Rückrechnung, Messung oder Simulation das Resultat?

### Signifikante Stellen

Ein Resultat wird nicht genauer, nur weil der Rechner viele Ziffern anzeigt. Eingangstoleranzen und Messauflösung begrenzen die sinnvolle Stellenzahl. Zwischenrechnungen dürfen mehr Stellen behalten; das Endresultat wird begründet gerundet.

### Fehler eingrenzen

Bei einem unplausiblen Wert werden Präfixe, Einheiten, Vorzeichen, Klammern, Schaltungsmodell und Messaufbau einzeln geprüft. Nicht sofort eine neue Zahl ausprobieren; zuerst eine Hypothese formulieren.

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
