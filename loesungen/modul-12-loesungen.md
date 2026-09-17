# Lösungen – Modul 12: Operationsverstärker

[← Übungen](../uebungen/modul-12.md) · [Lösungsübersicht](README.md)

1. Die Näherung entsteht nur bei stabiler negativer Gegenkopplung, linearem Ausgang und genügend Leerlaufverstärkung. Ohne Rückkopplung oder in Sättigung kann die Eingangsdifferenz deutlich von null abweichen.
2. Der Teiler liefert `10/(100+10) = 0,0909`, also 9,09 %. Ein geeigneter Puffer belastet die Quelle fast nur mit seinem Eingang und liefert den Laststrom am Ausgang.
3. `Av = 1 + R2/R1 = 6`, daher R2 = 50 kΩ; ein realer Standardwert und Toleranz werden gewählt. Grob `fBW ≈ 1 MHz/6 ≈ 167 kHz`, sofern Stabilität und Slew Rate genügen.
4. `Av = −100/22 ≈ −4,545`; ideal `Uout ≈ −1,818 V`. Eine 0/3,3-V-Versorgung kann diesen negativen Ausgang gegen GND nicht liefern; eine Mittelreferenz oder bipolare Versorgung ist nötig.
5. `Udiff = 40 mV`, `Ucm = 1,50 V`, `Uout = 1,00 V`. Ucm und Uout müssen innerhalb der OPV-Bereiche liegen.
6. `UH = 1,40 − 1,25 = 0,15 V`. Rauschen von ±30 mV ist kleiner als die Hysterese; nach einem Umschalten muss das Signal die andere Schwelle erreichen, wodurch Mehrfachschalten stark reduziert wird.
7. `SR = 2π·25 kHz·3 V ≈ 0,471 V/µs`. GBW beschreibt Kleinsignalbandbreite; grosse Ausgangsamplitude kann trotz ausreichender GBW an der Slew Rate scheitern.
8. Miss OPV-Eingänge und Ausgang direkt, dann ADC-Pin und Referenzspannung. Variiere das Eingangssignal unterhalb der Sättigung und lies Rohcodes ohne Skalierung. So lassen sich OPV-Clipping, Schutz-/ADC-Begrenzung, falsche Vref und reine Umrechnungsfehler trennen.
