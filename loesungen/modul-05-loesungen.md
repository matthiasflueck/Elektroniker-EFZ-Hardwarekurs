# Lösungen – Modul 05

[← Übungen](../uebungen/modul-05.md) · [Lösungsübersicht](README.md)

1. Die Quelle verschiebt Ladungen auf zwei getrennte Elektroden. Das Dielektrikum verhindert stationären Durchfluss; zwischen den Elektroden entsteht ein Feld.
2. `Q = C·U = 220 µF·12 V = 2,64 mC`. `EC = 0,5·220 µF·12² = 15,84 mJ`.
3. `τ = 47 kΩ·2,2 µF = 103,4 ms`. uC beträgt näherungsweise 6,32 V, 9,50 V und 9,93 V. Der Endwert wird nur asymptotisch erreicht.
4. XC beträgt etwa 15,9 kΩ, 1,59 kΩ und 159 Ω. Jede Frequenzverzehnfachung teilt XC durch zehn.
5. C0G ist besonders stabil, X7R kompakt mit DC-Bias-Effekt, Folie verlustarm und stabil, Elektrolyt geeignet für grosse Kapazität bei begrenzter Hochfrequenzwirkung und Lebensdauer.
6. `PESR = 0,5²·0,12 Ω = 30 mW`.
7. `C = ΔI·Δt/ΔU = 0,08 A·5 µs/0,05 V = 8 µF`. Zu korrigieren sind Toleranz, DC-Bias, ESR, ESL, Temperatur und Strompfad.
8. Trigger auf das auslösende GPIO-Ereignis; gleichzeitig Versorgung direkt am MCU, Reset und Laststrom messen. Test mit verändertem Lastprofil und verbesserter lokaler Kapazität wiederholen. Gleicher Code bei verändertem Ripple spricht für Hardwareversorgung, stabiler Ripple bei falschem Ereigniszeitpunkt eher für Firmware.
