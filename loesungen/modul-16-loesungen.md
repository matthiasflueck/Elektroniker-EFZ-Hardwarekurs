# Lösungen – Modul 16: Stromversorgungen

[← Übungen](../uebungen/modul-16.md) · [Lösungsübersicht](README.md)

1. Dauerabfall `0,12 A·0,35 Ω = 42 mV`, Pulsabfall `0,65 A·0,35 Ω = 227,5 mV`. Zusätzlich sind zulässige Ausgangstoleranz, Ripple/Lastsprung, Temperatur, Pulswiederholung, Einschaltstrom und Schutz festzulegen.
2. `Iin ≈ 284 mA`; `Pin = 9·0,284 = 2,556 W`. `Pout = 3,3·0,28 = 0,924 W`; `PV = 1,632 W`; `η ≈ 36,2 %`. Die Thermik ist kritisch.
3. `TJ ≈ 50 + 1,1·62 = 118,2 °C`. RθJA gilt nur für die spezifizierte Platine, Kupferfläche, Gehäusemontage und Luft. Kontaktwiderstände, Nachbarwärme, Transient und Messfehler können abweichen.
4. Buck: `D ≈ 5/24 = 0,208`. Boost: `D ≈ 1 − 5/12 = 0,583`. Verluste, Mindestzeiten, Betriebsart, Ripple und Regelreserve verschieben die realen Werte.
5. `Pin = 12,1·0,310 = 3,751 W`; `Pout = 5,04·0,620 = 3,125 W`; `η ≈ 83,3 %`; Verlust rund 0,626 W.
6. `I = (48 − 36)/3 = 4 A`; momentane Leistung `P = 36·4 = 144 W`. Es fehlen Pulsdauer/-form, Wiederholrate, Temperatur, Toleranzen, TVS-Pulskurve, Quellenenergie und nachgeschaltete Grenzwerte.
7. `C ≥ 0,4 A·15 µs/0,08 V = 75 µF`. ESR erzeugt zusätzlich `0,4 A·25 mΩ = 10 mV`; ESL und Regelantwort fehlen noch.
8. Der grösste Teil war eine Tastkopf-Masseschleife, die magnetisch einkoppelte. Für den Test: kurze Massefeder direkt am Ausgangskondensator, definierte Bandbreite und Kopplung, mehrere Lastpunkte, gleichzeitige Ein-/Ausgangsleistung nahe am Regler, Temperatur und Messunsicherheit dokumentieren.
