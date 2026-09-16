# Praxis 00 – ESD- und Elektronikarbeitsplatz korrekt einrichten

[← Modul 00](../00-einstieg/README.md) · [Kursübersicht](../README.md)

## Lernziel

Du richtest einen sicheren, nachvollziehbaren ESD-Arbeitsplatz ein, prüfst die Schutzmittel und führst die vier Freigaben an einem spannungslosen Kleinspannungsaufbau durch.

## Benötigtes Material

ESD-Matte, geprüftes Handgelenkband, ESD-Beutel mit Übungsbaugruppe, isolierte Ablage, Steckbrett, 1-kΩ-Widerstand, beschriftete Leitungen, Laborjournal.

## Benötigte Messgeräte

Zugelassener ESD-Tester, Digitalmultimeter und strombegrenztes SELV-Labornetzgerät. Das Netzgerät bleibt bis zur Freigabe ausgeschaltet.

## Schaltung / Messaufbau

![ESD-Arbeitsplatz mit Schutzwiderständen und gemeinsamem Punkt](../bilder/00-einstieg/00-05-esd-arbeitsplatz.png)

Die Übungsschaltung besteht aus einer 5-V-Quelle und 1 kΩ. Sie wird erst nach Abschluss des ESD-Teils aufgebaut.

## Sicherheitshinweise

Nur 0–5 V DC, Stromgrenze höchstens 20 mA. Ein Handgelenkband niemals direkt an PE improvisieren. Beschädigte Schutzausrüstung nicht verwenden. Vor jeder Aufbauänderung: Ausgang AUS.

## Vorbereitung

Erstelle Checklisten für Dokumenten-, Aufbau-, Energie- und Messfreigabe. Notiere Abbruchkriterien und die erwartete Stromstärke.

## Berechnung

Für 5 V und 1 kΩ gilt `I = 5 mA`, `P_R = 25 mW`. Begründe eine Stromgrenze von 10 mA.

## Aufbau

1. Zonen markieren und Fremdmaterial entfernen. 2. ESD-Ausrüstung visuell prüfen. 3. Testergebnis dokumentieren. 4. Baugruppe geschützt ein- und auspacken. 5. Übungsschaltung spannungsfrei aufbauen.

## Durchführung

Arbeite in der Folge **vorhersagen → prüfen → freigeben → einschalten → beobachten → dokumentieren**. Eine zweite Person übernimmt die Gegenprüfung der Freigaben.

## Messung

Messe vor Power-on den Widerstand der Schaltung. Stelle danach 5,00 V und 10 mA ein, schalte ein und miss Spannung sowie Strom.

## Messwerte

| Grösse | Soll / Grenze | Ist | Gerät / Bedingung |
|---|---:|---:|---|
| ESD-Test | bestanden |  |  |
| R1 | ca. 1 kΩ |  | spannungsfrei |
| U | 5,00 V |  |  |
| I | ca. 5 mA |  |  |

## Auswertung

Bewerte jede Freigabe, Abweichung und Änderung. Eine reine Checkmark-Liste ohne Beobachtung genügt nicht.

## Fragen

1. Welche Schutzwirkung hat der definierte Ableitwiderstand? 2. Welcher Fehler wird durch die Buchsenkontrolle verhindert? 3. Was müsste vor einem Firmwaredownload zusätzlich geprüft werden?

## Was solltest du beobachtet haben?

Ein strukturierter Arbeitsplatz macht Zustand, Strompfad und Revision schneller erkennbar. Der ESD-Schutz ist nur dann belastbar, wenn das Gesamtsystem geprüft und dokumentiert ist.

## Bezug zur Theorie

Lektionen 00.4–00.7; Kompetenzbezug `b3-LK04`, `b3-LK12`, `b4-LK03` und `b4-LK09`.

## 🔗 Hardware ↔ Firmware

Dokumentiere Board- und Firmwarestand. Prüfe vor dem Programmieren Reset-Zustände, mögliche aktive Ausgänge und Debuggerverhalten.

## Bezug Bildungsplan 2026

- Handlungskompetenzen und Leistungskriterien: `b3-LK04`, `b3-LK12`, `b4-LK03`, `b4-LK09`, `d1–d3`
- Vollständige Zuordnung: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
