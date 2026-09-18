# 00.6 – Professioneller Elektronikarbeitsplatz

[← Zurück](05-esd-verstehen-und-baugruppen-schuetzen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-technische-dokumentation-und-laborjournal.md)

## Lernziele

Nach dieser Lektion kannst du:

- einen Laborplatz in sichere Funktionszonen gliedern
- Messgeräte vor dem Anschluss richtig vorbereiten
- Dokumenten-, Aufbau-, Energie- und Messfreigabe unterscheiden

## Einleitung

Viele Laborfehler entstehen nicht durch schwierige Theorie, sondern durch eine Leitung in der falschen Buchse, eine unterbrochene Versorgungsschiene oder eine unklare Aufbauversion. Ein gut organisierter Platz senkt diese Fehlerwahrscheinlichkeit.

Ordnung bedeutet dabei nicht, dass der Tisch schön aussieht. Sie macht Strompfade, Messpunkte und Zuständigkeiten sichtbar.


<!-- context-expansion-2026 -->
Elektronik entsteht nie nur am Schreibtisch. Anforderungen, Sicherheit, Dokumentation, Fertigung, Messung und Zusammenarbeit greifen ineinander. Die folgenden Grundlagen ordnen das Thema deshalb in den vollständigen Arbeitsablauf einer Elektronikerin oder eines Elektronikers ein.

Beim Thema **Professioneller Elektronikarbeitsplatz** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie das Thema in einem Arbeitsauftrag umgesetzt, sicher durchgeführt, dokumentiert und als berufliche Handlung nachvollziehbar nachgewiesen wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Die Theorie wird hier immer auf eine konkrete berufliche Entscheidung bezogen: Was muss vor Arbeitsbeginn bekannt sein, welcher Nachweis ist nötig und woran erkennt man einen fachgerechten Zustand? So entsteht aus einer Regel ein wiederholbarer Arbeitsprozess.

### Funktionszonen

Die Aufbauzone enthält Prüfling und benötigte Bauteile. Die Messzone hält Geräte bedien- und ablesbar. Schema, Messplan und Laborjournal liegen in der Dokumentationszone. Material und Werkzeuge haben eine getrennte Ablagezone. Getränke, lose Metallteile und nicht benötigte Kabel bleiben ausserhalb.

### Geräte vorbereiten

Das Netzgerät wird bei ausgeschaltetem Ausgang eingestellt. Beim Multimeter werden Funktion, Bereich, Buchsen und Leitungen kontrolliert. Nach einer Strommessung kommt die rote Leitung sofort zurück in die V/Ω-Buchse. Am Funktionsgenerator wird geklärt, ob die Amplitudenanzeige für 50 Ω oder eine hochohmige Last gilt.

### Vier Freigaben

Die **Dokumentenfreigabe** bestätigt Schema und Revision. Die **Aufbaufreigabe** prüft Verbindung, Polarität und Kurzschlussfreiheit. Die **Energiefreigabe** legt Quelle, Begrenzung und Abbruch fest. Die **Messfreigabe** bestätigt Messgerät, Bezugspunkt und erwartete Belastung.

### Leitungsführung als Teil der Fehlervorbeugung

Leitungen werden so geführt, dass ihr Zweck erkennbar bleibt und sie nicht unbeabsichtigt herausgezogen werden. Versorgung und Rückleiter liegen möglichst nahe beieinander. Messleitungen erhalten einen festen Bezugspunkt, damit ein Umstecken nicht unbemerkt die Messrichtung verändert. Bei komplexeren Aufbauten werden Netznamen oder Messpunktnummern verwendet; Farbe allein ist nicht eindeutig genug.

Ein professioneller Platz unterstützt auch die Fehlersuche. Sind Bauteile verdeckt, Messpunkte unzugänglich oder mehrere Revisionen vermischt, wird jede Diagnose langsamer und unsicherer. Darum werden nicht benötigte Teile entfernt und ausgebaute Komponenten klar als geprüft, ungeprüft oder fehlerhaft gekennzeichnet.

### Gerätezustand sichtbar machen

Ausgang EIN/AUS, eingestellte Stromgrenze, Tastkopffaktor und DMM-Buchse müssen vor dem Anschluss erkennbar sein. Nach Arbeitsende werden Geräte in einen definierten Grundzustand gebracht. Diese Gewohnheit schützt besonders die nächste Person, die den Arbeitsplatz verwendet und sonst von einer unbemerkten Voreinstellung überrascht werden könnte.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Aufbau und Vermessung von Prototypen
- Bestückungs- und Rework-Arbeiten
- Wiederholbare Fehlersuche am Laborplatz

In einer konkreten Arbeitssituation wird festgelegt, welche Vorbereitung, Schutzmassnahme, Dokumentation und Qualitätskontrolle erforderlich ist. Der Anwendungsfall gilt erst als beherrscht, wenn das Vorgehen reproduzierbar und für andere nachvollziehbar ist.

## Anschauliches Beispiel

Ein DMM steht noch auf Strommessung und die Leitung steckt in der A-Buchse. Die sichtbare Buchsenkontrolle vor dem Anschluss verhindert, dass das Gerät bei einer vermeintlichen Spannungsmessung die Quelle kurzschliesst.

## Berechnungsbeispiel

Für eine 5-V-Schaltung mit erwarteten 20 mA kann eine erste Stromgrenze von 30 mA begründet sein. Sie liegt $10\,\mathrm{mA}$ beziehungsweise $50\,\%$ über dem Soll, aber weit unter einem möglichen Ampere-Kurzschluss. Der genaue Wert hängt vom Einschaltstrom ab.

## Praxisbezug

Richte den Arbeitsplatz gemäss [Praxis Modul 00](../praxis/modul-00.md) ein. Lass eine zweite Person die vier Freigaben anhand deiner Checkliste nachvollziehen.

## 🔗 Hardware ↔ Firmware

Vor dem Programmieren ist zu klären, welche Pins im Reset hochohmig sind, interne Pull-Widerstände besitzen oder vom Debug-Port belegt werden. Ein angehaltener Controller kann Ausgänge im letzten Zustand belassen; die Energiefreigabe muss das berücksichtigen.

## Merksatz

> Ein professioneller Arbeitsplatz macht den sicheren Zustand und die aktuelle Revision sichtbar.

## Häufige Fehler und Missverständnisse

- Geräte erst nach dem Verdrahten einstellen.
- Nur Kabelfarben statt eindeutiger Netznamen verwenden.
- Eine Schaltung ändern, während sie noch versorgt ist.

## Zusammenfassung

Funktionszonen, vorbereitete Geräte und vier klar getrennte Freigaben reduzieren Verwechslungen und machen die Inbetriebnahme reproduzierbar.

## Übungsfragen

1. Warum folgt die Messfreigabe erst nach der Energiefreigabe?
2. Welche Kontrolle verhindert den häufigsten DMM-Kurzschluss?
3. Was gehört in die Dokumentationszone?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b3-LK12`, `b3-LK14–15`, `b4-LK02–03`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
