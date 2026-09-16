# Labor 01 – Ohmsches Gesetz und Belastung vermessen

[← Praxisübersicht](README.md) · [Modul 01](../01-elektrische-grundgroessen/README.md) · [Kursübersicht](../README.md)

## Ziel

Du überprüfst das Ohmsche Gesetz, bestimmst einen belasteten Spannungsteiler und quantifizierst die Messbeeinflussung. Alle Werte werden vorab berechnet.

## Material und sichere Grenzen

Netzgerät `0…6 V` mit `20 mA` Stromgrenze, DMM, `R1 = 2.2 kΩ`, `R2 = 1.0 kΩ`, `RL = 1.0 kΩ`, Steckbrett. Nur spannungsfrei umstecken. Widerstandsmessung ausschliesslich bei ausgeschaltetem und getrenntem Netzgerät.

## Teil A – Widerstandskennlinie

1. Miss `R1` energiefrei und notiere Toleranz/Anzeige.
2. Berechne für `1, 2, 3, 4, 5 V` jeweils Strom und Leistung.
3. Baue `Quelle → R1 → 0 V`; stelle `20 mA` Stromgrenze ein.
4. Miss bei jedem Spannungswert die tatsächliche Spannung am Widerstand.
5. Bestimme den Strom zuerst aus `I = U/R`. Führe danach bei einem Punkt eine direkte Strommessung in Reihe aus und notiere den Unterschied.

| U Soll | U Ist | I berechnet | I direkt | P | Bewertung |
|---:|---:|---:|---:|---:|---|
| 1 V | | | | | |
| 2 V | | | | | |
| 3 V | | | | | |
| 4 V | | | | | |
| 5 V | | | | | |

## Teil B – Belasteter Spannungsteiler

1. Baue `5 V → R1 (2.2 kΩ) → OUT → R2 (1 kΩ) → 0 V`.
2. Berechne `UOUT` unbelastet: Soll etwa `1.5625 V`.
3. Miss `UOUT` und prüfe die Maschensumme.
4. Schalte `RL = 1 kΩ` parallel zu `R2`. Berechne neu mit `R2 || RL = 500 Ω`: Soll etwa `0.926 V`.
5. Miss erneut und erkläre die Änderung über den zusätzlichen Strompfad.

## Teil C – Fehlerdiagnose

Vertausche kontrolliert einen Widerstandswert oder öffne einen Zweig bei ausgeschalteter Quelle. Eine zweite Person erhält nur Sollwerte und Messpunkte und lokalisiert den Fehler mit maximal drei Messungen. Danach Originalzustand wiederherstellen und Regressionstest ausführen.

## Abnahme

- Abweichungen zu den Sollwerten sind mit Bauteiltoleranz und Messunsicherheit erklärt.
- Direkte Strommessung wurde korrekt in Reihe durchgeführt.
- Die Maschenregel stimmt innerhalb der erwarteten Unsicherheit.
- Fehler und Rückbau sind dokumentiert.

## Bildungsplan 2026

`a3`, `b1`, `b4`, `b5`, `d3`.
