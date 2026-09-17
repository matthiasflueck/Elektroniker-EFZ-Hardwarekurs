# Übungen – Modul 15: Digitale Schnittstellen und Busse

[← Modul 15](../15-schnittstellen-busse/README.md) · [Übungsübersicht](README.md)

1. Ein GPIO garantiert VOH(min) nur bei 8 mA. Eine Last von 330 Ω liegt nach GND an 3,3 V. Beurteile die Verbindung und nenne eine bessere Lösung.
2. Berechne Bitzeit, 8N1-Zeichenzeit und ideale Datenrate in Byte/s für 57600 Baud.
3. Ein I²C-Bus besitzt VDD = 3,3 V, RP = 3,3 kΩ und CB = 180 pF. Berechne tr. Bei VOL(max) = 0,4 V: Welchen Low-Strom muss ein Teilnehmer aufnehmen?
4. Ein SPI-Transfer sendet 40 Bit bei 12 MHz. CS benötigt 0,8 µs Vorlauf und 0,5 µs Nachlauf. Bestimme die minimale Transferzeit.
5. Ein RS-485-Bus misst stromlos 60 Ω, danach 40 Ω. Erkläre beide Werte. Wie gross ist der differentielle Laststrom bei 1,8 V und 60 Ω?
6. Ein CAN-Bus zeigt korrekte TXD-Signale, aber CANH und CANL bleiben gleich. Nenne vier Hardwareursachen und passende Messungen.
7. Eine Leitung mit 4,7 kΩ Pull-up und 220 pF muss in 500 ns von 30 % auf 70 % steigen. Prüfe die aktuelle Dimensionierung und berechne den maximalen RP.
8. Ein Bus funktioniert mit Logic Analyzer, fällt aber beim Anschliessen eines 1:1-Oszilloskoptastkopfs aus. Erkläre eine plausible elektrische Ursache und entwirf einen besseren Messaufbau.

> [Separate Lösungen](../loesungen/modul-15-loesungen.md)
