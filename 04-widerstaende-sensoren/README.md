# Modul 04 – Widerstände und Widerstandssensoren

[← Vorheriges Modul](../03-gleichstromnetzwerke/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../05-kondensatoren/README.md)

## Worum geht es?

In einer Rechnung ist ein Widerstand zunächst ein Zahlenwert. In einer realen Schaltung ist er ein Bauteil mit Technologie, Toleranz, Temperaturverhalten, Leistungsgrenze, Bauform und Alterung. Dieses Modul führt von der Normwertauswahl bis zur begründeten Datenblattentscheidung.

NTC, PTC und LDR zeigen anschliessend, wie eine physikalische Grösse den Widerstand verändert. Du entwickelst daraus ein elektrisches Messsignal und lernst, Eigenerwärmung, Nichtlinearität, ADC-Schnittstelle und Fehlerdiagnose gemeinsam zu betrachten. Damit beginnt zugleich die erste konkrete Etappe der analogen Sensormesskette.

## Lernpfad

Der Lernweg verbindet Bauteilauswahl und Grenzwertprüfung schrittweise mit realen Sensorsignalen:

```text
Technologie und E-Reihe → Toleranz → Temperatur und Leistung
→ Bauform und Potentiometer → NTC/PTC → weitere Widerstandssensoren
```

## Lektionen

1. [04.1 – Widerstandstypen und E-Reihen](01-widerstandstypen-und-e-reihen.md)
2. [04.2 – Toleranz und Worst-Case-Grundlagen](02-toleranz-und-worst-case-grundlagen.md)
3. [04.3 – Temperaturkoeffizient und Belastbarkeit](03-temperaturkoeffizient-und-belastbarkeit.md)
4. [04.4 – Verlustleistung und Impulsbelastung](04-verlustleistung-und-impulsbelastung.md)
5. [04.5 – SMD-Widerstände und Potentiometer](05-smd-widerstaende-und-potentiometer.md)
6. [04.6 – NTC und PTC](06-ntc-und-ptc.md)
7. [04.7 – LDR und weitere Widerstandssensoren](07-ldr-und-weitere-widerstandssensoren.md)
8. [Übungen](../uebungen/modul-04.md)
9. [Praxis – NTC-Kennlinie aufnehmen](../praxis/modul-04.md)

## Nach Abschluss kannst du

- einen Widerstand über den Nennwert hinaus technisch auswählen
- Toleranz, Temperaturdrift, Dauer- und Pulsbelastung prüfen
- SMD-Codes und Potentiometerbeschaltungen beurteilen
- einen resistiven Sensor vermessen und mit einem ADC-tauglichen Teiler verbinden

## Projektbezug

In [Projekt A](../projekte/projekt-a-sensormesskette.md) entsteht hier die erste Sensorstufe: Kennlinie aufnehmen, Arbeitspunkt wählen, Teiler dimensionieren und Fehlerbereiche definieren. [Projekt C](../projekte/projekt-c-abschlussprojekt.md) übernimmt die Bauteilauswahl und ihre dokumentierten Grenzwerte.

## Bezug Bildungsplan 2026

Schwerpunkt: `a3`, `b1-LK01–04`, `b1-LK06–08`, `b4-LK01–10`, vorbereitend `b5` sowie Hardwareanteile von `c1–c2`. Konkrete Nachweise stehen in der [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
