# 00.4 – Elektrische Sicherheit und sichere Kursgrenzen

[← Zurück](03-kursaufbau-lernpfad-und-drei-projektlinien.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-esd-verstehen-und-baugruppen-schuetzen.md)

## Lernziele

Nach dieser Lektion kannst du:

- Gefährdung und Risiko unterscheiden
- Schutzmassnahmen nach dem STOP-Prinzip wählen
- einen Kleinspannungsaufbau sicher erstinbetriebnehmen

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b3-LK04`, `b3-LK14–15`, `b4-LK03`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Lektionen 00.1–00.3. Arbeiten an Netzspannung gehören nicht zu dieser Lektion.

## Warum ist das wichtig?

Die meisten Grundversuche arbeiten mit kleiner Spannung. Trotzdem können Kurzschlüsse heisse Leitungen erzeugen, Kondensatoren Energie speichern und falsche Messanschlüsse Bauteile zerstören. «Nur 12 Volt» ist deshalb keine vollständige Risikobeurteilung.

Sicherheit beginnt vor dem Einschalten. Wer Energiequelle, möglichen Fehlerstrom und Abbruchkriterien kennt, kann ruhig und systematisch arbeiten.

## Theorie

### Gefahr, Exposition und Risiko

Eine Gefährdung ist eine mögliche Schadensquelle. Das Risiko hängt zusätzlich davon ab, wie wahrscheinlich und wie schwer ein Schaden ist. Beurteilt werden elektrische, thermische, mechanische und chemische Gefährdungen sowie gespeicherte Energie.

### STOP-Prinzip

Schutz wird in dieser Reihenfolge geplant: **Substitution** durch eine weniger gefährliche Lösung, **technische** Schutzmassnahmen wie Strombegrenzung, **organisatorische** Regeln und zuletzt **persönliche** Schutzausrüstung. Die Kurslabore verwenden galvanisch getrennte SELV-Kleinspannung, in der Regel 0–12 V DC, mit eingestellter Stromgrenze.

### Sichere Erstinbetriebnahme

Vor dem Einschalten werden Schema, Polarität, Kurzschlussfreiheit und Messpunkte geprüft. Das Netzgerät steht auf 0 V, der Ausgang ist aus, die Stromgrenze ist begründet. Beim Hochfahren werden Strom und Temperatur beobachtet. Unerwarteter Strom, Geruch, Geräusch oder Erwärmung bedeutet: abschalten, Energie entfernen, spannungsfrei untersuchen.

### Gespeicherte Energie

Ein Kondensator kann nach dem Ausschalten geladen bleiben. Erst nachdem diese reale Gefahr verstanden ist, ist die Formel sinnvoll: `E = ½ · C · U²`. Entladen wird kontrolliert über einen geeigneten Widerstand, niemals durch absichtlichen Kurzschluss.

## Anschauliches Beispiel

Ein 4700-µF-Kondensator an 12 V sieht harmlos aus, kann beim Kurzschliessen aber einen hohen Impulsstrom liefern. Vor dem Berühren misst du seine Spannung und verwendest einen dimensionierten Entladewiderstand.

## Berechnungsbeispiel

Mit `C = 4700 µF = 0,0047 F` und `U = 12 V` ergibt sich `E = 0,5 × 0,0047 F × (12 V)² = 0,338 J`. Die quadratische Spannung zeigt: Verdoppelt sich U, vervierfacht sich die Energie.

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
