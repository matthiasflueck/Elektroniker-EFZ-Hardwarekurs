# 00.2 – Gefährdungen, Schutzmassnahmen und sichere Grenzen

[← Zurück](01-kursaufbau-lernpfad-und-professionelles-arbeiten.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](03-esd-schutz-und-umgang-mit-baugruppen.md)

## Lernziele

Nach dieser Lektion kannst du die beschriebenen Regeln auf einen realen Laborauftrag anwenden, Risiken und Freigabekriterien begründen sowie deine Arbeit so dokumentieren, dass eine zweite Person sie sicher nachvollziehen kann.

## 1. Risiko vor der Tätigkeit beurteilen

Eine Gefährdung ist eine mögliche Schadensquelle; das Risiko verbindet mögliche Schwere und Eintrittswahrscheinlichkeit. Vor jedem Aufbau werden mindestens Energiequelle, Spannung, möglicher Strom, gespeicherte Energie, Temperatur, bewegte Teile und chemische Stoffe betrachtet.

Schutzmassnahmen folgen dem **STOP-Prinzip**:

1. **Substitution:** gefährliche Quelle durch eine ungefährlichere ersetzen.
2. **Technische Massnahmen:** Strombegrenzung, Abdeckung, Verriegelung, Absaugung.
3. **Organisatorische Massnahmen:** Freigabe, Anleitung, abgesperrter Bereich.
4. **Persönliche Massnahmen:** Schutzbrille oder weitere geeignete PSA.

Persönliche Schutzausrüstung ist die letzte, nicht die erste Schutzebene.

## 2. Sichere Kursgrenze

Die Grundlabore verwenden ausschliesslich galvanisch getrennte SELV-Kleinspannung, typischerweise 0–12 V DC, mit begrenztem Strom. Nicht Bestandteil unbeaufsichtigter Übungen sind:

- Arbeiten an Netzspannung oder nicht galvanisch getrennten Schaltungen,
- offene Netzgeräte oder Primärseiten von Schaltnetzteilen,
- Akkupacks mit hoher Kurzschlussenergie,
- geladene Hochspannungskondensatoren,
- Laser, Drucksysteme oder Maschinen ohne separate Freigabe.

Kleinspannung bedeutet nicht automatisch risikofrei: Ein Li-Ion-Akku oder ein grosser Kondensator kann bei wenigen Volt sehr hohe Ströme liefern.

## 3. Gespeicherte Energie

Ein Kondensator speichert

$$E_C = \frac{1}{2} C U^2$$

und eine Induktivität

$$E_L = \frac{1}{2} L I^2.$$

Beispiel: `4700 µF` bei `12 V` speichern rund `0.34 J`. Nach dem Ausschalten kann die Spannung noch anliegen. Vor Berührung wird sie mit einem geeigneten Messgerät geprüft; kontrolliertes Entladen erfolgt über einen dimensionierten Widerstand, nie durch Kurzschliessen.

## 4. Erstinbetriebnahme

Vor dem Einschalten:

- Schema und Aufbau vergleichen,
- Kurzschluss zwischen Versorgungsnetzen ausschliessen,
- Polaritäten und Bauteilorientierungen prüfen,
- Netzgerät auf `0 V` stellen und Stromgrenze festlegen,
- Messpunkte und Abbruchkriterien definieren.

Beim Einschalten Spannung langsam erhöhen und Versorgungsstrom beobachten. Unerwarteter Strom, Geruch, Geräusch, Erwärmung oder instabile Anzeige bedeutet: sofort abschalten, Energie entfernen, Ursache spannungsfrei klären.

## Hardware ↔ Firmware

Firmware ist keine Schutzmassnahme, wenn ihr Ausfall gefährlich werden kann. Hardwarebegrenzungen, sichere Reset-Zustände und Abschaltpfade müssen ohne korrekt laufenden Programmcode wirken. Firmware darf Schutzfunktionen überwachen und ergänzen, aber nicht stillschweigend ersetzen.

## Merksatz

**Spannungsfrei ändern, strombegrenzt einschalten, beobachtbar hochfahren.**


## Bildungsplan 2026

Dieses Thema unterstützt `a1` (Anforderungen erfassen), `d1` (Aufträge planen), `d2` (Verlauf kontrollieren) und `d3` (Ergebnisse auswerten). Sicherheits-, Qualitäts- und Dokumentationsregeln wirken zusätzlich in allen Hardwarekompetenzen `b1–b5`.

## Kurzcheck

1. Welche Information muss vor dem Einschalten feststehen?
2. Woran erkennt eine zweite Person den tatsächlich geprüften Stand?
3. Welche Hardwareeigenschaft kann sich in der Firmware als scheinbar zufälliger Fehler zeigen?
