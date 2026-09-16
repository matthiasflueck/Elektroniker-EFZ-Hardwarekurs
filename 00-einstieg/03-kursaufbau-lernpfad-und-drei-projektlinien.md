# 00.3 – Kursaufbau, Lernpfad und drei Projektlinien

[← Zurück](02-bildungsplan-2026-und-handlungskompetenzen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-elektrische-sicherheit-und-sichere-kursgrenzen.md)

## Lernziele

Nach dieser Lektion kannst du:

- die Lernlogik des Kurses anwenden
- Theorie, Übungen, Praxis und Projekte unterscheiden
- die drei Projektlinien fachlich einordnen

## Warum ist das wichtig?

Ein umfangreicher Kurs kann unübersichtlich wirken. Du musst aber nicht 197 Lektionen gleichzeitig im Kopf behalten. Entscheidend ist eine wiederkehrende Arbeitsweise: verstehen, vorhersagen, aufbauen, messen, vergleichen und erklären.

Die drei Projekte sorgen dafür, dass einzelne Grundlagen nicht isoliert bleiben. Eine Rechnung aus Modul 02 taucht später in einer echten Sensorkette oder Leistungsstufe wieder auf.

## Theorie

### Vier Materialarten

Theorie-Lektionen bauen Begriffe und Modelle auf. Übungen prüfen Verständnis, Rechnung und Fehlersuche; ihre Lösungen liegen separat. Praxislektionen führen zu Messdaten. Projekte verbinden mehrere Module und erzeugen freigabefähige Unterlagen.

### Drei Projektlinien

**Projekt A** führt vom resistiven Sensor über Teiler/Brücke, Verstärker und Filter zum ADC-tauglichen 0–3,3-V-Signal. **Projekt B** verbindet MCU-Signal, Gate-Ansteuerung, MOSFET, Schutzpfad, Last, PWM und Messung. **Projekt C** durchläuft den gesamten Entwicklungsprozess von der Anforderung bis zur Verifikation.

### Lernschleife statt Kochrezept

Vor dem Aufbau wird ein erwarteter Wertebereich notiert. Nach der Messung wird nicht nur «richtig/falsch» entschieden, sondern die Abweichung erklärt. Bei unerwartetem Resultat folgt eine Hypothese und eine gezielte Kontrollmessung.

### Wie du mit einer Lektion arbeitest

Lies zuerst Lernziele und Einleitung, ohne Formeln auswendig zu lernen. Versuche danach, das Prinzip in eigenen Worten und mit einem einfachen Strom- oder Signalpfad zu erklären. Erst wenn die Vorstellung stimmt, folgen Gleichungen und Zahlen. Bei einem Rechenbeispiel deckst du die Lösung möglichst ab und schätzt den Wertebereich, bevor du nachrechnest.

In der Praxis wird diese Reihenfolge verbindlich. Ein Aufbau ohne dokumentierte Vorhersage liefert zwar Messwerte, aber wenig Lernertrag. Ein abweichender Messwert ist besonders wertvoll, wenn du erklären kannst, welche Annahme nicht erfüllt war und welche Kontrollmessung zwischen mehreren Ursachen unterscheidet.

### Meilensteine der Projekte

Die Projekte wachsen mit dem Kurs. Am Anfang entstehen Anforderung, Blockdiagramm und erste Berechnungen. Später kommen Bauteilentscheid, Schema, Aufbau, Messungen und Verifikation hinzu. Ein Meilenstein gilt erst als abgeschlossen, wenn die Unterlagen zum tatsächlich geprüften Stand passen. So wird verhindert, dass am Ende eine scheinbar fertige Dokumentation entsteht, die den realen Aufbau nicht mehr beschreibt.

## Anschauliches Beispiel

Bei Projekt A berechnest du zuerst den Sensorteiler. Später prüfst du, ob der OPV-Eingangsbereich passt, ob der ADC die Quelle belastet und ob das Filter schnell genug reagiert. Derselbe Spannungswert wird so aus mehreren fachlichen Blickwinkeln beurteilt.

## Berechnungsbeispiel

Ein Lernblock aus 45 Minuten Theorie, 30 Minuten Übungen und 90 Minuten Labor benötigt ohne Dokumentation bereits `45 + 30 + 90 = 165 min = 2 h 45 min`. Plane zusätzlich Zeit für Vorbereitung, Fehlersuche und Auswertung ein.

## Praxisbezug

Lege ein Laborjournal an. Erstelle für ein frei gewähltes Mini-Experiment die Felder Ziel, Sollwert, Schaltung, Material, Messmittel, Rohdaten, Auswertung, Abweichung und nächste Schritte.

## 🔗 Hardware ↔ Firmware

Die Projekte trennen Zuständigkeiten klar: Dieser Kurs erklärt elektrische Schnittstelle, Schutz, Pegel und Messung. Der STM32-Kurs erklärt Peripherie, Register und Programmstruktur. Querverweise verbinden beide, ohne Inhalte unnötig zu duplizieren.

## Merksatz

> Vorhersagen → berechnen → aufbauen → messen → vergleichen → erklären.

## Häufige Fehler und Missverständnisse

- Nur lesen und die Praxis auf später verschieben.
- Messwerte ohne vorherige Erwartung sammeln.
- Lösungen ansehen, bevor ein eigener Lösungsweg dokumentiert wurde.

## Zusammenfassung

Der Kurs verbindet vier Materialarten und drei Projekte. Wiederkehrende Lernschleifen machen aus Einzelwissen eine professionelle Vorgehensweise.

## Übungsfragen

1. Welche Aufgabe hat Projekt B im Lernpfad?
2. Warum liegen Lösungen getrennt?
3. Was notierst du vor der ersten Messung?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a1–a3`, `d1–d3`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
