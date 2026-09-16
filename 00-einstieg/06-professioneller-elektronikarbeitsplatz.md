# 00.6 – Professioneller Elektronikarbeitsplatz

[← Zurück](05-esd-verstehen-und-baugruppen-schuetzen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-technische-dokumentation-und-laborjournal.md)

## Lernziele

Nach dieser Lektion kannst du:

- einen Laborplatz in sichere Funktionszonen gliedern
- Messgeräte vor dem Anschluss richtig vorbereiten
- Dokumenten-, Aufbau-, Energie- und Messfreigabe unterscheiden

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b3-LK12`, `b3-LK14–15`, `b4-LK02–03`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Lektionen 00.4–00.5 und lokale Geräteeinweisung.

## Warum ist das wichtig?

Viele Laborfehler entstehen nicht durch schwierige Theorie, sondern durch eine Leitung in der falschen Buchse, eine unterbrochene Versorgungsschiene oder eine unklare Aufbauversion. Ein gut organisierter Platz senkt diese Fehlerwahrscheinlichkeit.

Ordnung bedeutet dabei nicht, dass der Tisch schön aussieht. Sie macht Strompfade, Messpunkte und Zuständigkeiten sichtbar.

## Theorie

### Funktionszonen

Die Aufbauzone enthält Prüfling und benötigte Bauteile. Die Messzone hält Geräte bedien- und ablesbar. Schema, Messplan und Laborjournal liegen in der Dokumentationszone. Material und Werkzeuge haben eine getrennte Ablagezone. Getränke, lose Metallteile und nicht benötigte Kabel bleiben ausserhalb.

### Geräte vorbereiten

Das Netzgerät wird bei ausgeschaltetem Ausgang eingestellt. Beim Multimeter werden Funktion, Bereich, Buchsen und Leitungen kontrolliert. Nach einer Strommessung kommt die rote Leitung sofort zurück in die V/Ω-Buchse. Am Funktionsgenerator wird geklärt, ob die Amplitudenanzeige für 50 Ω oder eine hochohmige Last gilt.

### Vier Freigaben

Die **Dokumentenfreigabe** bestätigt Schema und Revision. Die **Aufbaufreigabe** prüft Verbindung, Polarität und Kurzschlussfreiheit. Die **Energiefreigabe** legt Quelle, Begrenzung und Abbruch fest. Die **Messfreigabe** bestätigt Messgerät, Bezugspunkt und erwartete Belastung.

## Anschauliches Beispiel

Ein DMM steht noch auf Strommessung und die Leitung steckt in der A-Buchse. Die sichtbare Buchsenkontrolle vor dem Anschluss verhindert, dass das Gerät bei einer vermeintlichen Spannungsmessung die Quelle kurzschliesst.

## Berechnungsbeispiel

Für eine 5-V-Schaltung mit erwarteten 20 mA kann eine erste Stromgrenze von 30 mA begründet sein. Sie liegt `10 mA` beziehungsweise `50 %` über dem Soll, aber weit unter einem möglichen Ampere-Kurzschluss. Der genaue Wert hängt vom Einschaltstrom ab.

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
