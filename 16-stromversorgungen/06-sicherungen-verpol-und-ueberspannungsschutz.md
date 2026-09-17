# 16.6 – Sicherungen, Verpol- und Überspannungsschutz

[← Zurück](05-ripple-und-wirkungsgrad.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-entkopplung-lastsprung-und-messung.md)

## Lernziele

Nach dieser Lektion kannst du:

- Schutzkette nach Energie und Fehlerart strukturieren
- Sicherung, Verpolschutz und TVS funktional unterscheiden
- Normalbetrieb und Fehlerenergie nachweisen

## Warum ist das wichtig?

Ein Schutzbauteil allein schützt nicht gegen jeden Fehler. Sicherungen begrenzen langfristige Fehlerenergie, Verpolschutz sperrt falsche Polarität, TVS-Dioden klemmen kurze Überspannungen. Erst die koordinierte Kette besitzt einen kontrollierten Energiepfad.

## Theorie

### Schutzfunktionen

Eine Sicherung reagiert abhängig von Strom und Zeit; ihr I²t-Wert beschreibt Energiebeanspruchung bei kurzen Ereignissen. Eine rückstellende PTC begrenzt anders und besitzt hohen Kalt-/Heisswiderstand. Ein MOSFET-Verpolschutz reduziert Verlust gegenüber einer Seriendiode, benötigt aber richtige Body-Dioden-Orientierung und Gate-Schutz.

![Koordinierte Eingangsschutzkette aus Sicherung, Verpolschutz und TVS](../bilder/16-stromversorgungen/16-06-eingangsschutz.png)

Eine TVS klemmt schnelle Überspannungen und wandelt Pulsenergie in Wärme. Standoff-, Breakdown- und Clamping-Spannung sind verschieden. Die vorgeschaltete Quellenimpedanz oder Sicherung begrenzt den Strom. Crowbar- und eFuse-Lösungen können dauerhafte Überspannung abschalten.

### Koordination und Layout

Schutz liegt am Eintrittspunkt. Ableitstrompfade sind kurz und führen nicht durch die empfindliche Masse. Bauteiltoleranzen, Temperatur, Pulsform, Wiederholrate und nachgeschaltete Absolute-Maximum-Grenzen werden gemeinsam geprüft.

## Anschauliches Beispiel

Ein Gebäude besitzt Eingangstür, Überspannungsableiter und Hauptsicherung. Jedes Element behandelt einen anderen Fehler; ihre Reihenfolge entscheidet, wohin die Energie fliesst.

## Berechnungsbeispiel

Eine 24-V-Leitung steigt auf 40 V, die TVS klemmt bei 32 V und die Quelle besitzt 2 Ω. Der Pulsstrom ist näherungsweise `(40 − 32)/2 = 4 A`, die momentane TVS-Leistung `32 V·4 A = 128 W`. Zulässige Pulsdauer muss aus der Kurve folgen.

## Praxisbezug

Prüfe Verpolschutz zunächst strombegrenzt und ohne Last. Überspannungstests erfolgen nur mit dafür freigegebener Energiequelle oder Simulator. Miss Spannungen vor und nach jeder Schutzstufe.

## 🔗 Hardware ↔ Firmware

Firmware kann eFuse-Status, Unterspannung und Power Good auswerten. Sie kann weder Verpolung noch Überspannung während ausgeschaltetem Zustand verhindern. Hardware muss sicher begrenzen und abschalten.

## Merksatz

> Schutz funktioniert als koordinierte Kette mit definiertem Energie- und Rückstrompfad.

## Häufige Fehler und Missverständnisse

- Sicherung als schnellen Überspannungsschutz ansehen
- TVS nur nach Nennspannung auswählen
- MOSFET-Body-Diode falsch orientieren
- Ableitstrom durch Signalmassen führen

## Zusammenfassung

Sicherung, Verpolschutz, TVS und Abschaltung besitzen unterschiedliche Aufgaben. Dimensionierung und Layout müssen den realen Fehlerstrom beherrschen.

## Übungsfragen

1. Welche Aufgabe besitzt die Sicherung?
2. Warum unterscheiden sich VRWM und VC einer TVS?
3. Berechne Pulsstrom und Leistung für den gegebenen Fehler.
4. Welche Schutzfunktionen wirken ohne Firmware?

Weitere Aufgaben: [Übungen zu Modul 16](../uebungen/modul-16.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a2–a3`, `b1-LK01–07`, `b2-LK03–04`, `b4-LK03`, `b5`
- Nachweise: begründete Schutzkette mit Puls- und Dauerfehlernachweis; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
