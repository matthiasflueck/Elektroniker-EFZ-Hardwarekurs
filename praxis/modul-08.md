# Praxis 08 – Tiefpass dimensionieren und Frequenzgang vermessen

[← Modul 08](../08-filter-resonanz/README.md) · [Praxisübersicht](README.md) · [Kursübersicht](../README.md)

## Lernziel

Du dimensionierst einen RC-Tiefpass, misst Betrag und Phase logarithmisch und erstellst ein Bode-Diagramm mit Soll-Ist-Vergleich.

## Benötigtes Material und Messgeräte

R1 = 1,6 kΩ, C1 = 100 nF mit bekannten Toleranzen, Steckbrett, Funktionsgenerator, Zweikanal-Oszilloskop und 10:1-Tastköpfe.

## Schaltung / Messaufbau

R1 liegt in Serie, C1 nach GND; Uout liegt über C1. Kanal 1 misst Uin, Kanal 2 Uout direkt am Kondensator.

![RC-Tiefpass mit Strompfaden bei tiefer und hoher Frequenz](../bilder/08-filter-resonanz/08-01-rc-tiefpass.png)

## Sicherheitshinweise

Nur Kleinspannung. Gemeinsame Gerätemasse und Generatorabschluss prüfen. Frequenz oder Verdrahtung nur kontrolliert ändern.

## Vorbereitung und Berechnung

Berechne fG, τ, Sollbetrag und Phase für 0,1fG, fG und 10fG. Bestimme Worst-Case-fG aus Bauteiltoleranzen.

## Aufbau und Durchführung

Spannungsfrei aufbauen. Generator auf 1 Vpp Sinus ohne gefährlichen Offset einstellen. Messe mindestens bei 0,1; 0,2; 0,5; 1; 2; 5 und 10fG sowie dichter um −3 dB. Uin an jedem Punkt kontrollieren. Bestimme Δt und rechne in φ um.

## Messwerte

| f | Uin | Uout | Verhältnis | dB | Δt | φ |
|---:|---:|---:|---:|---:|---:|---:|
| | | | | | | |

## Auswertung und Fragen

Zeichne Betrag und Phase über logarithmischer f-Achse. Bestimme fG und Steigung oberhalb fG. Welche Rolle spielen Generatorwiderstand, Tastkopf, Last und Bauteiltoleranz?

## Was solltest du beobachtet haben?

Im Durchlassbereich liegt Uout nahe Uin; an fG ungefähr bei 0,707 beziehungsweise −3 dB; weit darüber fällt die Kurve gegen −20 dB pro Dekade und die Phase gegen −90°.

## Bezug zur Theorie

Lektionen 08.1, 08.3 und 08.4; Vergleich zu Hochpass, RL und Resonanz.

## 🔗 Hardware ↔ Firmware

Übertrage den Filter auf einen ADC-Eingang. Prüfe Quellimpedanz, Abtastrate und Aliasing. Digitale Filterung ersetzt keinen analogen Schutz vor oberhalb Nyquist liegenden Anteilen.

## Bezug Bildungsplan 2026

`a3`, `b1-LK02–03`, `b1-LK06`, `b1-LK09`, `b4-LK01–10`, `b5`, `c1–c2`; Details: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md).
