# Lösungen – Modul 01

[← Übungen](../uebungen/modul-01.md) · [Lösungsübersicht](README.md) · [Kursübersicht](../README.md)

## Lösung 1

`UAB = VA - VB = 2.5 V`; rote Spitze an A, schwarze an B. `UBA = -2.5 V`; rote Spitze an B, schwarze an A.

## Lösung 2

`I = 12 V / 680 Ω = 17.65 mA`; `P = 12²/680 = 0.212 W`. `0.125 W` ist unzulässig, `0.25 W` liegt sehr nahe am Nennwert. Ohne spezielle Deratingangabe ist `0.5 W` die robuste Auswahl; Umgebung und Datenblatt bleiben zu prüfen.

## Lösung 3

Unbelastet `2.5 V`. `R2 || RL = 10 kΩ || 47 kΩ = 8.246 kΩ`; `Uout = 5 V · 8.246/(10+8.246) = 2.260 V`. Der unbelastete Thevenin-Widerstand ist `R1 || R2 = 5 kΩ`.

## Lösung 4

`Rges = 3.2 kΩ`, `I = 2.8125 mA`; `U2.2k = 6.1875 V`, `U1k = 2.8125 V`. Masche: `9.00 - 6.1875 - 2.8125 = 0 V`. An jedem Verbindungsknoten ist hinein- gleich herausfliessender Strom.

## Lösung 5

`I100 = 4.60 V/100 Ω = 46 mA`; `Ri = (5.10-4.60)/0.046 = 10.87 Ω`. Mit `47 Ω`: `I = 5.10/(10.87+47) = 88.1 mA`, `UL = 4.14 V`. Das Ergebnis gilt nur, falls die Quelle in demselben linearen Betriebsbereich bleibt.

## Lösung 6

Prozentanteil `0.008 · 3.300 V = 0.0264 V`; drei Digits bei `1 mV` sind `0.003 V`. Gesamt `±0.0294 V`, also ungefähr `3.271…3.329 V`.

## Lösung 7

Widerstandstoleranz; ADC-Referenzfehler; Eingangsschutz bei Überspannung; Quellimpedanz und Sample-and-Hold; Leckstrom; Rauschen; gemeinsame Masse; Widerstandsspannungsfestigkeit; Quantisierung; Kalibrierung. Firmware muss Skalierung, Referenz und Fehlergrenzen passend zur realen Beschaltung verwenden.
