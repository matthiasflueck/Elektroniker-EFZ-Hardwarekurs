# 02.2 – Widerstände, Kennzeichnung und Toleranzen

[← Zurück](01-schaltplan-lesen-und-strompfade-erkennen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-kondensatoren-ladung-und-zeitverhalten.md)

## Lernziele

Nach dieser Lektion kannst du Funktion, Grenzwerte und reale Nichtidealitäten der behandelten Bauteile erklären, sie im Schema und Aufbau sicher zuordnen und ihr Verhalten mit geeigneten Messmitteln prüfen.

## 1. Aufgaben von Widerständen

Widerstände begrenzen Strom, teilen Spannung, definieren Eingänge, setzen Verstärkung, terminieren Leitungen und wandeln Strom in messbare Spannung. Derselbe Widerstandswert kann je nach Position eine völlig andere Funktion haben.

## 2. Kennzeichnung

THT-Widerstände verwenden Farbringe; SMD-Widerstände häufig drei- oder vierstellige Codes. `472` bedeutet `47 · 10² Ω = 4.7 kΩ`; `1001` bedeutet `100 · 10¹ Ω = 1.00 kΩ`. `4R7` kennzeichnet `4.7 Ω`. Null-Ohm-Brücken sind Verbindungselemente und besitzen dennoch Strom- und Leistungsgrenzen.

Kennzeichnungen werden durch Stückliste und Messung bestätigt, nicht nur visuell angenommen.

## 3. Toleranz und Temperaturkoeffizient

`10 kΩ ±1 %` erlaubt bei Referenztemperatur `9.9…10.1 kΩ`. Der Temperaturkoeffizient, z. B. `100 ppm/K`, verursacht bei `50 K` Änderung zusätzlich ungefähr `0.5 %` relative Änderung.

## 4. Nennleistung und Spannung

Verlustleistung wird mit `P = I²R` oder `U²/R` berechnet. Kleine SMD-Widerstände können ausserdem durch maximale Arbeitsspannung begrenzt sein. Zwei Serienwiderstände können Spannung und Leistung verteilen, müssen aber unter Worst Case geprüft werden.

## 5. Messwiderstände

Ein Shunt hat kleinen, präzisen Widerstand. Bei `0.1 Ω` und `2 A` entstehen `0.2 V` sowie `0.4 W`. Leiterbahn- und Kontaktwiderstände verfälschen das Resultat; Kelvin-Anschlüsse trennen Strom- und Messpfad.

## Hardware ↔ Firmware

Pull-Widerstände bestimmen Defaultzustände vor Firmwarestart. Ein Shunt bestimmt ADC-Skalierung und Überstromschwelle. Firmwarekonstanten dürfen nicht von einem idealen Nennwert ausgehen, wenn Toleranz, Verstärkeroffset oder Temperatur relevant sind.

## Auswahlcheck

Wert, Toleranz, Temperaturkoeffizient, Leistung, maximale Spannung, Bauform, Impulsbelastung und Verfügbarkeit gehören zur Auswahl — nicht nur Ohmzahl und Preis.


## Bildungsplan 2026

Primär: `b1`, `b3`, `b4`, `b5`; je nach Aufbau zusätzlich Anforderungen und Machbarkeit aus `a1–a3`.

## Kurzcheck

1. Welche Energie oder Zustandsgrösse kann dieses Bauteil speichern oder beeinflussen?
2. Welcher Datenblattwert begrenzt den sicheren Betrieb?
3. Wie unterscheidest du Bauteilfehler, Aufbaufehler und falsche Messung?
