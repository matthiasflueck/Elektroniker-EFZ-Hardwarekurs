# 07.2 – Sinus, Rechteck und Dreieck

[← Zurück](01-periodische-vorgaenge-frequenz-und-periodendauer.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-amplitude-spitze-und-peak-to-peak.md)

## Lernziele

Nach dieser Lektion kannst du:

- Sinus Rechteck und Dreieck anhand ihrer Entstehung unterscheiden
- Flanken und Oberwellen qualitativ erklären
- eine Signalform passend zur Aufgabe auswählen

## Einleitung

Gleiches f und gleicher Spitzenwert bedeuten nicht gleiche Wirkung. Signalform bestimmt Effektivwert, Oberwellen, Flankenstrom und Filterverhalten. Rechtecksignale fordern eine Schaltung oft weit über ihre Grundfrequenz hinaus.


<!-- context-expansion-2026 -->
Elektronische Signale verändern sich mit der Zeit. Frequenz, Amplitude, Effektivwert und Phase beschreiben unterschiedliche Eigenschaften desselben Verlaufs. Für Messung und Schaltungsentwurf muss deshalb stets geklärt werden, welche Signalgrösse gemeint ist und unter welchen Bedingungen sie gilt.

Beim Thema **Sinus, Rechteck und Dreieck** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Ein Signal wird zuerst im Zeitdiagramm mit Bezugslinie und Einheiten beschrieben. Daraus lassen sich Periodendauer, Frequenz, Momentanwert und Phasenbezug ableiten. Messgeräte können je nach Kopplung, Bandbreite und Auswerteverfahren unterschiedliche Kennwerte desselben Signals anzeigen.

### Drei Grundformen

![Sinus Rechteck und Dreieck mit gleicher Periodendauer](../bilder/07-periodische-signale/07-02-signalformen.png)

Ein Sinus besitzt ideal nur eine Frequenz. Ein Rechteck wechselt zwischen Pegeln und enthält bei ideal symmetrischer Form ungeradzahlige Oberwellen. Ein Dreieck besitzt ebenfalls Oberwellen, deren Amplituden schneller abfallen. Ein idealer Sprung hätte unendliche Bandbreite; reale Flanken sind endlich.

### Flankenzeit

Rise Time und Fall Time beschreiben Übergänge typischerweise zwischen festgelegten Prozentpunkten. Eine Schaltung muss die zur Flanke gehörenden Frequenzanteile übertragen, nicht nur die Wiederholfrequenz.

### Tastgrad

Beim Rechteck ist `D = ton/T`. D ist der Tastgrad, ton die Einschaltzeit. D beeinflusst Mittelwert und Energie pro Periode. Signalform, Offset und Tastgrad müssen gemeinsam genannt werden.

### Spektrum und reale Flanken

Die Zeitform verrät noch nicht vollständig, welche Frequenzanteile ein Signal enthält. Ein idealer Sinus besteht aus genau einer Frequenz. Ein Rechteck setzt sich aus Grundschwingung und ungeraden Oberschwingungen zusammen; ein Dreieck enthält ebenfalls ungerade Oberschwingungen, deren Amplituden jedoch schneller abnehmen. Deshalb benötigt ein scharfes Rechteck wesentlich mehr Bandbreite als seine Wiederholfrequenz vermuten lässt.

Reale Generatoren und digitale Ausgänge besitzen keine senkrechten Flanken. Anstiegszeit, Ausgangswiderstand, Leitungsimpedanz, Lastkapazität und Messkopf formen den Übergang. Wird ein 1-MHz-Rechteck auf einem zu langsamen Oszilloskop fast sinusförmig dargestellt, muss nicht die Quelle fehlerhaft sein: Messkette und Bandbreitenbegrenzung können die Oberschwingungen entfernt haben. Für einen Vergleich werden deshalb Frequenz, Amplitude, Offset, Tastgrad, Last und Tastkopfeinstellung gemeinsam dokumentiert. Erst dann lässt sich entscheiden, ob eine Abweichung vom Generator, von der Schaltung oder von der Messung stammt.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Sinusförmige Mess- und Netzsignale
- Digitale Takte und PWM-Rechtecke
- Dreieckrampen in Modulatoren und Funktionsgeneratoren

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein ruhiges Schwingen der Hand ähnelt einem Sinus. Ein abruptes Umschlagen zwischen zwei Anschlägen ähnelt einem Rechteck und regt viele mechanische Schwingungen an. Ein gleichmässiges Hin-und-her-Fahren entspricht eher einem Dreieck.

## Berechnungsbeispiel

Bei 20 kHz und 30 % Tastgrad ist `T = 50 µs` und `ton = 15 µs`. Diese Zeit sagt noch nichts über die Flankenzeit; sie wird separat gemessen.

## Praxisbezug

Erzeuge alle drei Formen mit gleicher Frequenz und ähnlichem Upp. Vergleiche Zeitbild und Spektrum, sofern verfügbar. Ausgangsimpedanz und Last des Generators werden berücksichtigt.

## 🔗 Hardware ↔ Firmware

Timer erzeugen meist Rechteck oder PWM. Ein DAC kann stufige Sinus- und Dreiecksformen liefern; Rekonstruktionsfilter und Aktualisierungsrate bestimmen die reale Glätte.

## Merksatz

> Die Grundfrequenz beschreibt die Wiederholung, die Signalform bestimmt zusätzliche Frequenzanteile.

## Häufige Fehler und Missverständnisse

- Rechteck als einzelne Frequenz behandeln
- Tastgrad mit Flankenzeit verwechseln
- Generatoramplitude ohne Lastangabe übernehmen
- DAC-Stufen ignorieren

## Zusammenfassung

Sinus, Rechteck und Dreieck unterscheiden sich in zeitlichem Verlauf und Spektrum. Flanke, Tastgrad und Last sind wesentliche Messbedingungen.

## Übungsfragen

1. Welche Signalform besitzt ideal nur eine Frequenz?
2. Berechne ton bei 10 kHz und 40 %.
3. Warum fordert eine schnelle Rechteckflanke hohe Bandbreite?
4. Wie entsteht ein Sinus aus DAC-Werten?

Weitere Aufgaben: [Übungen zu Modul 07](../uebungen/modul-07.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b1-LK02–03`, `b4-LK07–10`, `c1–c2`
- Nachweise: Signalform-, Tastgrad- und Flankenmessung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
