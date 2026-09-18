# 16.7 – Entkopplung, Lastsprung und Messung

[← Zurück](06-sicherungen-verpol-und-ueberspannungsschutz.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](../17-messtechnik-grundlagen/README.md)

## Lernziele

Nach dieser Lektion kannst du:

- lokale Entkopplungsstrompfade erklären
- Lastsprung und Spannungsabweichung beurteilen
- Versorgungsrauschen reproduzierbar messen

## Einleitung

Ein Regler kann einen Lastsprung nicht ohne Verzögerung beantworten. Lokale Kondensatoren liefern den schnellen Strom, bis Regler und Zuleitung nachregeln. Entscheidend sind nicht nur Kapazitätswerte, sondern Schleifenfläche, ESR, ESL und Rückstrompfad.


<!-- context-expansion-2026 -->
Eine Stromversorgung ist eine dynamische Energiequelle für die gesamte Baugruppe. Eingang, Schutz, Regler, Leiterpfade, Kondensatoren und Lastprofil bilden ein System. Nennspannung allein genügt weder für die Dimensionierung noch für die Verifikation.

Beim Thema **Entkopplung, Lastsprung und Messung** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Versorgungen werden über Leistungs- und Strompfade analysiert. Für jeden Betriebszustand werden Eingang, Ausgang, Verlust, Temperatur und gespeicherte Energie bilanziert. Dynamische Vorgänge wie Einschalten und Lastsprung werden zusätzlich im Zeitbereich gemessen.

### Schneller lokaler Strom

Beim Lastsprung liefert der nahe Abblockkondensator zunächst Ladung. Ideal gilt `ΔU = ΔI·Δt/C`. ESR erzeugt einen sofortigen Sprung `ΔUESR = ΔI·ESR`; ESL erzeugt bei schnellen Flanken `u = ESL·di/dt`.

![Lokaler Entkopplungsstrompfad und Lastsprungantwort am Verbraucher](../bilder/16-stromversorgungen/16-07-entkopplung-lastsprung.png)

Kleine Keramikkondensatoren liegen direkt an Versorgung und GND des IC. Grössere Stützkondensatoren bedienen langsamere Anteile. Kapazitätswert unter DC-Bias, Temperatur und Alterung ist relevant. Eine Ground Plane reduziert Induktivität, wenn Hin- und Rückweg nahe beieinander liegen.

### Lastsprungmessung

Die Last wird zwischen zwei bekannten Strömen geschaltet. Gemessen werden Einbruch, Überschwingen, Einschwingzeit und mögliche Oszillation direkt am Verbraucher. Eine zweite Messung am Regler trennt Leitungsabfall vom Regelverhalten. Stromsonde oder Shunt bestätigt den tatsächlichen Sprung.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Lokale MCU- und FPGA-Entkopplung
- Abfangen von Funk- und Motorlastsprüngen
- Vermeidung von Brownout und Reset durch Versorgungseinbruch

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein kleiner Wassertank direkt an der Maschine liefert einen plötzlichen Bedarf sofort. Die weit entfernte Pumpe füllt ihn danach wieder – ein grosser Tank mit dünnem langem Rohr hilft bei schnellen Sprüngen wenig.

## Berechnungsbeispiel

Ein Lastsprung ΔI = 300 mA soll während 20 µs höchstens 100 mV kapazitiven Einbruch erzeugen. Ideal gilt `C ≥ 0,3 A·20 µs/0,1 V = 60 µF`. ESR, Toleranz und DC-Bias verlangen zusätzliche Reserve und parallele Keramikkondensatoren.

## Praxisbezug

Vermesse einen sicheren Regler mit elektronischer Last oder geschalteter Widerstandslast. Miss direkt am Lastanschluss mit Massefeder und gleichzeitig den Strom. Vergleiche unterschiedliche Kondensatorpositionen.

## 🔗 Hardware ↔ Firmware

Reale Lastsprünge entstehen durch CPU, Funk, Motor-PWM und Peripherie. Firmware kann Aktivierungen staffeln und Sleep-Modi nutzen. Brownout-Reset und Power-Good müssen dennoch einen sicheren Zustand herstellen.

## Merksatz

> Entkopplung ist ein kurzer lokaler Stromkreis; Kapazität ohne niedrige Induktivität und richtigen Messpunkt genügt nicht.

## Häufige Fehler und Missverständnisse

- nur nominelle Kapazität betrachten
- Kondensator weit vom Verbraucher platzieren
- Lastsprung ohne Strommessung beurteilen
- Reglerausgang und Verbraucherknoten gleichsetzen

## Zusammenfassung

Kondensatoren überbrücken die Reaktionszeit der Versorgung. ESR, ESL, Platzierung, Rückweg und reale Lastsprünge bestimmen die Spannungsqualität.

## Übungsfragen

1. Welche drei Effekte erzeugen ΔU?
2. Berechne C für 0,5 A, 10 µs und 50 mV.
3. Warum misst man direkt am Verbraucher?
4. Wie kann Firmware Lastsprünge reduzieren?

Weitere Aufgaben: [Übungen zu Modul 16](../uebungen/modul-16.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK01–07`, `b2-LK03–04`, `b4`, `b5`, `c1–c2`
- Nachweise: vollständige Lastsprung- und Entkopplungsmessung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
