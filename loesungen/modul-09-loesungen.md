# Lösungen – Modul 09: Dioden, Gleichrichtung und Schutz

[← Übungen](../uebungen/modul-09.md) · [Lösungsübersicht](README.md)

1. Dotierung erzeugt p- und n-Gebiete. Nach Diffusion und Rekombination bleiben ortsfeste Ionen zurück; ihr Feld bildet die Raumladungszone. Vorwärtsspannung senkt die Barriere, Sperrspannung verbreitert sie. Der Strom ist in beiden Richtungen nicht ideal null beziehungsweise unendlich.
2. `ID = (5 − 0,70)/330 ≈ 13,03 mA`. `PD ≈ 0,70·0,01303 = 9,12 mW`; `PR = ID²·R ≈ 56,0 mW`. Die Quelle liefert `5·0,01303 ≈ 65,2 mW`, passend zu PD + PR innerhalb der Rundung.
3. Leitverluste sind 1,70 W beziehungsweise 0,90 W. Für die Wahl fehlen mindestens Sperrspannung, Sperrstrom bei Temperatur, Reverse-Recovery, Gehäuse, thermischer Pfad und Pulsbedingungen.
4. Bei 9 V und 8 mA Last werden mindestens 12 mA durch R1 benötigt: `R1 ≤ (9 − 5,1)/12 mA = 325 Ω`. E24: 300 Ω. Bei 15 V ohne Last fliessen `(15 − 5,1)/300 = 33 mA`; `PZ ≈ 168 mW`, `PR ≈ 327 mW`. Beide Bauteile benötigen ausreichende Nennleistung und Temperaturreserve.
5. Worst Case für Maximalstrom ist UF = 1,8 V: `R ≥ 150 Ω`; E24 150 Ω. Bei UF = 2,2 V fliessen `(3,3 − 2,2)/150 ≈ 7,33 mA`. Versorgungstoleranz fehlt noch.
6. Spitze: `12·sqrt(2) ≈ 16,97 V`; nach zwei idealisierten 0,7-V-Abfällen rund 15,6 V. `C = 0,2/(100·1) = 2000 µF`; gewählt wird ein Standardwert mit Spannungs-, Ripple- und Einschaltstromreserve.
7. `I = (36 − 30)/2 = 3 A`; `P = 30·3 = 90 W`. Es fehlen Pulsdauer und -form, Wiederholrate, Temperatur, TVS-Pulskurve, Toleranzen, Leitungsinduktivität und Quelle.
8. Wahrscheinlich sind Rückspeisung über Pin-Schutzdiode, gemeinsame Peripherieversorgung oder ein unbeabsichtigter Pull-up. Messe ausgeschaltete Versorgung, Eingangsstrom, Pinspannung und Strompfad; trenne den Eingang über Serienwiderstand und beobachte die Änderung. Erst danach Firmwarezustände beurteilen.
