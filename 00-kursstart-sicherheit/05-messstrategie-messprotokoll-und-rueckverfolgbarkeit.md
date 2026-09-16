# 00.5 – Messstrategie, Messprotokoll und Rückverfolgbarkeit

[← Zurück](04-laborarbeitsplatz-ordnung-und-freigaben.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-technische-dokumentation-und-versionsverwaltung.md)

## Lernziele

Nach dieser Lektion kannst du die beschriebenen Regeln auf einen realen Laborauftrag anwenden, Risiken und Freigabekriterien begründen sowie deine Arbeit so dokumentieren, dass eine zweite Person sie sicher nachvollziehen kann.

## 1. Von der Frage zur Messung

Jede Messung beginnt mit einer technischen Frage. „Spannung messen“ ist zu ungenau; „liegt TP3 im eingeschwungenen Zustand zwischen 3.25 V und 3.35 V gegen AGND?“ ist prüfbar.

Ein Messplan enthält:

- Prüffrage und Akzeptanzbereich,
- Messpunkt und Bezugspunkt,
- erwarteten Wert samt Herleitung,
- Messgerät, Tastkopf und relevante Einstellung,
- Betriebszustand, Versorgung und Umgebung,
- Reihenfolge und Schutzmassnahmen.

## 2. Das Messgerät verändert die Schaltung

Ein reales Voltmeter hat endlichen Eingangswiderstand. Misst ein `10-MΩ`-Multimeter an einem Spannungsteiler mit sehr hohen Widerständen, entsteht ein zusätzlicher Parallelpfad. Ein Oszilloskop-Tastkopf bringt neben Widerstand auch Kapazität ein und kann schnelle oder hochohmige Signale sichtbar verändern.

Das Messergebnis lautet deshalb nicht einfach „der wahre Wert“, sondern „Anzeige unter diesen Messbedingungen“.

## 3. Soll-Ist-Vergleich

Ein nützliches Protokoll trennt drei Spalten:

| Grösse | Soll | Ist |
|---|---:|---:|
| Versorgung | 5.00 V ± 2 % | 4.98 V |
| Strom | 3.0 mA ± 0.4 mA | 2.96 mA |

Die absolute Abweichung ist `Δx = x_ist - x_soll`; die relative Abweichung ist `δ = Δx / x_soll`. Eine Abweichung wird erst dann als Fehler bezeichnet, wenn Toleranzen, Messunsicherheit und Betriebsbedingungen berücksichtigt sind.

## 4. Rückverfolgbarkeit

Damit ein Resultat später reproduziert werden kann, gehören mindestens Gerätebezeichnung, Inventar- oder Seriennummer, Kalibrierstatus, Tastkopf, Firmware-/Boardversion und Rohdaten dazu. Ein Bildschirmfoto ohne Zeitbasis, Vertikalskalierung und Messpunkt ist kein vollständiger Nachweis.

## Hardware ↔ Firmware

Firmware kann Messzustände reproduzierbar herstellen: definierte PWM-Tastgrade, Testsignale, Diagnosezähler oder eingefrorene Zustandsautomaten. Der Prüfmodus muss versioniert und so gestaltet sein, dass er Schutzgrenzen nicht umgeht.

## Messregel

**Ein Wert ohne Messpunkt, Bezug, Bedingung und Einheit ist keine belastbare technische Aussage.**


## Bildungsplan 2026

Dieses Thema unterstützt `a1` (Anforderungen erfassen), `d1` (Aufträge planen), `d2` (Verlauf kontrollieren) und `d3` (Ergebnisse auswerten). Sicherheits-, Qualitäts- und Dokumentationsregeln wirken zusätzlich in allen Hardwarekompetenzen `b1–b5`.

## Kurzcheck

1. Welche Information muss vor dem Einschalten feststehen?
2. Woran erkennt eine zweite Person den tatsächlich geprüften Stand?
3. Welche Hardwareeigenschaft kann sich in der Firmware als scheinbar zufälliger Fehler zeigen?
