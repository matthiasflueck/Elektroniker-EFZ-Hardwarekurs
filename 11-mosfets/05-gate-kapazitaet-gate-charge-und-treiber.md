# 11.5 – Gate-Kapazität, Gate Charge und Treiber

[← Zurück](04-rds-on-kennfelder-und-sichere-betriebsbereiche.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-low-side-und-high-side-schalter.md)

## Lernziele

Nach dieser Lektion kannst du:

- Gate Charge statt Einzelkapazität zur Treiberwahl nutzen
- Miller-Plateau erklären
- Gatewiderstand als EMV-Verlust-Kompromiss dimensionieren

## Warum ist das wichtig?

Der MOSFET schaltet nur so schnell, wie sein Gate geladen wird. Während des Miller-Plateaus ändert sich die Drainspannung und gleichzeitig entsteht besonders viel Schaltverlust. Treiber und Layout sind deshalb Teil der Leistungsstufe.

## Theorie

### Nichtlineare Kapazitäten

Ciss, Coss und Crss hängen von VDS ab. Für Schaltzeitabschätzungen ist die Gate-Charge-Kurve oft praktischer. Sie zeigt Ladung bis zum Plateau, während des Drainspannungsübergangs und bis zur endgültigen VGS.

![Gate-Charge-Kurve mit Miller-Plateau](../bilder/11-mosfets/11-05-gate-charge.png)

Die mittlere Treiberleistung näherungsweise `Pgate = QG·Vdrive·fs`. Für die Übergangszeit gilt grob `t ≈ ΔQ/IG`. `QG` ist die Gate-Ladung, `fs` die Schaltfrequenz.

### Gatewiderstand und Schleife

Rg begrenzt Spitzenstrom, dämpft Schwingen und steuert Flankensteilheit. Zu gross erhöht Schaltverlust; zu klein kann EMV, Überschwingen und Treiberbelastung verschärfen. Treiber, Gate, Source-Rückleiter und Abblockkondensator bilden eine kurze Stromschleife. Gemeinsame Source-Induktivität erzeugt Gegenkopplung und scheinbare VGS-Spitzen.

## Anschauliches Beispiel

Das Gate gleicht einem Tank, der durch eine Leitung gefüllt wird. Während des Miller-Plateaus bewegt die zufliessende Ladung vor allem die Leistungstür am Drain, obwohl der Gatepegel kurz kaum steigt.

## Berechnungsbeispiel

QG = 35 nC, Vdrive = 10 V und fs = 100 kHz ergeben `Pgate = 35 nC·10 V·100 kHz = 35 mW` mittlere idealisierte Treiberleistung. Die Spitzenströme können dennoch mehrere hundert Milliampere betragen.

## Praxisbezug

Miss VGS direkt Gate-Source und VDS gleichzeitig. Vergleiche zwei sichere Rg-Werte hinsichtlich Übergangszeit, Überschwingen und Temperatur. Bandbreite und Masseführung werden dokumentiert.

## 🔗 Hardware ↔ Firmware

Höhere PWM-Frequenz verbessert Regelauflösung oder Akustik, erhöht aber Gate- und Schaltverluste proportional. Die Firmwarewahl wird thermisch am realen Aufbau verifiziert.

## Merksatz

> Gate Charge und Treiberstrom bestimmen die Schaltzeit; der Gatewiderstand balanciert Verlust, Schwingen und EMV.

## Häufige Fehler und Missverständnisse

- nur Ciss verwenden
- VGS gegen GND statt Source messen
- Gatewiderstand beliebig verkleinern
- PWM-Frequenz ohne thermische Prüfung erhöhen

## Zusammenfassung

Das Gate ist eine dynamische Last. Miller-Plateau, QG, Treiber und Layout formen den Leistungsübergang.

## Übungsfragen

1. Was passiert im Miller-Plateau?
2. Berechne Pgate für 20 nC, 5 V und 200 kHz. Warum liegt Rg nahe am Gate?
3. Welche Folge hat höhere fs?

Weitere Aufgaben: [Übungen zu Modul 11](../uebungen/modul-11.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b1-LK01–04`, `b4-LK01–10`, `c1–c2`
- Nachweise: Gate-/Drain-Oszillogramm mit Treibervergleich; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
