# 10.5 – BJT als Schalter

[← Zurück](04-arbeitspunkt-und-dimensionierung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-bjt-als-verstaerker.md)

## Lernziele

Nach dieser Lektion kannst du:

- NPN-Schalter vollständig dimensionieren
- Basiswiderstand und Freilaufpfad prüfen
- Schaltverlust und Speicherzeit erkennen

## Warum ist das wichtig?

Relais, LED und kleine Motoren benötigen oft mehr Strom als ein GPIO liefern darf. Der BJT übernimmt den Laststrom. Ein guter Schalter braucht jedoch ausreichenden Basisstrom, Schutz vor induktiver Energie und einen sicheren Zustand während Reset.

## Theorie

### Low-Side-Schalter

Die Last liegt zwischen Versorgung und Kollektor, der Emitter an GND. Ein Basiswiderstand begrenzt IB, ein Basis-Emitter-Widerstand hält Q1 bei hochohmigem GPIO aus. Induktive Lasten benötigen einen Freilaufpfad.

![NPN-Low-Side-Schalter mit LED und Freilaufoption](../bilder/10-bipolartransistoren/10-05-bjt-schalter.png)

Für robustes Einschalten wird IB aus `IC/βforced` bestimmt. Danach gilt `RB = (UGPIO − UBE)/IB`. Prüfe GPIO-Ausgangsspannung bei IB, VCE(sat), Transistorleistung `PQ ≈ VCE(sat)·IC` und Widerstandsleistung.

### Dynamik

Tiefe Sättigung speichert Ladung und kann das Abschalten verzögern. Bei langsamer PWM oder Relais ist dies oft unkritisch; bei hoher Frequenz werden Basisentladung, Schottky-Klemme oder MOSFET geprüft.

## Anschauliches Beispiel

Ein Türstopper soll die Tür sicher ganz öffnen oder schliessen. Bleibt sie halb geöffnet, entsteht Reibung und Wärme. Zu starkes Hineindrücken kann das spätere Lösen verzögern – ähnlich tiefe Sättigung.

## Berechnungsbeispiel

Eine LED-Last benötigt 60 mA. Mit βforced = 10 sind 6 mA Basisstrom nötig. Bei 3,3 V und UBE = 0,8 V folgt `RB ≈ 417 Ω`; 430 Ω ist ein Kandidat. GPIO- und Portgrenzen werden vor Freigabe geprüft.

## Praxisbezug

Miss GPIO-Pegel, IB über RB, IC über Shunt und VCE. Wiederhole mit zu grossem RB und beobachte höhere VCE sowie Erwärmung, ohne Grenzwerte zu überschreiten.

## 🔗 Hardware ↔ Firmware

Initialisiere den GPIO ohne kurzen Ein-Puls und berücksichtige invertierte Logik. PWM-Frequenz wird so gewählt, dass Schaltzeit, Lastdynamik und Verlustleistung zusammenpassen.

## Merksatz

> Ein BJT-Schalter ist nur dann «ein», wenn Treiberstrom, Sättigung, Last und Wärme gemeinsam geprüft sind.

## Häufige Fehler und Missverständnisse

- RB nur mit typischem β berechnen
- Freilaufdiode vergessen
- VCE(sat) gleich null setzen
- Reset-Pegel nicht definieren

## Zusammenfassung

Der BJT entlastet den GPIO, benötigt aber dauernden Basisstrom. Robuste Auslegung umfasst Treiber, Last, Schutz und Dynamik.

## Übungsfragen

1. Was bedeutet βforced?
2. Welche Leistung entsteht in Q1?
3. Warum verzögert tiefe Sättigung?
4. Welche Reset-Konfiguration ist sicher?

Weitere Aufgaben: [Übungen zu Modul 10](../uebungen/modul-10.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b1-LK01–06`, `b4-LK01–10`, `c1–c2`
- Nachweise: sicherer GPIO-gesteuerter BJT-Lastschalter; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
