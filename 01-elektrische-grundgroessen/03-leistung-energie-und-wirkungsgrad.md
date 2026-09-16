# 01.3 – Leistung, Energie und Wirkungsgrad

[← Zurück](02-widerstand-leitwert-und-ohmsches-gesetz.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-reihen-und-parallelschaltungen.md)

## Lernziele

Nach dieser Lektion kannst du die behandelten Grössen mit korrektem Bezug und Vorzeichen beschreiben, typische Schaltungen berechnen, reale Abweichungen einordnen und eine sichere Messung planen.

## 1. Momentane Leistung

Elektrische Leistung ist Energie pro Zeit:

$$P = U \cdot I$$

Für einen ohmschen Widerstand folgen mit dem Ohmschen Gesetz:

$$P = I^2R = \frac{U^2}{R}.$$

Das Vorzeichen hängt von den gewählten Richtungen ab. Tritt Strom am positiv bezeichneten Anschluss in ein Bauteil ein, nimmt es positive Leistung auf. Eine Quelle kann negative Leistung aufnehmen, also Energie abgeben.

## 2. Energie und Betriebszeit

Bei konstanter Leistung gilt `E = P · t`. Eine Last mit `0.5 W` benötigt in zwei Stunden `1 Wh = 3600 J`. Wattstunden sind Energie, Watt ist Leistung.

## 3. Wirkungsgrad

$$\eta = \frac{P_\text{nutz}}{P_\text{zu}}$$

Ein Regler liefert `3.3 V · 0.20 A = 0.66 W` und nimmt `5.0 V · 0.16 A = 0.80 W` auf. Dann ist `η = 82.5 %`; `0.14 W` werden überwiegend zu Wärme.

## 4. Bauteile dimensionieren

Ein Widerstand sollte nicht dauerhaft exakt an seiner Nennleistung betrieben werden. Datenblatt, Umgebungstemperatur, Leiterplattenfläche und Derating bestimmen die zulässige Belastung. Beispiel: `12 V` an `1 kΩ` ergeben `144 mW`; ein `125-mW`-Widerstand ist ungeeignet, obwohl sein Widerstandswert stimmt.

## 5. Thermische Rückwirkung

Erwärmung verändert Parameter und kann den Strom weiter erhöhen. Deshalb gehören elektrische und thermische Betrachtung zusammen. Das stationäre thermische Gleichgewicht kann deutlich später erreicht werden als der erste korrekte Messwert.

## Hardware ↔ Firmware

Firmware beeinflusst mittlere Leistung über Duty Cycle, Taktrate und Betriebszustände. Ein PWM-Ausgang mit `50 %` Tastgrad halbiert nicht in jedem Verbraucher automatisch die Verlustleistung; Lastart, Schaltverluste und Dynamik sind relevant. Hardwaregrenzen bleiben auch bei Softwarefehlern verbindlich.

## Beispiel

Ein GPIO speist `10 mA` bei etwa `3 V` Spannungsdifferenz: rund `30 mW` an der Last. Zusätzlich entsteht Verlust im Ausgangstreiber. Der Datenblattwert für maximalen Pin- und Gesamtstrom muss geprüft werden; `P = U·I` allein reicht nicht zur Freigabe.


## Bildungsplan 2026

Primär: `b1` (dimensionieren und Schema verstehen), `b4` (messen und Fehler eingrenzen), `b5` (Anforderungen überprüfen). Die begründete Machbarkeit unterstützt `a3`.

## Kurzcheck

1. Welche Bezugsrichtung oder welcher Bezugspunkt wurde verwendet?
2. Welche Bauteiltoleranz oder Messbeeinflussung ist im realen Aufbau relevant?
3. Ist das Ergebnis hinsichtlich Einheit und Grössenordnung plausibel?
