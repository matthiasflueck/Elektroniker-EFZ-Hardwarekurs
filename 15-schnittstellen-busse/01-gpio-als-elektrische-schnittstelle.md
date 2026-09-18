# 15.1 – GPIO als elektrische Schnittstelle

[← Zurück](../14-digitaltechnik/07-open-collector-open-drain-pull-widerstaende-und-entprellung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-uart-und-rs-232.md)

## Lernziele

Nach dieser Lektion kannst du:

- GPIO-Modi elektrisch erklären
- Pin-, Port- und Versorgungslimits unterscheiden
- Reset- und Fehlersituationen messtechnisch prüfen

## Einleitung

Ein GPIO ist die Grenze zwischen Register und realer Schaltung. Hinter einem geschriebenen Bit stehen Ausgangstransistoren, Schutzdioden, Pull-Widerstände und Stromgrenzen. Viele scheinbare Firmwarefehler entstehen an dieser elektrischen Schnittstelle.


<!-- context-expansion-2026 -->
Eine digitale Schnittstelle besteht aus Protokoll und physikalischer Übertragung. Register erzeugen Bits, Pad-Zellen und Transceiver erzeugen reale Pegel, und Leitung sowie Rückweg formen die Flanken. Diagnose muss daher Firmwarezustand und Messsignal gleichzeitig berücksichtigen.

Beim Thema **GPIO als elektrische Schnittstelle** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Bei Bussystemen werden Datenrichtung, Treiberart, Bezugspotential und Abschluss vor der Protokolldekodierung geklärt. Ein Logic Analyzer zeigt logische Zustände; das Oszilloskop zeigt, ob Pegel und Flanken die Empfängergrenzen tatsächlich einhalten.

Am realen MCU-Gehäuse ist ein GPIO zunächst ein nummerierter Pin mit Schutzstruktur und Pad-Zelle. Erst die interne Multiplexer- und Registerkonfiguration verbindet ihn mit Eingangsbuffer, Ausgangstreiber oder Peripherie. Pinname, Gehäusepin, Portbit und Leiterplattennetz müssen deshalb eindeutig auseinandergehalten und dokumentiert werden.

### Aufbau eines Pins

Der Pad-Zellenblock enthält Eingangsbuffer, Push-Pull- oder Open-Drain-Treiber, optionale Pulls, Multiplexer zur Peripherie und ESD-Schutzstrukturen. Analogmodus trennt digitale Teile häufig ab, beseitigt aber keine absoluten Spannungsgrenzen.

![GPIO-Pad mit Registern, Treibern, Pulls, Schutz und realem Pin](../bilder/15-schnittstellen-busse/15-01-gpio-pad.png)

Push Pull treibt High und Low aktiv. Open Drain treibt nur Low. Eingang und Alternate Function verbinden den Pin mit anderen internen Signalwegen. Die eingestellte Slew Rate begrenzt Flankengeschwindigkeit und reduziert bei Bedarf Störungen.

### Ströme und Startzustand

Datenblätter nennen Strom pro Pin, Summen pro Port oder Versorgungspin sowie garantierte VOH/VOL bei bestimmten Lasten. Absolute Maximalwerte sind keine Betriebswerte. Während Reset sind Pins meist hochohmig oder mit speziellen Bootfunktionen belegt. Externe Pulls sorgen für sichere Lastzustände.

Ein Signal ausserhalb der Versorgung kann über Schutzdioden Strom einspeisen. Serienwiderstand und Power-Sequencing werden deshalb schon im Schema betrachtet.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Direkte Ansteuerung und Abfrage externer Hardware
- Reset- und Bootzustände von Lasten
- Übergang von Register zu realem Pin

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein GPIO ist eine Tür mit mehreren Betriebsarten: Sie kann aktiv öffnen und schliessen, nur zuziehen oder lediglich beobachten. Das Register wählt den Mechanismus; die Tür bleibt aber mechanisch begrenzt.

## Berechnungsbeispiel

Ein Ausgang garantiert bei 8 mA mindestens 2,7 V. Eine Last von 220 Ω nach GND würde bei 3,3 V etwa 15 mA verlangen und ist damit nicht durch diese Angabe freigegeben. Ein Treibertransistor oder grösserer Widerstand ist nötig.

## Praxisbezug

Miss High und Low unbelastet sowie mit freigegebener Last. Beobachte Reset, Bootloader und Debug-Halt. Vergleiche Push Pull, Open Drain und zwei Slew-Rate-Einstellungen am Oszilloskop.

## 🔗 Hardware ↔ Firmware

Konfigurationsregister wählen Modus, Pull, Geschwindigkeit und Alternate Function. Der elektrische Nachweis erfolgt am Pin: Pegel, Flanke, Strom und Resetverhalten müssen zur Konfiguration passen. Vertiefung bietet der STM32-Programmierkurs.

## Merksatz

> Ein GPIO-Bit steuert eine reale Pad-Zelle; Pinspannung, Laststrom und Startzustand bleiben Hardwaregrössen.

## Häufige Fehler und Missverständnisse

- Pin und Registerzustand gleichsetzen
- Strom pro Pin ohne Portsumme betrachten
- Resetzustand nicht absichern
- 5-V-Toleranz auf jeden Modus übertragen

## Zusammenfassung

GPIO verbindet Firmware und Elektrik. Modus, Pegel, Last, Schutz und Reset müssen zusammen geprüft werden.

## Übungsfragen

1. Was unterscheidet Push Pull und Open Drain?
2. Warum zählt die Portstromsumme?
3. Welche Funktion hat die Slew-Rate-Einstellung?
4. Was misst du während Reset?

Weitere Aufgaben: [Übungen zu Modul 15](../uebungen/modul-15.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b1-LK01–06`, `b4`, `b5`, `c1–c2`, `d9`
- Nachweise: Pinmessung über Betriebs- und Resetmodi; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
