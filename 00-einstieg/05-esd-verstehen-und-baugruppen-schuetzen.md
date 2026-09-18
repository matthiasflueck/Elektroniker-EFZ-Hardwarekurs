# 00.5 – ESD verstehen und Baugruppen schützen

[← Zurück](04-elektrische-sicherheit-und-sichere-kursgrenzen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-professioneller-elektronikarbeitsplatz.md)

## Lernziele

Nach dieser Lektion kannst du:

- Entstehung und Schadensarten elektrostatischer Entladung erklären
- einen ESD-Schutzbereich korrekt benutzen
- ESD-bedingte Fehler in der Diagnose berücksichtigen

## Einleitung

Ein Funke, den Menschen spüren, ist deutlich stärker als viele Halbleitereingänge vertragen. Noch schwieriger sind Entladungen, die unbemerkt bleiben: Eine Baugruppe kann zunächst funktionieren und später sporadisch ausfallen.

ESD-Schutz ist deshalb kein Ritual. Er schafft kontrollierte Potentialverhältnisse und verhindert schnelle Entladungen durch empfindliche Strukturen.


<!-- context-expansion-2026 -->
Elektronik entsteht nie nur am Schreibtisch. Anforderungen, Sicherheit, Dokumentation, Fertigung, Messung und Zusammenarbeit greifen ineinander. Die folgenden Grundlagen ordnen das Thema deshalb in den vollständigen Arbeitsablauf einer Elektronikerin oder eines Elektronikers ein.

Beim Thema **ESD verstehen und Baugruppen schützen** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie das Thema in einem Arbeitsauftrag umgesetzt, sicher durchgeführt, dokumentiert und als berufliche Handlung nachvollziehbar nachgewiesen wird.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Die Theorie wird hier immer auf eine konkrete berufliche Entscheidung bezogen: Was muss vor Arbeitsbeginn bekannt sein, welcher Nachweis ist nötig und woran erkennt man einen fachgerechten Zustand? So entsteht aus einer Regel ein wiederholbarer Arbeitsprozess.

### Aufladung und Entladung

Reibung und Trennung unterschiedlicher Materialien können Ladung verschieben. Person, Werkzeug und Baugruppe liegen dann auf verschiedenen Potentialen. Bei Annäherung kann die Spannung dünne Oxidschichten oder pn-Übergänge lokal überlasten.

### Drei Schadensbilder

Ein **katastrophaler Schaden** ist sofort sichtbar. Ein **latenter Schaden** verkürzt die Lebensdauer. Eine **Parameteränderung** erhöht etwa Leckstrom oder Rauschen. Die letzten beiden Formen können wie Firmware- oder Temperaturprobleme erscheinen.

### Kontrollierter Potentialausgleich

ESD-Matte, Handgelenkband und geeignete Werkzeuge werden über definierte Schutzwiderstände an einem gemeinsamen Erdungspunkt zusammengeführt. Das begrenzt den Ausgleichsstrom. Ein Handgelenkband wird nie improvisiert direkt mit Schutzleiter verbunden.

![ESD-Arbeitsplatz mit gemeinsamem Erdungspunkt und Schutzwiderständen](../bilder/00-einstieg/00-05-esd-arbeitsplatz.png)

Die Baugruppe kommt geschlossen im ESD-Beutel an den Platz, wird erst im Schutzbereich geöffnet und an Kanten gehalten. Schutzmittel und Prüfdatum werden vor Arbeitsbeginn kontrolliert.

### Warum hohe Spannung nicht automatisch viel Energie bedeutet

Bei elektrostatischer Aufladung können mehrere Kilovolt entstehen, obwohl die gespeicherte Gesamtenergie klein ist. Für Menschen ist die Entladung dann möglicherweise kaum bemerkbar. In einem Halbleiter konzentriert sie sich jedoch auf sehr kleine Strukturen und extrem kurze Zeit. Dadurch entstehen lokal hohe Feldstärken und Stromdichten.

ESD-Schutz verhindert nicht jede Ladung. Er sorgt dafür, dass sich Potentiale langsam und kontrolliert angleichen, bevor eine empfindliche Verbindung berührt wird. Leitfähige und ableitfähige Materialien erfüllen dabei unterschiedliche Aufgaben. Welche Ausrüstung zulässig ist, wird nicht nach Farbe oder Aussehen entschieden, sondern nach Spezifikation und Prüfung.

### Schutzkette statt Einzelmassnahme

Ein geprüftes Handgelenkband nützt wenig, wenn die Baugruppe auf normalem Kunststoff liegt oder ungeschützt transportiert wird. Umgekehrt ersetzt eine ESD-Matte nicht die korrekte Personenerdung. Erst Verpackung, Transport, Arbeitsplatz, Person, Werkzeug und Lagerung bilden zusammen eine wirksame Schutzkette.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Handhabung unbestückter Leiterplatten und ICs
- Programmierung und Test von MCU-Baugruppen
- Rework und Fehlersuche an empfindlichen Eingängen

In einer konkreten Arbeitssituation wird festgelegt, welche Vorbereitung, Schutzmassnahme, Dokumentation und Qualitätskontrolle erforderlich ist. Der Anwendungsfall gilt erst als beherrscht, wenn das Vorgehen reproduzierbar und für andere nachvollziehbar ist.

## Anschauliches Beispiel

Ein ADC-Kanal zeigt nur bei trockener Luft gelegentliche Sprünge. Ein Vergleich mit einem bekannten guten Board und die Rückverfolgung der Handhabung können einen latenten Eingangsschaden sichtbar machen.

## Berechnungsbeispiel

Das vereinfachte Körpermodell speichert bei `C = 100 pF` und `U = 2000 V` die Energie `E = ½ × 100 pF × (2000 V)² = 0,2 mJ`. Die Energie wirkt in sehr kurzer Zeit auf eine mikroskopisch kleine Struktur; deshalb kann sie trotz des kleinen Zahlenwerts schädigen.

## Praxisbezug

Prüfe Handgelenkband und Arbeitsplatz nach lokaler Anweisung. Dokumentiere Testergebnis, Datum, verwendete Schutzausrüstung und den Weg einer Baugruppe von der Verpackung bis zur geschützten Ablage.

## 🔗 Hardware ↔ Firmware

Latente ESD-Schäden können ADC-Rauschen, Kommunikationsabbrüche oder undefinierte GPIO-Pegel verursachen. Firmware-Logging hilft beim Eingrenzen, beweist aber keine Softwareursache. Board-ID und ESD-Historie gehören deshalb zur Diagnose.

## Merksatz

> ESD-Schutz bringt Person, Werkzeug und Baugruppe kontrolliert auf dasselbe Potential.

## Häufige Fehler und Missverständnisse

- Die Aussenseite eines ESD-Beutels als Arbeitsfläche verwenden.
- Aus «kein Funke sichtbar» auf «keine Entladung» schliessen.
- Handgelenkband ohne Prüfung oder an ungeeigneten Arbeitsplätzen benutzen.

## Zusammenfassung

ESD kann sofortige, latente oder parametrische Schäden verursachen. Ein geprüfter Schutzbereich schafft langsamen, begrenzten Potentialausgleich und eine dokumentierte Handhabung.

## Übungsfragen

1. Warum sind latente Schäden besonders problematisch?
2. Welche Aufgabe hat der Schutzwiderstand?
3. Wann wird eine Baugruppe aus dem ESD-Beutel genommen?

Weitere Aufgaben: [Übungen zu Modul 00](../uebungen/modul-00.md). Die Lösungen liegen bewusst getrennt.

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b3-LK04`, `b3-LK11`, `b3-LK14–15`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
