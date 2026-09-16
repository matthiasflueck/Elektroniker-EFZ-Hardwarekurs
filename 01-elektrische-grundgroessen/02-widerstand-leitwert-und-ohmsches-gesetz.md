# 01.2 – Widerstand, Leitwert und Ohmsches Gesetz

[← Zurück](01-ladung-strom-spannung-und-bezugspotential.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-leistung-energie-und-wirkungsgrad.md)

## Lernziele

Nach dieser Lektion kannst du die behandelten Grössen mit korrektem Bezug und Vorzeichen beschreiben, typische Schaltungen berechnen, reale Abweichungen einordnen und eine sichere Messung planen.

## 1. Verhältnis von Spannung und Strom

Für ein ohmsches Bauteil bei konstanter Temperatur gilt:

$$U = R \cdot I, \qquad I = \frac{U}{R}, \qquad R = \frac{U}{I}$$

Der Widerstand `R` wird in Ohm (`Ω`) angegeben. Der Leitwert `G = 1/R` hat die Einheit Siemens (`S`). Ein `1-kΩ`-Widerstand hat `G = 1 mS`.

Die Gleichung ist keine allgemeine Definition jedes Bauteils. Bei LED, Diode, Glühlampe oder Transistor ist die Strom-Spannungs-Beziehung nicht linear oder temperaturabhängig.

## 2. Einheiten sicher umrechnen

Häufige Präfixe:

| Präfix | Faktor | Beispiel |
|---|---:|---:|
| m | `10⁻³` | `3 mA = 0.003 A` |
| µ | `10⁻⁶` | `220 µA` |
| k | `10³` | `4.7 kΩ` |
| M | `10⁶` | `10 MΩ` |

Praktische Regel: `V / kΩ = mA`. So ergibt `5 V / 1 kΩ = 5 mA` direkt.

## 3. Kennlinie und Widerstand

Der statische Widerstand an einem Arbeitspunkt ist `R = U/I`. Der differentielle Widerstand beschreibt die lokale Steigung `r = dU/dI`. Bei einem linearen Widerstand sind beide konstant; bei Halbleitern nicht.

## 4. Reale Widerstände

Ein Widerstand besitzt Toleranz, Temperaturkoeffizient, maximale Spannung und Verlustleistung. `1 kΩ ± 5 %` bedeutet bei Referenzbedingungen `950…1050 Ω`. Die Toleranz ist kein Messfehler, sondern zulässige Bauteilstreuung.

## Hardware ↔ Firmware

Pull-up- und Pull-down-Widerstände definieren Eingänge, wenn kein aktiver Treiber wirkt. Zu grosse Werte werden empfindlich gegen Leckstrom und Störungen; zu kleine Werte erhöhen Strom und belasten den Ausgang. Der [GPIO-Abschnitt zu Pull-Widerständen](https://github.com/matthiasflueck/STM32-Programmierkurs/blob/main/04-gpio/02-push-pull-open-drain-pullup-pulldown.md) zeigt die Firmwarekonfiguration.

## Beispiel

Ein Eingang hat `100 kΩ` Pull-up an `3.3 V` und maximal `5 µA` Leckstrom gegen Masse. Im ungünstigen Fall fällt `U = 5 µA · 100 kΩ = 0.5 V` ab; der High-Pegel ist nur noch `2.8 V`. Ob das genügt, entscheidet der garantierte Eingangsschwellwert im Datenblatt.


## Bildungsplan 2026

Primär: `b1` (dimensionieren und Schema verstehen), `b4` (messen und Fehler eingrenzen), `b5` (Anforderungen überprüfen). Die begründete Machbarkeit unterstützt `a3`.

## Kurzcheck

1. Welche Bezugsrichtung oder welcher Bezugspunkt wurde verwendet?
2. Welche Bauteiltoleranz oder Messbeeinflussung ist im realen Aufbau relevant?
3. Ist das Ergebnis hinsichtlich Einheit und Grössenordnung plausibel?
