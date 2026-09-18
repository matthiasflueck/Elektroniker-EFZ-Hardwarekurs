# 00.4 – Elektrische Sicherheit und sichere Kursgrenzen

[← Zurück](03-kursaufbau-lernpfad-und-drei-projektlinien.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-esd-verstehen-und-baugruppen-schuetzen.md)

## Lernziele

Nach dieser Lektion kannst du:

- Gefährdung und Risiko unterscheiden
- Schutzmassnahmen nach dem STOP-Prinzip wählen
- einen Kleinspannungsaufbau sicher erstinbetriebnehmen

## Einleitung

Die meisten Grundversuche arbeiten mit kleiner Spannung. Trotzdem können Kurzschlüsse heisse Leitungen erzeugen, Kondensatoren Energie speichern und falsche Messanschlüsse Bauteile zerstören. «Nur 12 Volt» ist deshalb keine vollständige Risikobeurteilung.

Sicherheit beginnt vor dem Einschalten. Wer Energiequelle, möglichen Fehlerstrom und Abbruchkriterien kennt, kann ruhig und systematisch arbeiten.


<!-- context-expansion-2026 -->
Elektronik entsteht nie nur am Schreibtisch. Anforderungen, Sicherheit, Dokumentation, Fertigung, Messung und Zusammenarbeit greifen ineinander. Die folgenden Grundlagen ordnen das Thema deshalb in den vollständigen Arbeitsablauf einer Elektronikerin oder eines Elektronikers ein.

Beim Thema **Elektrische Sicherheit und sichere Kursgrenzen** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie das Thema in einem Arbeitsauftrag umgesetzt, sicher durchgeführt, dokumentiert und als berufliche Handlung nachvollziehbar nachgewiesen wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Die Theorie wird hier immer auf eine konkrete berufliche Entscheidung bezogen: Was muss vor Arbeitsbeginn bekannt sein, welcher Nachweis ist nötig und woran erkennt man einen fachgerechten Zustand? So entsteht aus einer Regel ein wiederholbarer Arbeitsprozess.

### Gefahr, Exposition und Risiko

Eine Gefährdung ist eine mögliche Schadensquelle. Das Risiko hängt zusätzlich davon ab, wie wahrscheinlich und wie schwer ein Schaden ist. Beurteilt werden elektrische, thermische, mechanische und chemische Gefährdungen sowie gespeicherte Energie.

### STOP-Prinzip

Schutz wird in dieser Reihenfolge geplant: **Substitution** durch eine weniger gefährliche Lösung, **technische** Schutzmassnahmen wie Strombegrenzung, **organisatorische** Regeln und zuletzt **persönliche** Schutzausrüstung. Die Kurslabore verwenden galvanisch getrennte SELV-Kleinspannung, in der Regel 0–12 V DC, mit eingestellter Stromgrenze.

### Sichere Erstinbetriebnahme

Vor dem Einschalten werden Schema, Polarität, Kurzschlussfreiheit und Messpunkte geprüft. Das Netzgerät steht auf 0 V, der Ausgang ist aus, die Stromgrenze ist begründet. Beim Hochfahren werden Strom und Temperatur beobachtet. Unerwarteter Strom, Geruch, Geräusch oder Erwärmung bedeutet: abschalten, Energie entfernen, spannungsfrei untersuchen.

### Gespeicherte Energie

Ein Kondensator kann nach dem Ausschalten geladen bleiben. Erst nachdem diese reale Gefahr verstanden ist, ist die Formel sinnvoll: $E=\frac{1}{2}\cdot C\cdot U^2$. Entladen wird kontrolliert über einen geeigneten Widerstand, niemals durch absichtlichen Kurzschluss.

### Strom, Spannung und Einwirkdauer gemeinsam betrachten

Eine Spannungsangabe allein beschreibt die Gefahr nicht vollständig. Entscheidend sind auch möglicher Strom, Einwirkdauer, Strompfad durch den Körper, Frequenz, Umgebung und verfügbare Energie. Für Bauteile kommen thermische Belastung, Lichtbogen, heisse Oberflächen und wegfliegende Teile hinzu. Deshalb wird jede neue Quelle mit ihren Strom- und Energiemöglichkeiten betrachtet.

Auch die Strombegrenzung eines Labornetzgeräts ist kein universeller Schutz. Sie wirkt nur, wenn sie vor dem Einschalten korrekt eingestellt ist und schnell genug auf den Fehler reagiert. Ein bereits geladener Kondensator oder ein Akku kann Energie liefern, ohne dass die Begrenzung des Netzgeräts eingreift.

### Sicherer Zustand nach dem Abschalten

«Ausgeschaltet» bedeutet nicht automatisch «energiefrei». Kondensatoren können geladen, Spulenströme noch im Abklingen und Bauteile heiss sein. Vor dem Eingriff wird deshalb nicht nur der Schalterzustand kontrolliert, sondern der sichere Zustand nachgewiesen. Dazu gehören Spannungsmessung, angemessene Wartezeit und gegebenenfalls eine kontrollierte Entladung.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Arbeiten am Labornetzgerät und Prototyp
- Messungen an unbekannten Baugruppen
- Freigabe sicherer SELV-Versuche

In einer konkreten Arbeitssituation wird festgelegt, welche Vorbereitung, Schutzmassnahme, Dokumentation und Qualitätskontrolle erforderlich ist. Der Anwendungsfall gilt erst als beherrscht, wenn das Vorgehen reproduzierbar und für andere nachvollziehbar ist.

## Anschauliches Beispiel

Ein 4700-µF-Kondensator an 12 V sieht harmlos aus, kann beim Kurzschliessen aber einen hohen Impulsstrom liefern. Vor dem Berühren misst du seine Spannung und verwendest einen dimensionierten Entladewiderstand.

## Berechnungsbeispiel

Mit $C=4700\,\mu\mathrm{F}=0{,}0047\,\mathrm{F}$ und $U=12\,\mathrm{V}$ ergibt sich $E=0{,}5\cdot 0{,}0047\,\mathrm{F}\cdot(12\,\mathrm{V})^2=0{,}338\,\mathrm{J}$. Die quadratische Spannung zeigt: Verdoppelt sich $U$, vervierfacht sich die Energie.

## Praxisbezug

Erstelle für den Praxisaufbau des Moduls eine kurze Risikobeurteilung: Quelle, maximale Spannung, Stromgrenze, gespeicherte Energie, heisse Bauteile, Schutzmassnahmen und Abbruchkriterien.

## 🔗 Hardware ↔ Firmware

Firmware kann Schutzfunktionen überwachen, aber ein Programmfehler darf keine gefährliche Energie freigeben. Sichere Reset-Zustände, Strombegrenzungen und Abschaltpfade müssen hardwareseitig wirken. Beim Debug-Halt können Ausgänge ihren letzten Zustand behalten.

## Merksatz

> Spannungsfrei ändern, strombegrenzt einschalten, beobachtbar hochfahren.

## Häufige Fehler und Missverständnisse

- Kleinspannung automatisch mit risikofrei gleichsetzen.
- Die Stromgrenze erst nach dem Anschluss einstellen.
- Ein Bauteil ohne Spannungsprüfung anfassen, weil die Quelle ausgeschaltet ist.

## Zusammenfassung

Sicheres Arbeiten bewertet Energie und Fehlerfälle, nutzt das STOP-Prinzip und trennt Aufbauänderung von Inbetriebnahme. Im Kurs gelten bewusst enge Kleinspannungsgrenzen.

## Übungsfragen

1. Warum ist ein Akku trotz kleiner Spannung gefährlich?
2. Ordne Strombegrenzung und Schutzbrille im STOP-Prinzip ein.
3. Welche drei Abbruchzeichen beobachtest du beim ersten Einschalten?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b3-LK04`, `b3-LK14–15`, `b4-LK03`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
