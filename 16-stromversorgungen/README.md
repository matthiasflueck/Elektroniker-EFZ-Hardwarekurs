# Modul 16 – Stromversorgungen

[← Vorheriges Modul](../15-schnittstellen-busse/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../17-messtechnik-grundlagen/README.md)

## Worum geht es?

Stromversorgungen verbinden Energiequelle, Schutz, Regler, Leiterplatte und dynamische Last. Dieses Modul beginnt deshalb mit Lastprofil und Power Tree, bevor Linear- oder Schaltregler dimensioniert werden. Verlustleistung, Thermik, Ripple, Wirkungsgrad und Lastsprung werden berechnet und gemessen.

Besonderes Gewicht liegt auf sicheren Kleinspannungsversuchen und korrekter Oszilloskoptechnik. Netzspannungs-Schaltungen sind ausdrücklich nicht Bestandteil der Laborversuche.

## Lernpfad

1. [16.1 – Anforderungen, Lastprofile und Schutz](01-anforderungen-lastprofile-und-schutz.md)
2. [16.2 – Linearregler und LDO](02-linearregler-und-ldo.md)
3. [16.3 – Verlustleistung und thermische Grundlagen](03-verlustleistung-und-thermische-grundlagen.md)
4. [16.4 – Schaltregler: Buck, Boost und Buck-Boost](04-schaltregler-buck-boost-und-buck-boost.md)
5. [16.5 – Ripple und Wirkungsgrad](05-ripple-und-wirkungsgrad.md)
6. [16.6 – Sicherungen, Verpol- und Überspannungsschutz](06-sicherungen-verpol-und-ueberspannungsschutz.md)
7. [16.7 – Entkopplung, Lastsprung und Messung](07-entkopplung-lastsprung-und-messung.md)

## Üben und Anwenden

- [Übungen Modul 16](../uebungen/modul-16.md)
- [Separate Lösungen](../loesungen/modul-16-loesungen.md)
- [Praxis – Linear- und Schaltregler vermessen](../praxis/modul-16.md)

## Hardware ↔ Firmware

Firmware erzeugt reale Lastprofile, steuert Enable-Signale und wertet Power Good oder Brownout aus. Hardware muss Versorgung und Schutz bereits beim Reset und im ausgeschalteten Zustand sicherstellen. Messwerte werden stets mit dem aktiven Firmwarezustand dokumentiert.

## Bezug Bildungsplan 2026

Schwerpunkte: `a1–a3`, `b1`, `b2`, `b4`, `b5`, `c1–c2`; konkrete Nachweise stehen in der [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
