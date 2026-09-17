# 12.3 – Nichtinvertierender Verstärker

[← Zurück](02-gegenkopplung-und-spannungsfolger.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-invertierender-verstaerker-und-summierer.md)

## Lernziele

Nach dieser Lektion kannst du:

- nichtinvertierende Verstärkung dimensionieren
- Eingangs- und Ausgangsbereich prüfen
- Bandbreite und Widerstandstoleranz einbeziehen

## Warum ist das wichtig?

Sensorsignale sind oft zu klein für den ADC-Bereich. Der nichtinvertierende Verstärker erhöht sie mit hoher Eingangsimpedanz. Eine richtige Widerstandsformel genügt jedoch nicht, wenn Offset, Common Mode oder Ausgangshub verletzt werden.

## Theorie

### Rückkopplungsteiler

R1 liegt vom invertierenden Eingang nach Bezugspotential, R2 vom Ausgang zum invertierenden Eingang. Bei stabiler Gegenkopplung gilt `Av = 1 + R2/R1`. Av ist die geschlossene Spannungsverstärkung.

![Nichtinvertierender OPV mit Rückkopplungsteiler](../bilder/12-operationsverstaerker/12-03-nichtinvertierend.png)

Die Eingangsspannung liegt am nichtinvertierenden Eingang und erscheint ideal phasengleich verstärkt. Für Single-Supply-Signale kann R1 statt an GND an einer Referenz Vref liegen; dann wird um diesen Arbeitspunkt verstärkt.

### Reale Dimensionierung

Widerstände bestimmen zusätzlich Rauschen, Biasstromfehler und Ausgangslast. Das Verstärkungs-Bandbreiten-Produkt begrenzt näherungsweise `fBW ≈ GBW/Av`. Slew Rate kann grosse schnelle Signale früher begrenzen. Widerstandstoleranzen erzeugen Verstärkungsfehler.

## Anschauliches Beispiel

Der Rückkopplungsteiler ist wie ein Massstab: Der OPV bewegt den Ausgang so weit, bis der zurückgemeldete Teil dem Eingang entspricht. Ein kleiner zurückgemeldeter Anteil verlangt einen grösseren Ausgang.

## Berechnungsbeispiel

Ein Sensor liefert 0,2 bis 0,8 V und soll ideal um Faktor 4 verstärkt werden. `R2/R1 = 3`; mit R1 = 10 kΩ und R2 = 30 kΩ entstehen 0,8 bis 3,2 V. Versorgung, Ausgangshub und ADC-Reserve werden danach geprüft.

## Praxisbezug

Miss Verstärkung bei DC und mehreren Frequenzen. Erhöhe die Amplitude nur bis vor Clipping; dokumentiere Versorgung, Last und Ausgangshub.

## 🔗 Hardware ↔ Firmware

Die Firmware verwendet Verstärkung und Referenz in der Umrechnung. Widerstandstoleranz, Offset und ADC-Referenz werden kalibriert, aber Clipping bleibt ein Hardwarefehler.

## Merksatz

> Die Widerstände legen die ideale Verstärkung fest; Versorgung, Common Mode, Bandbreite und Ausgangshub entscheiden, ob sie erreichbar ist.

## Häufige Fehler und Missverständnisse

- Formel ohne Bezugspunkt anwenden
- Ausgangsreserve vergessen
- GBW mit maximaler Signalfrequenz gleichsetzen
- Kalibrierung als Ersatz für Headroom nutzen

## Zusammenfassung

Der nichtinvertierende Verstärker besitzt hohe Eingangsimpedanz und phasengleiche Verstärkung. Reale Grenzen werden nach der Widerstandsrechnung geprüft.

## Übungsfragen

1. Wie lautet Av?
2. Dimensioniere Av = 6 mit R1 = 10 kΩ. Wie schätzt du fBW?
3. Welche Fehler kann Firmware kalibrieren?

Weitere Aufgaben: [Übungen zu Modul 12](../uebungen/modul-12.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK01–06`, `b4-LK01–10`, `c1–c2`
- Nachweise: dimensionierte und vermessene Sensorverstärkung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
