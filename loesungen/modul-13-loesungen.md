# Lösungen – Modul 13: Analoge Signalaufbereitung und Sensorik

[← Übungen](../uebungen/modul-13.md) · [Lösungsübersicht](README.md)

1. `Iout = 0,250/82 ≈ 3,05 mA`. An 1,8 kΩ fallen rund 5,49 V ab, am Shunt 0,25 V. Für Q1 bleiben `9 − 5,49 − 0,25 = 3,26 V`; die geforderten 1,0 V sind vorhanden. Toleranzen und OPV-Ausgangsbereich bleiben zu prüfen.
2. `ΔU = 4,096 V·12·10⁻⁶/K·50 K ≈ 2,458 mV`. Ein LSB ist `4,096 V/4096 = 1 mV`; die Änderung entspricht etwa 2,46 LSB.
3. `ΔR/R = 0,24/120 = 0,002`. Daher `Udiff ≈ 3,3·0,002/4 = 1,65 mV`. Bei symmetrischer Brücke liegt Ucm nahe 1,65 V.
4. Die Verstärkung muss für beide Richtungen um Vref = 1,65 V geprüft werden. Nach oben stehen `3,1 V - 1,65 V = 1,45 V` zur Verfügung. Bei `+60 mV` Eingangsdifferenz ergibt das höchstens `1,45 V / 0,060 V = 24,2`. Nach unten wären `1,45 V / 0,020 V = 72,5` möglich; begrenzend ist somit die positive Eingangsdifferenz. Sinnvoll ist beispielsweise eine Verstärkung von 20, damit Offset, Widerstandstoleranzen und Fehlerzustände noch Reserve besitzen.
5. `fc ≈ 1/(2π·6,8 kΩ·15 nF) ≈ 1,56 kHz`. Für Q werden genaue Topologie, Verstärkung und Bauteilverhältnisse benötigt. Der OPV braucht ausreichende GBW, Slew Rate, Eingangs-/Ausgangsbereich, Stabilität und Lastfähigkeit.
6. `RS ≥ (18 − 3,6)/1,5 mA = 9,6 kΩ`; 10 kΩ ist ein Kandidat. Bei 1,44 mA entstehen `P ≈ I²R ≈ 20,7 mW`. Pulsdauer, Widerstandsspannung, ADC-Einschwingen und Rückspeisung sind zusätzlich zu prüfen.
7. `τ = (100 kΩ + 200 Ω)·4,7 nF ≈ 471 µs`; `5τ ≈ 2,35 ms`. Zusätzliche Filter, OPV-Einschwingen, ADC-Abtastkapazität, Ladungsinjektion und vorheriger Kanalzustand können die Abweichung vergrössern.
8. Beispiele: Sensorunterbruch, Verstärker in positiver Sättigung, falsche Referenz, Klemmstrom hebt VDD an, ADC-Pin falsch konfiguriert, falscher ADC-Kanal oder Skalierungsfehler. Messe nacheinander Sensor, beide OPV-Eingänge, OPV-Ausgang, ADC-Pin, Vref/VDD und Rohcode. Ein Testkanal an GND/Referenz trennt analogen Pfad und Firmware.
