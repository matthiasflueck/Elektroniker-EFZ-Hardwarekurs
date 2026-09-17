# Lösungen – Modul 14: Digitaltechnik und Logik

[← Übungen](../uebungen/modul-14.md) · [Lösungsübersicht](README.md)

1. `0xD3 = 1101 0011₂ = 211`. `0xD3 AND 0x3C = 0x10`; nur Bit 4 ist gesetzt.
2. `NMH = 2,6 − 2,0 = 0,6 V`; `NML = 0,8 − 0,35 = 0,45 V`. Beide sind positiv, High besitzt die grössere Reserve.
3. Bei EN = 0 ist Y stets 0. Bei EN = 1 ist Y nur für 01 und 10 gleich 1. Die Tabelle enthält acht Zeilen für A, B und EN.
4. `Y = A AND (B OR NOT B) = A`. Eine Tabelle zeigt für A=0 immer Y=0 und für A=1 unabhängig von B immer Y=1.
5. 12 Bit ergeben 4096 Zustände. `tOverflow = 4096/2 MHz = 2,048 ms`; das höchstwertige Bit hat `2 MHz/4096 ≈ 488,28 Hz`.
6. 32 Takte bei 5 MHz dauern `6,4 µs`. Zusätzlich sind Data-Setup/Hold, Clockflanke, Latchimpuls, Output Enable, Bitreihenfolge und Startzustand zu prüfen.
7. Low-Strom ideal `3,3/2,2 kΩ = 1,5 mA`; mit VOL ist er etwas kleiner. `tr ≈ 0,8473·2,2 kΩ·250 pF ≈ 466 ns`.
8. Hardware: RC plus Schmitt-Trigger mit Zeitkonstante oberhalb der beobachteten Prelldauer. Software: Zustandsänderung erst nach beispielsweise 5 ms stabiler Beobachtung bestätigen. Gemessen werden Rohkontakt und entprelltes Signal gleichzeitig. Für echte kurze Fehlersignale ist ein separater latched Eingang oder ein anderes Zeitkriterium nötig.
