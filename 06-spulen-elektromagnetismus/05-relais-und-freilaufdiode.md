# 06.5 – Relais und Freilaufdiode

[← Zurück](04-energie-in-der-spule.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-transformator-und-drosseln.md)

## Lernziele

Nach dieser Lektion kannst du:

- eine Relaisspule mit Transistor und Freilaufpfad beschalten
- Diodenpolarität erklären
- Kontakt- und Spulendaten getrennt prüfen

## Einleitung

Ein GPIO kann eine Relaisspule weder strommässig noch hinsichtlich Abschaltspannung direkt treiben. Ein Schalter übernimmt den Spulenstrom, die Freilaufdiode schützt ihn. Die Kontakte bilden einen galvanisch getrennten zweiten Stromkreis mit eigenen Grenzen.


<!-- context-expansion-2026 -->
Spulen und Transformatoren speichern oder übertragen Energie über Magnetfelder. Weil sich der Spulenstrom nicht sprunghaft ändern kann, entstehen beim Ein- und Ausschalten charakteristische Spannungen. Kernmaterial, Sättigung und Wicklungswiderstand machen aus dem idealen Symbol ein reales Bauteil.

Beim Thema **Relais und Freilaufdiode** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Das ideale Induktivitätsgesetz beschreibt die Spannung bei einer Stromänderung. Reale Spulen ergänzen Wicklungswiderstand, Kernverluste, parasitäre Kapazität und Sättigung. Der Strompfad muss sowohl während der Energieaufnahme als auch während der Energieabgabe geschlossen sein.

### Treiber und Freilauf

![Low-Side-Relaistreiber mit NPN-Transistor und Freilaufdiode](../bilder/06-spulen-elektromagnetismus/06-05-relais-freilauf.png)

Im eingeschalteten Zustand ist die Diode sperrend. Beim Abschalten kehrt die Spulenspannung um und die Diode wird leitend; der Strom zirkuliert durch Spule und Diode. Die Kathode liegt im Normalbetrieb an Plus, die Anode am geschalteten Spulenende.

### Auswahl

Der Schalter muss stationären Strom, Anlaufbedingungen, Verlustleistung und zulässige Spannung beherrschen. Die Diode benötigt ausreichenden Pulsstrom und Sperrspannung. Spulennennspannung, Anzugs- und Abfallspannung sowie Kontaktbelastung kommen aus dem Relaisdatenblatt.

### Kontakte

Kontaktstrom ist nicht Spulenstrom. Gleich- und Wechselstrom, ohmsche und induktive Last besitzen unterschiedliche Schaltgrenzen. Kontaktprellen erzeugt mehrere Übergänge und muss elektrisch oder in Firmware behandelt werden.

### Abschaltgeschwindigkeit und Schutzwirkung

Eine einfache Siliziumdiode klemmt die umgekehrte Spulenspannung auf einen kleinen Wert. Das schützt den Transistor sehr gut, lässt den Spulenstrom aber vergleichsweise langsam abklingen. Dadurch fällt der Anker verzögert ab. Wo eine kurze Abfallzeit wichtig ist, kann eine höhere, kontrollierte Klemmspannung mit Z-Diode oder TVS sinnvoll sein. Sie beschleunigt den Stromabbau, beansprucht den Schalter jedoch stärker. Die zulässige Klemmspannung muss deshalb deutlich unter seiner maximalen Drain-Source- beziehungsweise Kollektor-Emitter-Spannung bleiben.

Die im Magnetfeld gespeicherte Energie `EL = 1/2·L·I²` verschwindet beim Abschalten nicht. Sie wird im Wicklungswiderstand, in der Diode und gegebenenfalls in der Klemme in Wärme umgesetzt. Ein Oszilloskopvergleich muss daher nicht nur die Spannungsspitze, sondern auch die Abklingzeit des Stroms beurteilen. Ein langer Tastkopf-Masseleiter kann zusätzliche Schwingungen vortäuschen; für die Messung wird eine kurze Massefeder verwendet.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Ansteuerung von Ventilen, Schützen und Relais
- Freilauf an Motorwicklungen
- Schutz von BJT-, MOSFET- und MCU-Ausgängen

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Der Treiber ist wie ein kräftiger Helfer, den ein leichter Taster anweist. Die Freilaufdiode ist eine sichere Auslaufbahn für die bewegte Energie, nachdem der Helfer den direkten Weg sperrt.

## Berechnungsbeispiel

Eine 12-V-Spule hat 360 Ω. Stationär fliessen etwa 33,3 mA, die Wicklungsleistung beträgt 0,40 W. GPIO-Stromgrenzen werden damit klar überschritten; ein passender Transistor ist erforderlich.

## Praxisbezug

Miss Spulenspannung und Shuntspannung zuerst mit Diode. Eine Vergleichsmessung ohne einfache Diode darf nur mit definierter alternativer Klemme und innerhalb der Tastkopf- und Schaltergrenzen erfolgen.

## 🔗 Hardware ↔ Firmware

Firmware setzt den Treiberpin und kann Kontaktprellen zeitlich filtern. Sie muss einen sicheren Reset-Zustand und eine maximale Einschaltzeit gewährleisten. Messbar bleiben Pin, Basis- beziehungsweise Gatesignal, Spulenstrom und Kontaktzustand.

## Merksatz

> Die Freilaufdiode ist im Betrieb gesperrt und übernimmt beim Abschalten den Spulenstrom.

## Häufige Fehler und Missverständnisse

- Diode verpolen
- Kontakt- und Spulendaten vermischen
- Relais direkt am GPIO betreiben
- langsameren Relaisabfall durch die Diode übersehen

## Zusammenfassung

Relais benötigen Treiber, Schutzpfad und getrennte Prüfung von Spule und Kontakt. Die Freilaufdiode begrenzt Spannung zuverlässig, verlängert aber den Stromabbau.

## Übungsfragen

1. Wie muss die Freilaufdiode gepolt sein?
2. Welche vier Schalterdaten sind zu prüfen?
3. Warum prellt ein Kontakt?
4. Welcher Pinzustand ist während MCU-Reset sicher?

Weitere Aufgaben: [Übungen zu Modul 06](../uebungen/modul-06.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK01–06`, `b4-LK01–10`, `c1–c2`
- Nachweise: Relaistreiber, Schutzdimensionierung und Oszilloskopvergleich; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
