# 00.1 – Berufsbild Elektroniker/in EFZ und Arbeitsfelder

[← Zurück](README.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](02-bildungsplan-2026-und-handlungskompetenzen.md)

## Lernziele

Nach dieser Lektion kannst du:

- typische Arbeitsaufgaben und Verantwortungen des Berufs erklären
- Entwicklung, Fertigung, Inbetriebnahme und Prüfung als zusammenhängenden Prozess beschreiben
- sorgfältige Dokumentation und Kommunikation als technische Arbeit begründen

## Einleitung

Elektronik wirkt am Anfang oft wie eine Sammlung von Bauteilen und Formeln. Im Berufsalltag geht es aber selten nur darum, einen Widerstand auszurechnen oder ein Kabel anzulöten. Entscheidend ist, aus einer unvollständigen Aufgabenstellung eine zuverlässige, sichere und prüfbare Lösung zu machen.

Diese Lektion gibt dir deshalb zuerst das grosse Bild. Wenn du weisst, wozu ein einzelner Lernschritt später gebraucht wird, kannst du Formeln, Messmethoden und Dokumente besser einordnen.


<!-- context-expansion-2026 -->
Elektronik entsteht nie nur am Schreibtisch. Anforderungen, Sicherheit, Dokumentation, Fertigung, Messung und Zusammenarbeit greifen ineinander. Die folgenden Grundlagen ordnen das Thema deshalb in den vollständigen Arbeitsablauf einer Elektronikerin oder eines Elektronikers ein.

Beim Thema **Berufsbild Elektroniker/in EFZ und Arbeitsfelder** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie das Thema in einem Arbeitsauftrag umgesetzt, sicher durchgeführt, dokumentiert und als berufliche Handlung nachvollziehbar nachgewiesen wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Die Theorie wird hier immer auf eine konkrete berufliche Entscheidung bezogen: Was muss vor Arbeitsbeginn bekannt sein, welcher Nachweis ist nötig und woran erkennt man einen fachgerechten Zustand? So entsteht aus einer Regel ein wiederholbarer Arbeitsprozess.

### Vom Bedürfnis zum nachgewiesenen Produkt

Ein Auftrag beginnt beispielsweise mit dem Wunsch: „Die Temperatur soll erfasst und ein Lüfter geregelt werden.“ Daraus entstehen messbare Anforderungen: Messbereich, Genauigkeit, Versorgung, Reaktionszeit, Schnittstellen und sichere Fehlerzustände. Erst danach werden Sensor, Eingangsschaltung, Mikrocontroller, Leistungsschalter und Software gewählt.

```text
Bedürfnis → Anforderungen → Konzept → Schema → Aufbau
          → Inbetriebnahme → Messung → Verifikation → Dokumentation
```

### Typische Arbeitsfelder

Elektroniker/innen arbeiten in Entwicklung, Versuch, Prototypenbau, Produktion, Prüftechnik, Inbetriebnahme, Service oder Qualitätssicherung. Je nach Betrieb liegt der Schwerpunkt anders. Gemeinsam sind das systematische Vorgehen, der sichere Umgang mit Energie und Betriebsmitteln sowie die Fähigkeit, Resultate verständlich zu belegen.

### Fachliche und überfachliche Verantwortung

Technische Qualität bedeutet mehr als Funktion. Eine Lösung muss unter definierten Bedingungen funktionieren, Normen und Schutzmassnahmen einhalten, herstellbar, wartbar und dokumentiert sein. Dazu kommen Teamarbeit, Rückfragen bei Unklarheiten und ein ehrlicher Umgang mit Messabweichungen oder Fehlern.

### Was eine Fachperson von einem zufälligen Aufbau unterscheidet

Ein zufälliger Aufbau kann unter günstigen Bedingungen funktionieren. Eine fachgerecht entwickelte Lösung muss dagegen auch dann beurteilt werden können, wenn Versorgung, Temperatur, Bauteilstreuung oder Last vom Idealwert abweichen. Elektronikerinnen und Elektroniker denken deshalb früh über Grenzfälle nach: Was geschieht beim Einschalten? Wie verhält sich die Schaltung bei einem offenen Sensor? Welche Messung beweist die geforderte Genauigkeit?

Dazu gehört auch, Unsicherheit offen zu benennen. Wenn eine Anforderung unklar ist, wird sie nicht stillschweigend ergänzt. Die Fachperson stellt eine präzise Rückfrage, dokumentiert die Antwort und leitet daraus technische Prüfkriterien ab. Dadurch werden spätere Diskussionen über «richtig» und «falsch» durch nachvollziehbare Kriterien ersetzt.

### Zusammenarbeit im Entwicklungsprozess

Hardwareentwicklung ist Teamarbeit. Schema, Leiterplatte, Firmware, Mechanik und Test beeinflussen sich gegenseitig. Ein grösserer Steckverbinder kann das PCB verändern; ein anderer Sensor kann neue Firmwarekalibrierung verlangen; ein schnelleres Signal kann eine andere Leitungsführung nötig machen. Gute Zusammenarbeit bedeutet, solche Abhängigkeiten früh sichtbar zu machen und Änderungen an alle betroffenen Stellen weiterzugeben.

## Anschauliches Beispiel

Bei einer defekten Baugruppe ersetzt eine Fachperson nicht wahllos Teile. Sie klärt das Symptom, beschafft Schema und Sollwerte, prüft Versorgung und Signalpfad, dokumentiert Messpunkte und bestätigt nach der Reparatur mit einem Regressionstest, dass keine neue Abweichung entstanden ist.

## Berechnungsbeispiel

Hier steht noch keine Schaltungsformel im Zentrum. Eine erste quantitative Abschätzung ist dennoch möglich: Braucht eine Prüfung 12 Minuten und werden 25 Baugruppen geprüft, sind mindestens `12 min × 25 = 300 min = 5 h` reine Prüfzeit einzuplanen. Rüstzeit, Dokumentation und Fehlerfälle kommen hinzu. Auch Arbeitsplanung ist technische Arbeit.

## Praxisbezug

Wähle ein elektronisches Alltagsprodukt. Zerlege seinen Lebenszyklus in Anforderung, Hardware, Firmware, Fertigung, Prüfung und Wartung. Notiere zu jeder Phase mindestens eine Aufgabe einer Elektronikerin oder eines Elektronikers.

## 🔗 Hardware ↔ Firmware

Ein modernes Produkt entsteht fast immer an der Grenze von Hardware und Firmware. Die Hardware legt Spannungen, Ströme, Schutz und physische Schnittstellen fest. Firmware konfiguriert Peripherie und verarbeitet Zustände. Ein Fehler kann auf beiden Seiten liegen; deshalb werden beide Sichtweisen im Kurs verbunden. Die Programmierung selbst wird im [STM32-Programmierkurs](https://github.com/matthiasflueck/STM32-Programmierkurs) vertieft.

## Merksatz

> Professionelle Elektronik endet nicht beim funktionierenden Aufbau, sondern beim nachvollziehbaren Nachweis.

## Häufige Fehler und Missverständnisse

- Den Beruf auf Löten oder Programmieren reduzieren.
- Ein einmal funktionierender Prototyp mit einem verifizierten Produkt verwechseln.
- Dokumentation als Zusatz statt als Teil der technischen Lösung betrachten.

## Zusammenfassung

Elektroniker/innen führen Aufgaben von der Anforderung bis zum geprüften Resultat. Sie kombinieren Schaltungsverständnis, praktische Fertigkeiten, Messmethodik, Firmwarebezug und nachvollziehbare Dokumentation.

## Übungsfragen

1. Warum reicht die Aussage «Es funktioniert» als Prüfnachweis nicht?
2. Welche zwei Arbeitsfelder interessieren dich besonders und weshalb?
3. Nenne drei Informationen, die vor der Entwicklung einer Lüftersteuerung fehlen.

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a1–a3`, `d1–d3`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
