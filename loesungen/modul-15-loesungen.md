# Lösungen – Modul 15: Digitale Schnittstellen und Busse

[← Übungen](../uebungen/modul-15.md) · [Lösungsübersicht](README.md)

1. Ideal verlangt 330 Ω rund 10 mA und überschreitet die Bedingung für garantiertes VOH. Ein grösserer Widerstand, externer Transistor/Puffer oder Treiber ist geeigneter. Pin- und Portsumme müssen passen.
2. `tbit = 1/57600 ≈ 17,36 µs`. 8N1 benötigt zehn Bits, also 173,6 µs pro Zeichen. Ideal sind 5760 Byte/s möglich.
3. `tr ≈ 0,8473·3,3 kΩ·180 pF ≈ 503 ns`. Der Low-Strom ist `(3,3 − 0,4)/3,3 kΩ ≈ 0,879 mA`.
4. Reine Bitzeit `40/12 MHz ≈ 3,333 µs`; zusammen mit CS-Zeiten mindestens `3,333 + 0,8 + 0,5 = 4,633 µs`.
5. 60 Ω entsprechen zwei 120-Ω-Endabschlüssen parallel. 40 Ω deuten auf drei 120-Ω-Abschlüsse. Bei 1,8 V an 60 Ω fliessen 30 mA differentieller Laststrom.
6. Mögliche Ursachen: Transceiver ohne Versorgung, Standby aktiv, Buspins offen, Kurzschluss/defekter Schutz, fehlender Bezug oder defekter Transceiver. Miss Versorgung und Enable, TXD/RXD, CANH/CANL gegen Bezug, Buswiderstand stromlos und Stromaufnahme.
7. Aktuell `tr ≈ 0,8473·4,7 kΩ·220 pF ≈ 876 ns`, also zu langsam. `RPmax = 500 ns/(0,8473·220 pF) ≈ 2,68 kΩ`; Sinkstrom und Verlust sind danach zu prüfen.
8. Ein 1:1-Tastkopf besitzt deutlich höhere Kapazität und belastet die Leitung; Pull-up oder Treiber kann die geforderte Flanke nicht mehr erzeugen. Verwende einen kompensierten 10:1-Tastkopf mit kurzer Massefeder oder einen geeigneten aktiven Tastkopf und dokumentiere seine Kapazität.
