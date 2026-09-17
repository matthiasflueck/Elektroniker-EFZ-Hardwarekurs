# 13.7 – Analogschalter und vollständige Messkette

[← Zurück](06-pegelanpassung-und-schutz.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](../14-digitaltechnik/README.md)

## Lernziele

Nach dieser Lektion kannst du:

- Analogschalter und Multiplexer elektrisch beurteilen
- Einschwingzeit nach einem Kanalwechsel bestimmen
- eine Messkette mit Diagnosezuständen verifizieren

## Warum ist das wichtig?

Mehrere Sensoren teilen sich häufig Verstärker oder ADC. Ein Analogmultiplexer spart Hardware, verbindet aber nacheinander sehr unterschiedliche Quellen mit einem gemeinsamen Knoten. Leckstrom, Einschaltwiderstand und Ladungsinjektion werden damit Teil der Messung.

## Theorie

### Der Schalter ist nicht ideal

Ein eingeschalteter Kanal besitzt RON, einen signalabhängigen Widerstand. Ausgeschaltete Kanäle besitzen Leckströme und Kapazitäten. Beim Umschalten wird Ladung in den Signalknoten eingespritzt. Break-before-make verhindert meist, dass zwei Quellen kurzzeitig verbunden werden.

![Analogmultiplexer mit Quellwiderständen, Ausgangsknoten und ADC-Abtastung](../bilder/13-analoge-signalaufbereitung/13-07-analogmultiplexer.png)

RON bildet mit Quell- und Lastwiderstand einen Fehler. Nach jedem Kanalwechsel müssen MUX-Ausgang, Filter, OPV und ADC-Sample-and-Hold einschwingen. Hochohmige Quellen reagieren langsamer und stärker auf Leckstrom.

### Vollständige Verifikation

Für jeden Kanal werden erlaubter Signalbereich, Common Mode, Fehlerzustand, Einschwingzeit und Kalibrierung definiert. Offene Sensoren können über einen schwachen Diagnose-Pull erkannt werden. Ein Testkanal mit GND oder Referenz trennt Fehler im Sensorpfad von ADC- und Firmwarefehlern.

## Anschauliches Beispiel

Ein einziges Thermometer wird nacheinander in verschiedene Flüssigkeiten getaucht. Vor jedem Ablesen muss es den alten Wert vergessen und die neue Temperatur annehmen.

## Berechnungsbeispiel

Rsource = 47 kΩ, RON = 150 Ω und der wirksame Knoten besitzt 10 nF. Näherungsweise ist `τ = (Rsource + RON)·C ≈ 471,5 µs`. Für rund 0,7 % Restfehler sind etwa 5τ beziehungsweise 2,36 ms zu warten; höhere Genauigkeit benötigt mehr Zeit.

## Praxisbezug

Schalte abwechselnd zwischen zwei deutlich verschiedenen, sicheren Spannungen. Miss den MUX-Ausgang und den ADC-Knoten. Bestimme die nötige Wartezeit und vergleiche ersten sowie späteren ADC-Sample.

## 🔗 Hardware ↔ Firmware

Firmware setzt Adressleitungen, wartet die berechnete Einschwingzeit und verwirft bei Bedarf die erste Wandlung. Testkanäle, Grenzwerte und Rohcodeprotokollierung machen die Kette diagnostizierbar.

## Merksatz

> Nach jedem Kanalwechsel muss die gesamte analoge Kette neu einschwingen, nicht nur der digitale Multiplexerzustand.

## Häufige Fehler und Missverständnisse

- RON als konstant und null behandeln
- sofort nach dem Umschalten messen
- nicht versorgte Eingangssignale zulassen
- Testkanäle und offene Sensoren nicht vorsehen

## Zusammenfassung

Analogschalter sparen Hardware, fügen aber Widerstand, Leckstrom, Ladung und Umschaltzeit hinzu. Eine vollständige Messkette benötigt elektrische und firmwareseitige Diagnose.

## Übungsfragen

1. Welche vier Nichtidealitäten besitzt ein Analogschalter?
2. Warum beeinflusst Rsource die Wartezeit?
3. Was prüft ein interner Referenzkanal?
4. Wann wird die erste ADC-Wandlung verworfen?

Weitere Aufgaben: [Übungen zu Modul 13](../uebungen/modul-13.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a1–a3`, `b1-LK01–06`, `b4`, `b5`, `c1–c2`
- Nachweise: verifizierte Mehrkanal-Messkette mit Einschwing- und Diagnosenachweis; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
