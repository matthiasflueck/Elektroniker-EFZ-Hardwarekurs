# Modul 14 – Digitaltechnik und Logik

[← Vorheriges Modul](../13-analoge-signalaufbereitung/README.md) · [Kursübersicht](../README.md) · [Nächstes Modul →](../15-schnittstellen-busse/README.md)

## Worum geht es?

Digitale Schaltungen verarbeiten logische Zustände, bestehen aber aus realen Spannungen, Strömen und zeitabhängigen Flanken. Dieses Modul verbindet Zahlensysteme und Boolesche Funktionen mit Pegelgrenzen, Laufzeiten, Flip-Flops, Schieberegistern und Open-Drain-Netzen.

Neben der statischen Wahrheitstabelle wird immer auch gefragt: Wann ist ein Pegel gültig, welche Störreserve bleibt, was geschieht während Reset und welche Übergänge sieht der Logic Analyzer?

## Lernpfad

1. [14.1 – Binär- und Hexadezimalsystem](01-binaer-und-hexadezimalsystem.md)
2. [14.2 – Logikpegel, TTL und CMOS](02-logikpegel-ttl-und-cmos.md)
3. [14.3 – Gatter und Wahrheitstabellen](03-gatter-und-wahrheitstabellen.md)
4. [14.4 – Boolesche Algebra](04-boolesche-algebra.md)
5. [14.5 – Flip-Flops, Zähler und Zustände](05-flip-flops-zaehler-und-zustaende.md)
6. [14.6 – Multiplexer und Schieberegister](06-multiplexer-und-schieberegister.md)
7. [14.7 – Open Collector, Open Drain, Pull-Widerstände und Entprellung](07-open-collector-open-drain-pull-widerstaende-und-entprellung.md)

## Üben und Anwenden

- [Übungen Modul 14](../uebungen/modul-14.md)
- [Separate Lösungen](../loesungen/modul-14-loesungen.md)
- [Praxis – Digitale Schaltung mit Logic Analyzer untersuchen](../praxis/modul-14.md)

## Hardware ↔ Firmware

Registerbits, GPIO-Modi und Timerzustände werden mit realen Pegeln und Zeitdiagrammen verbunden. Das Modul schafft die elektrische Grundlage; konkrete STM32-Register und C-Programme werden im [STM32-Programmierkurs](https://github.com/matthiasflueck/STM32-Programmierkurs) vertieft.

## Bezug Bildungsplan 2026

Schwerpunkte: `b1`, `b4`, `b5`, `c1–c2` sowie hardwarebezogene Grundlagen zu `c5`; konkrete Nachweise stehen in der [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
