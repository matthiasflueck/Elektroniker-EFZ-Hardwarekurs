# Lösungen – Modul 03: Gleichstromnetzwerke und Netzwerkanalyse

[← Übungen](../uebungen/modul-03.md) · [Lösungsübersicht](README.md)

Die Rechenwege zeigen eine mögliche saubere Lösung. Abweichende Rundungen oder andere korrekte Verfahren sind zulässig, wenn Annahmen und Einheiten dokumentiert sind.

## 1 – Parallele Topologie

Drei Widerstände liegen genau dann parallel, wenn jeder erste Anschluss am gleichen Knoten A und jeder zweite Anschluss am gleichen Knoten B liegt. Ihre zeichnerische Ausrichtung ist bedeutungslos. Über allen drei Widerständen liegt dann dieselbe Spannung `U_AB`.

## 2 – Kleiner Parallelersatz

Jeder zusätzliche Parallelzweig bietet einen weiteren Leitpfad. Bei gleicher Klemmenspannung steigt dadurch der Gesamtstrom. Weil `R_eq = U/I_total` gilt, muss der Ersatzwiderstand sinken. Er ist kleiner als der kleinste Einzelwiderstand, solange alle Zweigwiderstände positiv und endlich sind.

## 3 – Knotenbilanz

Zufliessend positiv ergibt `8,2 mA + 1,8 mA − 4,0 mA − 3,5 mA − I_5 = 0`. Daraus folgt `I_5 = 2,5 mA` abfliessend. Kontrolle: 10,0 mA fliessen hinein und 10,0 mA hinaus.

## 4 – Ersatzwiderstände

In Reihe:

`R_eq = 220 Ω + 330 Ω + 1000 Ω = 1550 Ω = 1,55 kΩ`.

Parallel:

`1/R_eq = 1/220 Ω + 1/330 Ω + 1/1000 Ω`

Daraus folgt `R_eq ≈ 116,6 Ω`. Der Wert liegt unter 220 Ω und ist damit plausibel.

## 5 – Gemischtes Netzwerk

Zuerst wird der Parallelzweig ersetzt:

`R_23 = 2,2 kΩ || 3,3 kΩ = 1,32 kΩ`.

Der Gesamtwiderstand beträgt `2,32 kΩ`; somit fliesst `I_total = 12 V/2,32 kΩ = 5,172 mA`. An `R_1` fallen 5,172 V ab. Der Parallelknoten liegt daher bei `12 V − 5,172 V = 6,828 V` gegen GND.

Zweigströme:

- `I_2 = 6,828 V/2,2 kΩ = 3,103 mA`
- `I_3 = 6,828 V/3,3 kΩ = 2,069 mA`

Knotenkontrolle: `3,103 mA + 2,069 mA = 5,172 mA`.

Leistungen, gerundet:

- `P_R1 = 26,75 mW`
- `P_R2 = 21,18 mW`
- `P_R3 = 14,13 mW`

Summe der Lastleistungen: 62,06 mW. Die Quelle liefert `12 V·5,172 mA = 62,07 mW`; die Rundungsabweichung ist vernachlässigbar.

## 6 – Spannungsteiler dimensionieren

Für 3 V aus 15 V wird ein Teilverhältnis von 0,2 benötigt. Der Gesamtwiderstand muss wegen `100 µA ≤ I ≤ 200 µA` zwischen 75 kΩ und 150 kΩ liegen.

Eine mögliche E24-Wahl ist `R_1 = 82 kΩ` oben und `R_2 = 20 kΩ` unten. Der Teilerstrom beträgt `15 V/102 kΩ = 147,1 µA`. Die Ausgangsspannung ist `15 V·20/102 = 2,941 V`. Sie liegt rund 2,0 % unter dem Zielwert. Andere begründete E24-Kombinationen sind möglich.

## 7 – Belasteter Teiler

Mit `R_L = 47 kΩ` wird der untere Zweig:

`R_2L = 20 kΩ || 47 kΩ ≈ 14,03 kΩ`.

Damit folgt `U_out,bel = 15 V·14,03/(82+14,03) ≈ 2,192 V`. Gegenüber 2,941 V Leerlauf sind das ungefähr `−25,5 %`. Die starke Abweichung ist plausibel, weil die Last nicht deutlich grösser als der Ausgangswiderstand des Teilers ist.

## 8 – Stromteiler

Die Leitwerte sind ungefähr 2,128 mS, 1,000 mS und 0,455 mS. Ihre Summe beträgt 3,582 mS. Daraus folgen:

- durch 470 Ω: `20 mA·2,128/3,582 ≈ 11,88 mA`
- durch 1,0 kΩ: `≈ 5,58 mA`
- durch 2,2 kΩ: `≈ 2,54 mA`

Die Summe beträgt gerundet 20,00 mA. Der kleinste Widerstand führt den grössten Strom.

## 9 – Reale Quelle

Der Spannungsabfall von 0,40 V entsteht bei 40 mA. Im linearen Modell ist `R_i = 0,40 V/0,040 A = 10 Ω`. Die Théveninquelle lautet daher 9,10 V in Reihe mit 10 Ω.

Bei 70 mA werden `0,070 A·10 Ω = 0,70 V` intern abfallen. Vorhersage: `U_K = 8,40 V`. Die Aussage gilt nur, solange das Verhalten linear bleibt. Strombegrenzung, Ladezustand, Erwärmung oder chemische Dynamik einer Batterie können das Modell ungültig machen.

## 10 – Thévenin und Norton

Leerlaufspannung am Mittelabgriff:

`U_Th = 10 V·12/(18+12) = 4,00 V`.

Bei deaktivierter idealer Spannungsquelle liegen beide Widerstände parallel:

`R_Th = 18 kΩ || 12 kΩ = 7,20 kΩ`.

Die Nortonquelle besitzt `I_N = 4,00 V/7,20 kΩ = 0,556 mA` parallel zu `R_N = 7,20 kΩ`.

## 11 – Belastung durch Voltmeter

Das Voltmeter liegt parallel zum unteren 1-MΩ-Widerstand. Deren Ersatzwert beträgt `1 MΩ || 10 MΩ = 0,909 MΩ`. Daher zeigt es:

`U_out = 10 V·0,909/(1+0,909) ≈ 4,76 V`.

Die Anzeige ist für die belastete Schaltung korrekt. Ein ideales Messgerät mit unendlichem Eingangswiderstand würde 5,00 V anzeigen.

## 12 – Fehlerhypothesen

Mögliche Ursachen sind unterschiedliche Betriebszustände, falsche Messbuchse oder Messfunktion, Amperemeter parallel statt in Serie, vertauschte Zuordnung der Messwerte, ein unberücksichtigter weiterer Zweig oder eine ausgelöste Gerätesicherung. Sinnvolle Reihenfolge: Schaltung spannungsfrei prüfen, Messleitungen/Buchsen kontrollieren, Aufbau mit Schema vergleichen, Versorgung reproduzierbar einstellen und Messungen einzeln wiederholen. Erst danach werden Bauteile ersetzt.

## 13 – Messschema

Die Spannung wird jeweils zwischen einem benannten Knoten und GND beziehungsweise direkt über dem Bauteil gemessen. Der Gesamtstrom kann über den Spannungsabfall an `R_1` als `I = U_R1/R_1` bestimmt werden. Die Zweigströme folgen entsprechend aus den Spannungsabfällen an `R_2` und `R_3`. Dadurch muss der Strompfad nicht für jede Messung aufgetrennt werden. Widerstandswerte werden nur im spannungsfreien Zustand gemessen.

## 14 – ADC-Teiler

Ideal gilt `U_ADC = 12 V·33/(100+33) ≈ 2,977 V`. Reale Abweichungen können durch Widerstandstoleranz, ADC-Referenzfehler, zu hohe Quellimpedanz bei kurzer Abtastzeit, Eingangsschutz-Leckstrom, Versorgungsschwankung, Quantisierung, Masseabfall und falschen Skalierungsfaktor in der Firmware entstehen. Zusätzlich muss geprüft werden, ob der Eingang bei maximaler 12-V-Signalspannung sicher unter seiner zulässigen Grenze bleibt.
