# 05.3 – RC-Zeitkonstante

[← Zurück](02-laden-entladen-und-gespeicherte-energie.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-kondensatoren-an-gleich-und-wechselspannung.md)

## Lernziele

Nach dieser Lektion kannst du:

- die Zeitkonstante eines RC-Glieds erklären
- Lade- und Entladewerte berechnen
- Messpunkte auf einer Exponentialkurve deuten

## Warum ist das wichtig?

Widerstand und Kondensator bilden gemeinsam einen zeitlichen Ablauf. Der Widerstand begrenzt den Ladestrom; dadurch nähert sich die Spannung nicht sofort, sondern exponentiell ihrem Endwert. Dieses Verhalten steckt in Reset-Schaltungen, Tastenentprellung, Filtern und Verzögerungen.

Die Zeitkonstante ist keine Zeit bis «voll». Sie ist eine Masszahl für die Geschwindigkeit des Vorgangs und erlaubt einfache, sehr nützliche Vorhersagen.

## Theorie

### Bedeutung von Tau

Für ein RC-Glied gilt `τ = R·C`. Tau wird in Sekunden angegeben. Nach einer Zeitkonstante hat eine Ladekurve etwa 63,2 % der gesamten Änderung erreicht; beim Entladen sind noch etwa 36,8 % vorhanden.

![RC-Lade- und Entladekurve mit markierten Zeitkonstanten](../bilder/05-kondensatoren/05-03-zeitkonstante.png)

Für Laden von 0 V auf eine Sprungspannung U0 gilt `uC(t) = U0·(1−e^(−t/τ))`. Beim Entladen von U0 gilt `uC(t) = U0·e^(−t/τ)`.

| Zeichen | Bedeutung | Einheit |
|---|---|---|
| `τ` | Zeitkonstante | s |
| `t` | Zeit seit dem Umschalten | s |
| `e` | Eulersche Zahl, Basis der Exponentialfunktion | – |

Nach etwa 5τ ist die Differenz zum Endwert kleiner als 1 %. In einer Genauigkeitsanforderung muss jedoch der konkrete Restfehler genannt werden.

### Anfang und Ende

Direkt nach dem Spannungssprung verhält sich ein ungeladener Kondensator näherungsweise wie ein Kurzschluss; im Gleichstrom-Endzustand wie eine Unterbrechung. Diese Aussagen gelten für den betrachteten Vorgang, nicht als universelle Bauteilersatzbilder.

## Anschauliches Beispiel

Ein Behälter wird durch einen engen Schlauch gefüllt. Anfangs ist der Druckunterschied gross und der Zufluss stark; mit steigendem Füllstand wird der Unterschied kleiner und der Zufluss langsamer. Widerstand entspricht der Engstelle, Kapazität der speicherbaren Menge.

## Berechnungsbeispiel

Mit `R = 10 kΩ` und `C = 100 nF` ist `τ = 1,0 ms`. Bei einem 5-V-Sprung sind nach 1 ms etwa 3,16 V, nach 3 ms etwa 4,75 V und nach 5 ms etwa 4,97 V zu erwarten. Bauteiltoleranzen verschieben diese Zeiten.

## Praxisbezug

Der Praxisversuch misst uC und optional uR gleichzeitig. Aus dem 63,2-%-Punkt wird τ bestimmt und mit R·C verglichen. Tastkopfimpedanz, Generatorausgang und Kondensatortoleranz gehören in die Auswertung.

## 🔗 Hardware ↔ Firmware

Ein Timer kann die Zeit bis zum Erreichen einer digitalen Schaltschwelle messen. Weil diese Schwelle, Versorgung und RC-Werte streuen, ist ein RC-Glied kein präziser Firmwaretakt. Es eignet sich aber zur Filterung oder als grobe Verzögerung, wenn Grenzfälle geprüft sind.

## Merksatz

> Nach einer Zeitkonstante ist 63,2 % der Änderung erreicht – nicht 100 %.

## Häufige Fehler und Missverständnisse

- Tau als Ladezeit bis 100 % deuten
- Widerstand des Generators vergessen
- linearen statt exponentiellen Verlauf erwarten
- Schaltschwellen ohne Toleranz annehmen

## Zusammenfassung

Die Zeitkonstante R·C bestimmt die Geschwindigkeit eines RC-Vorgangs. Exponentialgleichungen liefern Zwischenwerte; 1τ- und 5τ-Regeln ermöglichen schnelle Plausibilitätsprüfungen.

## Übungsfragen

1. Was bedeutet der 63,2-%-Punkt?
2. Berechne τ für 47 kΩ und 10 µF.
3. Warum beeinflusst ein Oszilloskopeingang hochohmige RC-Glieder?
4. Weshalb ist RC kein genauer Taktgeber?

Weitere Aufgaben: [Übungen zu Modul 05](../uebungen/modul-05.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02–03`, `b1-LK06`, `b4-LK01–10`
- Nachweise: Zeitkonstantenrechnung und Oszilloskopmessung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
