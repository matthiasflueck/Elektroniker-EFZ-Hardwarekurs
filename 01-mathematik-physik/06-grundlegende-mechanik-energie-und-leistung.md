# 01.6 – Grundlegende Mechanik, Energie und Leistung

[← Zurück](05-diagramme-kennlinien-und-steigungen-lesen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-mathematische-plausibilitaetspruefung-in-der-elektronik.md)

## Lernziele

Nach dieser Lektion kannst du:

- Kraft, Arbeit, Energie und Leistung sprachlich unterscheiden
- Energieumwandlung in einem elektromechanischen System verfolgen
- Wirkungsgrad und Verlustleistung berechnen

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Vorherige Lektionen dieses Moduls.

## Warum ist das wichtig?

Elektronik wirkt auf die physische Welt: Ein Motor hebt eine Last, ein Relais bewegt einen Anker, ein Kühlkörper führt Wärme ab. Die gleichen Begriffe Energie und Leistung verbinden Mechanik, Elektrik und Thermik.

## Theorie

### Arbeit und Energie

Arbeit beschreibt übertragene Energie. Wird eine konstante Kraft F entlang des Weges s ausgeübt, gilt nach dieser Vorstellung `W = F·s`. Die Einheit Joule ist gleich Newtonmeter. Energie kann gespeichert oder umgewandelt werden.

### Leistung

Leistung sagt, wie schnell Energie umgesetzt wird: `P = W/t`. Ein Joule pro Sekunde ist ein Watt. Zwei Geräte können dieselbe Energie verbrauchen, aber unterschiedlich schnell.

### Wirkungsgrad und Wärme

Der Wirkungsgrad ist `η = P_nutz/P_zu`. Er liegt bei passiven Umwandlungen zwischen 0 und 1. Die Differenz wird überwiegend zu Wärme. Diese Verlustleistung bestimmt Temperaturanstieg und Kühlbedarf.

## Anschauliches Beispiel

Ein Motor hebt eine Masse. Die elektrische Quelle liefert Energie, der Treiber verliert Wärme, der Motor wandelt einen Teil in Bewegung um und Reibung erzeugt weitere Wärme. Der gesamte Energiepfad muss bilanziert werden.

## Berechnungsbeispiel

Ein System nimmt 12 W auf und liefert 9 W mechanisch. `η = 9/12 = 0,75 = 75 %`. Die Verlustleistung beträgt `12 W − 9 W = 3 W`. Läuft es 10 min, werden `3 W × 600 s = 1800 J` als Verlustenergie umgesetzt.

## Praxisbezug

Erstelle für Lüfter, Relais oder Motor ein Energieflussdiagramm. Markiere Nutzleistung, Verluste und Messstellen. Schätze Werte und begründe Unsicherheiten.

## 🔗 Hardware ↔ Firmware

PWM verändert die mittlere Energiezufuhr zur Last. Firmware bestimmt Tastgrad und Regelung, die Hardware trägt Schalt- und Leitverluste. Ein softwareseitig kleiner Mittelwert schliesst hohe Spitzenströme nicht aus.

## Merksatz

> Energie ist eine Menge; Leistung beschreibt deren Umsetzung pro Zeit.

## Häufige Fehler und Missverständnisse

- Watt und Wattstunde verwechseln.
- Wirkungsgrad in Prozent direkt als Zahl 75 einsetzen statt 0,75.
- Verlustleistung ohne thermische Folgen betrachten.

## Zusammenfassung

Mechanische und elektrische Systeme folgen derselben Energiebilanz. Leistung, Wirkungsgrad und Verlustwärme machen die Umwandlung quantitativ.

## Übungsfragen

1. Was unterscheidet Joule und Watt?
2. Wohin geht die Differenz zwischen Zu- und Nutzleistung?
3. Berechne die Verlustleistung bei 20 W Eingang und 80 % Wirkungsgrad.

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.
