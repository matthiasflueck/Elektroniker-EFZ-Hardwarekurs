# 00.7 – Technische Dokumentation und Laborjournal

[← Zurück](06-professioneller-elektronikarbeitsplatz.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](README.md)

## Lernziele

Nach dieser Lektion kannst du:

- ein reproduzierbares Laborjournal führen
- Sollwert, Messwert, Abweichung und Bewertung trennen
- Revisionen und Entscheidungen rückverfolgbar dokumentieren

## Einleitung

Nach einigen Tagen ist kaum noch sicher erinnerlich, welcher Widerstand eingesetzt oder welche Geräteeinstellung verwendet wurde. Ohne Aufzeichnung kann selbst ein korrektes Resultat nicht zuverlässig wiederholt werden.

Gute Dokumentation entsteht während der Arbeit. Sie zeigt auch verworfene Hypothesen und verhindert, dass derselbe Fehler später nochmals untersucht werden muss.


<!-- context-expansion-2026 -->
Elektronik entsteht nie nur am Schreibtisch. Anforderungen, Sicherheit, Dokumentation, Fertigung, Messung und Zusammenarbeit greifen ineinander. Die folgenden Grundlagen ordnen das Thema deshalb in den vollständigen Arbeitsablauf einer Elektronikerin oder eines Elektronikers ein.

Beim Thema **Technische Dokumentation und Laborjournal** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie das Thema in einem Arbeitsauftrag umgesetzt, sicher durchgeführt, dokumentiert und als berufliche Handlung nachvollziehbar nachgewiesen wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Die Theorie wird hier immer auf eine konkrete berufliche Entscheidung bezogen: Was muss vor Arbeitsbeginn bekannt sein, welcher Nachweis ist nötig und woran erkennt man einen fachgerechten Zustand? So entsteht aus einer Regel ein wiederholbarer Arbeitsprozess.

### Mindestinhalt eines Laborjournals

Zu jedem Versuch gehören Datum, Person, Ziel, Schaltungsrevision, Aufbau, Material, Geräteidentifikation, erwartete Werte, Messbedingungen, Rohdaten, Auswertung, Abweichungen, Änderungen und Schlussfolgerung. Fotos ergänzen ein Schema, ersetzen es aber nicht.

### Soll, Ist und Bewertung

Ein Messwert wird nie allein notiert. Der Eintrag «$U(\mathrm{TP3})=3{,}28\,\mathrm{V}$ gegen GND, DMM-01, 10-V-Bereich, 5,00-V-Versorgung» ist aussagekräftiger als die alleinstehende Zahl 3,28. Die Bewertung berücksichtigt Toleranzen und Messunsicherheit.

### Revision und Versionsverwaltung

Schema, Stückliste, PCB, Firmware und Testplan müssen denselben Stand beschreiben. Eine Änderung erhält Grund, Datum, verantwortliche Person und Prüfnachweis. Versionsverwaltung bewahrt Historie; eine Freigabe bezeichnet den geprüften Stand.

### Beobachtung und Interpretation trennen

Im Laborjournal steht zuerst, was tatsächlich beobachtet wurde: Messwert, Signalform, Geräteeinstellung oder sichtbarer Zustand. Danach folgt die Interpretation. «$U(\mathrm{TP4})=0{,}18\,\mathrm{V}$ gegen GND» ist eine Beobachtung; «der Ausgang ist kurzgeschlossen» ist bereits eine Hypothese. Diese Trennung verhindert, dass Vermutungen später wie gesicherte Tatsachen gelesen werden.

Eine gute Hypothese führt zu einer unterscheidenden Prüfung. Wenn sowohl Kurzschluss als auch deaktivierter Ausgang einen niedrigen Pegel erklären könnten, wird eine Messung geplant, die beide Fälle trennt. Das Ergebnis und die verworfene Ursache bleiben dokumentiert. So entsteht aus Fehlersuche technisches Wissen.

### Diagramme und Bildschirmbilder

Messbilder benötigen Achsenskalierung, Kopplung, Tastkopffaktor, Triggerbedingung, Messpunkt und Bezug. Diagramme enthalten Grösse, Einheit und Betriebsbedingung. Ein Bild ohne diese Angaben kann anschaulich aussehen, ist aber kein reproduzierbarer Nachweis. Wo möglich bleiben zusätzlich die Rohdaten erhalten.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Laborjournal und Messprotokoll
- Design Review und Änderungsnachweis
- Übergabe an Fertigung, Test oder Service

In einer konkreten Arbeitssituation wird festgelegt, welche Vorbereitung, Schutzmassnahme, Dokumentation und Qualitätskontrolle erforderlich ist. Der Anwendungsfall gilt erst als beherrscht, wenn das Vorgehen reproduzierbar und für andere nachvollziehbar ist.

## Anschauliches Beispiel

Nach dem Austausch von R7 wird nicht nur «R7 geändert» notiert. Dokumentiert werden alter und neuer Wert, Grund, Schema-Revision, betroffene Messwerte und der Regressionstest, der die Änderung bestätigt.

## Berechnungsbeispiel

Bei $U\mathrm{soll}=5{,}00\,\mathrm{V}$ und $U\mathrm{ist}=4{,}92\,\mathrm{V}$ ist die absolute Abweichung $\Delta U=-0{,}08\,\mathrm{V}$. Relativ gilt $\frac{-0{,}08\,\mathrm{V}}{5{,}00\,\mathrm{V}}\cdot100\,\%=-1{,}6\,\%$. Erst der zulässige Bereich entscheidet, ob dies akzeptabel ist.

## Praxisbezug

Führe das Laborjournal in der Praxisarbeit vollständig. Tausche es anschliessend mit einer zweiten Person: Diese muss Aufbau, Messpunkte und Bewertung ohne mündliche Ergänzung nachvollziehen können.

## 🔗 Hardware ↔ Firmware

Board-, Schema- und Firmwareversion gehören gemeinsam ins Protokoll. Ein Messbild ohne Firmwarestand ist bei PWM, ADC oder Bussignalen oft nicht reproduzierbar. Detaillierte Codeversionierung wird im STM32-Kurs behandelt.

## Merksatz

> Ein Wert ohne Messpunkt, Bezug, Bedingung, Einheit und Revision ist kein belastbarer Nachweis.

## Häufige Fehler und Missverständnisse

- Rohdaten nachträglich durch berechnete Werte ersetzen.
- Fotos ohne Beschriftung, Massstab oder Schaltungsrevision ablegen.
- Fehlversuche löschen, statt Ursache und Erkenntnis festzuhalten.

## Zusammenfassung

Ein Laborjournal verbindet Erwartung, Rohdaten, Auswertung und Entscheidung. Revisionen sorgen dafür, dass die geprüfte Hardware-/Firmwarekombination eindeutig bleibt.

## Übungsfragen

1. Welche Angaben fehlen bei «$U=3{,}3$»?
2. Warum müssen Rohdaten erhalten bleiben?
3. Was unterscheidet Versionsstand und Freigabe?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b4-LK05`, `b4-LK09–10`, `b5-LK05`, `d1–d3`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
