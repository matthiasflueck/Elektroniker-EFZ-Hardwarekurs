# Modul 11 – MOSFETs und Leistungsschalter

[← Vorheriges Modul](../10-bipolartransistoren/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../12-operationsverstaerker/README.md)

## Worum geht es?

MOSFETs verbinden digitale Steuerung mit realen Lastströmen. Das Gate benötigt kaum statischen Strom, aber definierte Ladung beim Umschalten. Threshold-Spannung, RDS(on), Gate Charge, SOA, Body-Diode und thermischer Pfad entscheiden gemeinsam über einen sicheren Schalter.

Dieses Modul behandelt deshalb nicht nur das Symbol, sondern den vollständigen Pfad vom Timerregister über Treiber und Gate bis zu Drainstrom, Verlustleistung und Temperatur. Die Datenblattauswahl wird als überprüfbarer Workflow aufgebaut.

## Lernpfad

```text
Feldeffekt → N-/P-Kanal → VGS(th) richtig lesen → RDS(on) und SOA
→ Gate Charge → Low-/High-Side und Halbbrücke → Verlustbilanz
```

## Lektionen

1. [11.1 – MOSFET-Grundprinzip, Gate, Drain und Source](01-mosfet-grundprinzip-gate-drain-und-source.md)
2. [11.2 – N-Kanal- und P-Kanal-MOSFET](02-n-kanal-und-p-kanal-mosfet.md)
3. [11.3 – VGS und Threshold-Spannung richtig verstehen](03-vgs-und-threshold-spannung-richtig-verstehen.md)
4. [11.4 – RDS(on), Kennfelder und sichere Betriebsbereiche](04-rds-on-kennfelder-und-sichere-betriebsbereiche.md)
5. [11.5 – Gate-Kapazität, Gate Charge und Treiber](05-gate-kapazitaet-gate-charge-und-treiber.md)
6. [11.6 – Low-Side- und High-Side-Schalter](06-low-side-und-high-side-schalter.md)
7. [11.7 – Schaltverluste, Thermik und Datenblattwahl](07-schaltverluste-thermik-und-datenblattwahl.md)

## Üben und messen

- [Übungen zu Modul 11](../uebungen/modul-11.md)
- [Separate Lösungen](../loesungen/modul-11-loesungen.md)
- [Praxis – MOSFET-Leistungsstufe aufbauen und Gate/Drain messen](../praxis/modul-11.md)

## Bezug Bildungsplan 2026

Schwerpunkte: `b1-LK01–06`, `b4-LK01–10`, `b5` und `c1–c2`. Nachgewiesen werden professionelle Datenblattwahl, Verlust- und Temperaturrechnung, sichere Gate-/Drainmessung sowie Hardware-/Firmware-Abgleich der PWM. Details: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
