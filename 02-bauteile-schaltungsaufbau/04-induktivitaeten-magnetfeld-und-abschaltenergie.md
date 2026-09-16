# 02.4 – Induktivitäten, Magnetfeld und Abschaltenergie

[← Zurück](03-kondensatoren-ladung-und-zeitverhalten.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-leds-schalter-und-grundlegende-schutzbeschaltung.md)

## Lernziele

Nach dieser Lektion kannst du Funktion, Grenzwerte und reale Nichtidealitäten der behandelten Bauteile erklären, sie im Schema und Aufbau sicher zuordnen und ihr Verhalten mit geeigneten Messmitteln prüfen.

## 1. Grundbeziehung

Für die ideale Induktivität gilt:

$$u_L = L\frac{\mathrm d i}{\mathrm dt}.$$

Der Strom kann ideal nicht sprunghaft ändern. Wird ein Strompfad abrupt geöffnet, erzeugt die Induktivität die nötige Spannung, um den Strom weiterzutreiben — möglicherweise so hoch, dass Schalter oder Isolation beschädigt werden.

Gespeicherte Energie:

$$E_L=\frac{1}{2}LI^2.$$

## 2. Reale Induktivitäten

Wichtige Kennwerte sind Induktivität, Toleranz, Gleichstromwiderstand `DCR`, Sättigungsstrom, RMS-Strom, Kernverluste und Eigenresonanz. Oberhalb der Eigenresonanz verhält sich das Bauteil nicht mehr induktiv.

## 3. Sättigung

Bei Kern-Sättigung sinkt die effektive Induktivität. Der Strom steigt dann schneller; in einem Schaltregler kann dies Transistor und Diode überlasten. Sättigungsstrom und thermischer Stromgrenzwert sind verschiedene Angaben.

## 4. Freilaufpfad

Eine Diode parallel zu einer DC-Spule stellt beim Abschalten einen Strompfad bereit. Die Stromänderung wird langsamer und die Spannung begrenzt. Das schützt den Schalter, verlängert aber die Abfallzeit eines Relais. TVS oder Zener können schnelleres Abschalten bei höherer, kontrollierter Spannung erlauben.

## Hardware ↔ Firmware

Firmware steuert PWM und Ausschaltzeitpunkt, aber die magnetische Energie verschwindet nicht durch eine Codezeile. Maximalstrom, PWM-Frequenz, Totzeit und Fehlerabschaltung müssen zum Freilauf- und Schutzpfad passen. Ein Debug-Halt bei eingeschalteter Spule ist explizit zu berücksichtigen.

## Beispiel

`L = 100 mH`, `I = 0.2 A` speichern `2 mJ`. Wird der Strom ideal in `1 µs` auf null gezwungen, fordert `u = 0.1 H · 0.2 A / 1 µs = 20 kV`. Reale Parasiten begrenzen den Wert, aber das Beispiel zeigt die Notwendigkeit eines definierten Pfads.


## Bildungsplan 2026

Primär: `b1`, `b3`, `b4`, `b5`; je nach Aufbau zusätzlich Anforderungen und Machbarkeit aus `a1–a3`.

## Kurzcheck

1. Welche Energie oder Zustandsgrösse kann dieses Bauteil speichern oder beeinflussen?
2. Welcher Datenblattwert begrenzt den sicheren Betrieb?
3. Wie unterscheidest du Bauteilfehler, Aufbaufehler und falsche Messung?
