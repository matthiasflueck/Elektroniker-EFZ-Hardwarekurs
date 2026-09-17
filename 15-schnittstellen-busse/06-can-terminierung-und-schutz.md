# 15.6 – CAN, Terminierung und Schutz

[← Zurück](05-rs-485-und-differentielle-uebertragung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-pegelwandler-leitungskapazitaet-und-signalintegritaet.md)

## Lernziele

Nach dieser Lektion kannst du:

- dominanten und rezessiven CAN-Zustand elektrisch erklären
- Terminierung und Buswiderstand prüfen
- Transceiver, Schutz und Massekonzept unterscheiden

## Warum ist das wichtig?

CAN kombiniert differentiellen Bus, Arbitration und robuste Fehlererkennung. Auf der Leiterplatte sieht der Mikrocontroller nur TXD und RXD; die realen Buspegel entstehen im Transceiver und auf der Leitung.

## Theorie

### Dominant gewinnt

Im rezessiven Zustand liegen CANH und CANL nahe beieinander. Dominant treibt der Transceiver CANH höher und CANL tiefer. Mehrere Teilnehmer dürfen dominant senden; deshalb funktioniert bitweise Arbitration ohne zerstörerischen Konflikt.

![CAN-Linienbus mit zwei 120-Ohm-Abschlüssen, Transceivern und Schutz](../bilder/15-schnittstellen-busse/15-06-can-bus.png)

Zwei 120-Ω-Abschlüsse sitzen an den Busenden. Stromlos gemessen ergibt der Bus zwischen CANH und CANL ungefähr 60 Ω, sofern keine zusätzlichen Pfade dominieren. Split-Terminierung kann den Gleichtakt hochfrequent stabilisieren.

### Transceiver und Schutz

Der Transceiver stellt Gleichtaktfestigkeit, Flankensteuerung und oft Standby bereit. TVS-Dioden, Common-Mode-Drossel und ESD-Konzept werden passend zur Umgebung gewählt; Schutzbauteile fügen Kapazität hinzu. Galvanische Trennung benötigt isolierte Versorgung und einen getrennten Bezug.

Bitrate, Buslänge und Stichleitungen begrenzen sich gegenseitig. Fehlerzähler und Bus-off sind Protokollreaktionen, ersetzen aber keine saubere physikalische Schicht.

## Anschauliches Beispiel

In einer Sitzung bedeutet Schweigen «rezessiv». Sobald eine Person deutlich Einspruch erhebt, hören es alle – dominant gewinnt, ohne dass mehrere Einsprechende gegeneinander treiben.

## Berechnungsbeispiel

Zwei 120-Ω-Abschlüsse ergeben 60 Ω. Zeigt die stromlose Messung etwa 40 Ω, liegt wahrscheinlich ein dritter 120-Ω-Abschluss parallel: `1/(1/120 + 1/120 + 1/120) = 40 Ω`.

## Praxisbezug

Miss den stromlosen Buswiderstand. Zeichne CANH, CANL und die Differenz bei dominantem und rezessivem Bit auf. Verändere Terminierung nur an freigegebener Laborhardware.

## 🔗 Hardware ↔ Firmware

Der CAN-Controller behandelt Bit-Timing, Arbitration und Fehlerzähler; der Transceiver erzeugt Buspegel. Bei Bus-off werden sowohl Protokollstatus als auch Versorgung, Abschluss und reale Signalform geprüft.

## Merksatz

> CAN-Protokoll und CAN-Physik sind getrennte Ebenen; Transceiver, Leitung und zwei Abschlüsse erzeugen den messbaren Bus.

## Häufige Fehler und Missverständnisse

- TXD/RXD mit CANH/CANL verwechseln
- Abschluss nach Teilnehmerzahl setzen
- nur CANH gegen GND beurteilen
- Bus-off ausschliesslich als Softwarefehler behandeln

## Zusammenfassung

CAN verwendet dominante und rezessive differentielle Zustände. Topologie, Abschluss, Schutz und Gleichtakt bestimmen die physikalische Zuverlässigkeit.

## Übungsfragen

1. Welcher Zustand gewinnt bei Arbitration?
2. Was bedeutet 40 Ω am stromlosen Bus?
3. Welche Aufgabe hat der Transceiver?
4. Welche Hardware prüfst du bei Bus-off?

Weitere Aufgaben: [Übungen zu Modul 15](../uebungen/modul-15.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `b1-LK01–06`, `b2-LK03–04`, `b4`, `b5`, `c1–c2`, `d9`
- Nachweise: Widerstands- und Differenzmessung eines CAN-Busses; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
