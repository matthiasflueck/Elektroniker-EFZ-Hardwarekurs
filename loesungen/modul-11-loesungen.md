# Lösungen – Modul 11: MOSFETs und Leistungsschalter

[← Übungen](../uebungen/modul-11.md) · [Lösungsübersicht](README.md)

1. Das isolierte Gate zieht stationär fast keinen Strom, besitzt aber Gate-Ladung. Für kurze Übergänge muss der Treiber diese Ladung schnell bewegen; kleiner Schaltstrom verlängert die Zeit mit gleichzeitig hohem VDS und ID.
2. Gate 12 V: VGS = 0 V, aus. Gate 8 V: VGS = −4 V. Gate 0 V: VGS = −12 V. Kritisch ist die absolute VGS-Grenze; zusätzlich muss −4 V den gewünschten RDS(on) garantieren.
3. VGS(th) belegt nur beginnenden Kleinstrom. Ohne garantierten RDS(on) bei 3,3 V ist der Typ nicht freigegeben. Ein spezifizierter Logic-Level-Typ oder Gate-Treiber ist nötig.
4. Bei 7 A: `P = 49·0,028 = 1,372 W`. Bei 9 A: `P = 81·0,028 = 2,268 W`. Der quadratische Anstieg ist plausibel.
5. `Pgate = 30 nC·10 V·80 kHz = 24 mW`. Für die Plateauphase `t ≈ 12 nC/0,15 A = 80 ns`. Spitzenstrom und Treiberverluste bleiben zu prüfen.
6. Während Totzeit führt je nach Stromrichtung eine Body-Diode. Zu kurze Totzeit lässt beide MOSFETs gleichzeitig leiten und erzeugt Shoot-through; zu lange Totzeit erhöht Diodenverlust. Geprüft werden beide Gates relativ zu ihren Sources und der Schaltknoten.
7. `Psw ≈ 0,5·24·6·120 ns·50 kHz = 0,432 W`. `Pcond = 6²·0,018 = 0,648 W`; zusammen idealisiert 1,08 W plus weitere Anteile.
8. Miss VGS, VDS und Strom synchron, bestimme tr/tf sowie Überschwingen, kontrolliere Gate-Treiberstrom und Temperatur. Gleichbleibender Irms bei mehr Übergängen spricht für Schaltverlust; höhere Ringing-Spitzen oder Body-Diodenleitung zeigen zusätzliche Pfade.
