# Lösungen – Modul 10: Bipolartransistoren

[← Übungen](../uebungen/modul-10.md) · [Lösungsübersicht](README.md)

1. Beim NPN-Low-Side fliesst Hauptstrom von Plus über Last und Kollektor zum Emitter/GND; der Emitterpfeil zeigt nach aussen. Beim PNP-High-Side fliesst er vom Emitter an Plus über den Kollektor zur Last; der Pfeil zeigt zur Basis. Beide Basen benötigen begrenzten Strom und definierten Aus-Zustand.
2. `β = 96/1,2 = 80`; `IE = 97,2 mA`. In Sättigung begrenzen Last und Versorgung IC, beide PN-Übergänge sind vorwärts gepolt und die aktive β-Beziehung ist nicht mehr zuverlässig.
3. Bei VCE = 0 wären `IC = 9/180 = 50 mA`; bei IC = 0 gilt VCE = 9 V. Im geometrischen Mittelpunkt liegen 4,5 V und 25 mA, somit `PQ = 112,5 mW`.
4. `UE ≈ 1,1 V`, damit `IE ≈ 1,1 mA`. Am RC fallen ungefähr 4,29 V ab, `UC ≈ 4,71 V`; `VCE ≈ 3,61 V`. Basisstrombelastung und IC/IE-Unterschied sind noch zu prüfen.
5. `IB = 12 mA`; `RB = (3,3 − 0,8)/0,012 ≈ 208 Ω`, Kandidat 220 Ω. Dieser Strom kann für einen GPIO zu hoch sein; Datenblattgrenzen und Portsumme prüfen oder MOSFET/Treiber wählen.
6. `Ûin ≤ 4 V/8 = 0,5 V`. Für geringe Verzerrung ist zusätzliche Reserve nötig.
7. `PQ ≈ 0,75 W`; `TJ ≈ 35 + 0,75·70 = 87,5 °C`. Zusätzlich SOA/Secondary Breakdown, Maximaltemperatur, Layoutbedingungen, Toleranz und dynamische Last prüfen.
8. Mögliche Ursachen: zu grosser RB/zu kleiner IB, GPIO-High bricht ein, C/E vertauscht, falscher Transistortyp, zu hoher Laststrom oder defekter Freilaufpfad. Messe UGPIO, Spannung über RB, IB, IC, VCE und Pinbelegung stromlos; ändere jeweils nur eine Bedingung.
