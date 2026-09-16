# Lösungen – Modul 04: Widerstände und Widerstandssensoren

[← Übungen](../uebungen/modul-04.md) · [Lösungsübersicht](README.md)

Herstellerwerte sind nur mit dem jeweils verwendeten Datenblatt verbindlich. Die folgenden Resultate beziehen sich auf die in den Aufgaben ausdrücklich vorgegebenen Zahlen.

## 1 – Technologien

Dickschichtwiderstände sind kostengünstig und weit verbreitet; zu prüfen sind beispielsweise Temperaturkoeffizient und Pulsbelastung. Dünnschichtwiderstände werden häufig für genauere, rauscharme oder stabile Signalpfade gewählt; Spannungs- und Leistungsgrenzen bleiben dennoch relevant. Drahtwiderstände eignen sich je nach Serie für hohe Leistung oder Pulse, können aber eine unerwünschte Induktivität besitzen.

## 2 – Normwerte

In E12 und E24 ist der nächstliegende Wert zu 3,18 kΩ jeweils 3,3 kΩ. Die relative Abweichung beträgt `(3,3−3,18)/3,18 ≈ +3,77 %`. E24 enthält zusätzlich 3,0 kΩ, doch dessen Abweichung ist mit etwa −5,66 % grösser. Eine Funktionsanforderung kann trotzdem eine andere Rundungsrichtung verlangen.

## 3 – LED-Widerstand im Worst Case

Die maximale Versorgung ist 5,15 V, die minimale LED-Spannung 1,8 V. Am Widerstand liegen höchstens 3,35 V. Damit der Strom unter 8 mA bleibt, muss der tatsächliche Widerstand mindestens `3,35 V/8 mA = 418,75 Ω` betragen.

Bei −5 % Toleranz muss der Nennwert mindestens `418,75 Ω/0,95 = 440,8 Ω` betragen. Der nächste höhere E12-Wert ist 470 Ω. Sein Minimalwert ist 446,5 Ω; der maximale Strom beträgt `3,35 V/446,5 Ω ≈ 7,50 mA`. Die grösste Verlustleistung im Widerstand liegt in diesem Grenzfall bei `3,35²/446,5 ≈ 25,1 mW`. Trotz des kleinen Werts sind Temperatur, Bauform und eventuelle Pulsbedingungen zu prüfen.

## 4 – Toleranz und Temperatur

Nur mit ±1 % liegen die Grenzen bei 46,53 kΩ und 47,47 kΩ. Die Temperaturänderung von 60 K bei 50 ppm/K entspricht 0,3 %. Konservativ gegensinnig kombiniert entstehen ungefähr:

- Minimum: `47 kΩ·0,99·0,997 ≈ 46,390 kΩ`
- Maximum: `47 kΩ·1,01·1,003 ≈ 47,612 kΩ`

Ob die Temperaturdrift tatsächlich ± oder mit bekanntem Vorzeichen anzusetzen ist, hängt von der Datenblattspezifikation ab.

## 5 – Teiler-Worst-Case

Die Ausgangsspannung wird maximal mit kleinem oberen und grossem unteren Widerstand:

`U_max = 5 V·10,1/(9,9+10,1) = 2,525 V`.

Minimal wird sie mit 10,1 kΩ oben und 9,9 kΩ unten:

`U_min = 5 V·9,9/(10,1+9,9) = 2,475 V`.

Der Bereich entspricht ±1 % um 2,500 V. Korrelation oder besser spezifiziertes Widerstands-Tracking könnte den Verhältnisfehler reduzieren.

## 6 – Temperaturkoeffizient

Bei −20 °C beträgt die Differenz zu 25 °C `−45 K`. Die relative Änderung ist `25·10⁻⁶·(−45) = −0,001125`. Daher `R ≈ 9,98875 kΩ`.

Bei 85 °C beträgt die Differenz `+60 K`; die Änderung ist `+0,0015`. Daher `R ≈ 10,015 kΩ`. Die Rechnung ist eine lineare Näherung im spezifizierten Bereich.

## 7 – Dauerleistung

`P = 24²/1000 = 0,576 W`. Ein 0,6-W-Nennwert wäre ohne weitere Prüfung zu knapp. Zusätzlich sind Derating bei Umgebungstemperatur, thermische Reserve, maximale Arbeitsspannung, Montage, Widerstandstoleranz und langfristige Zuverlässigkeit zu prüfen.

## 8 – Pulsbelastung

Pulsleistung: `P_P = 2²·22 Ω = 88 W`.

Pulsenergie: `E_P = 88 W·2 ms = 176 mJ`.

Tastgrad: `D = 2 ms/200 ms = 0,01 = 1 %`.

Mittlere Leistung: `P_avg = 88 W·0,01 = 0,88 W`.

Benötigt werden mindestens eine passende Einzel-/Wiederholpuls-Kurve, zulässige Puls- und Arbeitsspannung, Derating, erlaubte Wiederholzahl sowie thermische Montagebedingungen des konkreten Widerstands.

## 9 – SMD-Codes

- `221` → `22·10¹ Ω = 220 Ω`
- `4992` → `499·10² Ω = 49,9 kΩ`
- `0R47` → 0,47 Ω
- `000` → üblicherweise 0-Ω-Brücke

Verifikation ist nötig, weil Codes herstellerspezifisch oder nicht eindeutig sein können und weil Bestückungsfehler vorkommen. Kleine Bauteile tragen teilweise gar keine Markierung. Stückliste, Referenzbezeichner und Messung im spannungsfreien Zustand sind zuverlässiger.

## 10 – Belastetes Potentiometer

Bei 40 % liegen unten 8 kΩ und oben 12 kΩ. Unbelastet gilt `U_W = 5 V·8/(12+8) = 2,00 V`.

Die 10-kΩ-Last liegt parallel zu 8 kΩ. Der untere Ersatzwert beträgt `8 kΩ || 10 kΩ = 4,444 kΩ`. Damit wird `U_W = 5 V·4,444/(12+4,444) ≈ 1,35 V`. Die Last verursacht eine grosse Abweichung.

## 11 – NTC-Teiler

Bei 10 kΩ NTC gilt `U_out = 3,3 V·10/(10+10) = 1,65 V`. Bei 4 kΩ gilt `U_out = 3,3 V·4/(10+4) ≈ 0,943 V`. Weil der NTC unten liegt und sein Widerstand bei Erwärmung sinkt, sinkt auch die Ausgangsspannung.

## 12 – Kennlinienmessung

Geeignet sind beispielsweise Temperaturbad oder thermisch gut gekoppelter Aufbau, Referenzthermometer, DMM und ein kleiner definierter Messstrom. Mindestens fünf Punkte werden über den relevanten Bereich verteilt. Abgelesen wird erst, wenn Referenztemperatur und NTC-Wert während einer festgelegten Zeit kaum noch driften. Messstrom und Messdauer werden so klein gehalten, dass Eigenerwärmung gegenüber der geforderten Genauigkeit vernachlässigbar ist. Pro Punkt gehören Temperatur, NTC-Widerstand, Zeit, Messgerät, Bereich, Unsicherheit und Umgebungsbedingungen ins Protokoll.

## 13 – LDR-Teiler

Für den LDR oben gilt:

- 2 kΩ: `U_out = 3,3 V·10/(2+10) = 2,75 V`
- 10 kΩ: `U_out = 1,65 V`
- 100 kΩ: `U_out = 0,30 V`

Wenn der spezifizierte Normalbereich inklusive Toleranzen etwa 0,25…2,85 V umfasst, könnten beispielsweise `<0,10 V` und `>3,20 V` als Diagnosebereiche dienen. Die endgültigen Grenzen benötigen Worst-Case, ADC-Fehler und reale Leitungsfehlerprüfungen.

## 14 – NTC bis Temperaturanzeige

Kette: Temperatur verändert NTC-Widerstand → Spannungsteiler erzeugt Spannung → Eingangsschutz/ADC-Abtastnetz übernimmt den Pegel → ADC wandelt relativ zu seiner Referenz → Firmware rechnet Code in Spannung, dann Widerstand und schliesslich per Tabelle oder Modell in Temperatur um → Anzeige formatiert das Ergebnis.

Hardwareursachen sind etwa NTC-Toleranz, Festwiderstandsfehler, Eigenerwärmung und schlechte thermische Kopplung. Firmwareursachen sind falscher Teileransatz, Celsius im Beta-Modell oder fehlerhafte Tabelle. Beide Bereiche betreffen ADC-Referenzannahme, Abtastzeit, Kalibrierung und zeitliche Filterung. Eine gute Diagnose vergleicht Spannung, Rohcode und berechnete Zwischenwerte.
