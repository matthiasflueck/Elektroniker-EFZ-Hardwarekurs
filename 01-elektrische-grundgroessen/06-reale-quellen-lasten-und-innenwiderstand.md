# 01.6 – Reale Quellen, Lasten und Innenwiderstand

[← Zurück](05-kirchhoffsche-regeln-und-knotenpotentiale.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-messen-von-spannung-strom-und-widerstand.md)

## Lernziele

Nach dieser Lektion kannst du die behandelten Grössen mit korrektem Bezug und Vorzeichen beschreiben, typische Schaltungen berechnen, reale Abweichungen einordnen und eine sichere Messung planen.

## 1. Das Quellenmodell

Eine reale Spannungsquelle lässt sich in einem Arbeitsbereich als ideale Quellspannung `U0` in Reihe mit einem Innenwiderstand `Ri` modellieren:

$$U_L = U_0 - I_L R_i.$$

Im Leerlauf ist `I_L ≈ 0`, daher misst man `U0`. Unter Last sinkt die Klemmenspannung. Aus zwei Messpunkten folgt:

$$R_i = \frac{U_\text{Leerlauf}-U_\text{Last}}{I_\text{Last}}.$$

## 2. Lastlinie und maximale Leistung

Mit Last `RL` gilt `I = U0/(Ri+RL)`. Bei `RL = Ri` erhält die Last in diesem einfachen Modell maximale Leistung, aber nur `50 %` Wirkungsgrad. In Versorgungssystemen ist das meist kein gewünschter Betriebspunkt.

## 3. Netzgerät im CV- und CC-Betrieb

Im **CV-Betrieb** hält das Netzgerät die Spannung, solange der geforderte Strom unter der Grenze bleibt. Im **CC-Betrieb** begrenzt es den Strom; die Spannung sinkt. Eine aufleuchtende CC-Anzeige ist deshalb Diagnoseinformation, nicht automatisch ein Gerätefehler.

## 4. Leitungen und Kontakte gehören zur Quelle

Lange Leitungen, Steckkontakte, Sicherungen und Leiterbahnen erhöhen den wirksamen Innenwiderstand. Vierleitermessung trennt Strompfad und Spannungsmessung, wenn Milliohm relevant werden.

## Hardware ↔ Firmware

Ein Mikrocontroller kann bei Versorgungseinbruch resetten oder Brownout auslösen. Danach sinkt die Last, die Spannung erholt sich und das System startet erneut — eine Reset-Schleife. Strom- und Spannungsverlauf am Board erklären dann mehr als der Debugger allein. Der [STM32-Kurs zu Brownout und Hardwarefehlern](https://github.com/matthiasflueck/STM32-Programmierkurs/blob/main/13-robustheit/03-brownout-clock-und-hardwarefehler.md) ergänzt die Firmwareperspektive.

## Beispiel

Eine Quelle misst leerlaufend `5.00 V`. Mit `100 Ω` Last liegen `4.80 V` an; der Strom ist `48 mA`. Damit `Ri ≈ 0.20 V / 0.048 A = 4.17 Ω`. Das Modell gilt nur, solange sich Temperatur und Regelzustand nicht wesentlich ändern.


## Bildungsplan 2026

Primär: `b1` (dimensionieren und Schema verstehen), `b4` (messen und Fehler eingrenzen), `b5` (Anforderungen überprüfen). Die begründete Machbarkeit unterstützt `a3`.

## Kurzcheck

1. Welche Bezugsrichtung oder welcher Bezugspunkt wurde verwendet?
2. Welche Bauteiltoleranz oder Messbeeinflussung ist im realen Aufbau relevant?
3. Ist das Ergebnis hinsichtlich Einheit und Grössenordnung plausibel?
