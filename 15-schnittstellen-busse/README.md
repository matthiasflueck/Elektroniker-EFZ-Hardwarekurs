# Modul 15 – Digitale Schnittstellen und Busse

[← Vorheriges Modul](../14-digitaltechnik/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../16-stromversorgungen/README.md)

## Worum geht es?

UART, I²C, SPI, RS-485 und CAN werden hier nicht nur als Protokolle, sondern als elektrische Systeme behandelt. Pegel, Treiberart, Pull-up, Abschluss, Leitungskapazität, Gleichtakt und Rückstrompfad entscheiden, ob korrekt konfigurierte Firmware tatsächlich kommuniziert.

Jede Schnittstelle wird vom MCU-Peripheral über den Pin und Transceiver bis zum messbaren Bussignal verfolgt. Oszilloskop und Logic Analyzer ergänzen sich: Das eine zeigt die elektrische Qualität, das andere die logische Bedeutung.

## Lernpfad

1. [15.1 – GPIO als elektrische Schnittstelle](01-gpio-als-elektrische-schnittstelle.md)
2. [15.2 – UART und RS-232](02-uart-und-rs-232.md)
3. [15.3 – I²C, Open Drain und Pull-up](03-i-c-open-drain-und-pull-up.md)
4. [15.4 – SPI und Chip Select](04-spi-und-chip-select.md)
5. [15.5 – RS-485 und differentielle Übertragung](05-rs-485-und-differentielle-uebertragung.md)
6. [15.6 – CAN, Terminierung und Schutz](06-can-terminierung-und-schutz.md)
7. [15.7 – Pegelwandler, Leitungskapazität und Signalintegrität](07-pegelwandler-leitungskapazitaet-und-signalintegritaet.md)

## Üben und Anwenden

- [Übungen Modul 15](../uebungen/modul-15.md)
- [Separate Lösungen](../loesungen/modul-15-loesungen.md)
- [Praxis – UART, I²C und SPI elektrisch untersuchen](../praxis/modul-15.md)

## Hardware ↔ Firmware

Dieses Modul ist die zentrale Brücke zum [STM32-Programmierkurs](https://github.com/matthiasflueck/STM32-Programmierkurs): Konfiguration und Register erklären die beabsichtigte Funktion, die Messung an Pin und Bus bestätigt Pegel, Timing, Richtung und Fehlerzustände.

## Bezug Bildungsplan 2026

Schwerpunkte: `b1`, `b2`, `b4`, `b5`, `c1–c2` und hardwarebezogene Anteile von `d9`; konkrete Nachweise stehen in der [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
