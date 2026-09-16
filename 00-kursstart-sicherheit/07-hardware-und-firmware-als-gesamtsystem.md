# 00.7 – Hardware und Firmware als Gesamtsystem

[← Zurück](06-technische-dokumentation-und-versionsverwaltung.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](../uebungen/modul-00.md)

## Lernziele

Nach dieser Lektion kannst du die beschriebenen Regeln auf einen realen Laborauftrag anwenden, Risiken und Freigabekriterien begründen sowie deine Arbeit so dokumentieren, dass eine zweite Person sie sicher nachvollziehen kann.

## 1. Eine Funktion durch alle Ebenen verfolgen

Beispiel LED-Ausgang:

```text
Anforderung „Status sichtbar“
  → Firmwarezustand
  → GPIO-Register und Pinmodus
  → Ausgangstreiber im Mikrocontroller
  → Leiterbahn und Steckkontakt
  → LED und Vorwiderstand
  → Strom, Licht und messbare Spannung
```

Ein Fehler kann auf jeder Ebene liegen. Deshalb ist „Softwarefehler“ oder „Hardwarefehler“ zu früh. Zuerst wird eine Grenze gesucht, an der erwartetes und tatsächliches Verhalten auseinanderlaufen.

## 2. Schnittstellenvertrag

Hardware und Firmware benötigen einen gemeinsamen Vertrag:

- Signalname, Pin und Richtung,
- gültige Low-/High-Pegel und maximaler Strom,
- aktive Polarität,
- Zustand während Reset, Boot und Debug-Halt,
- Zeitbedingungen und erlaubte Reihenfolge,
- Diagnosemöglichkeit und sicherer Fehlerzustand.

Ein Tabellenfeld `LED_EN: aktiv LOW, externer Pull-up 10 kΩ, beim Reset AUS` verhindert mehr Fehler als ein Kommentar „LED pin“.

## 3. Start, Betrieb und Fehlerfall

Ein System hat mindestens drei relevante Phasen:

1. **Start:** Versorgungen steigen an, Reset ist aktiv, Pins haben Defaultzustände.
2. **Betrieb:** Firmware konfiguriert Peripherie und überwacht Grenzen.
3. **Fehler:** Clock, Sensor, Kommunikation oder Firmware kann ausfallen.

Die Hardware muss auch in Übergängen definiert bleiben. Ein Gate-Pin ohne Pull-Widerstand kann beim Reset schweben; ein Motor kann kurz anlaufen, obwohl die Betriebsfirmware ihn später korrekt abschaltet.

## 4. Diagnose über Ebenengrenzen

Gute Diagnose kombiniert:

- Firmwarezustand im Debugger oder über Telemetrie,
- Register- und Pinzustand,
- reale Spannung, Strom und Timing am Messpunkt,
- Reaktion der angeschlossenen Last.

Der [STM32-GPIO-Kursabschnitt](https://github.com/matthiasflueck/STM32-Programmierkurs/tree/main/04-gpio) erklärt Register und Pinmodi; hier wird deren elektrische Wirkung gemessen.

## 5. Fail-safe und Diagnosefähigkeit

Ein sicherer Zustand muss durch Schaltung und Firmware gemeinsam definiert sein. Pull-Widerstände, Enable-Signale, Strombegrenzung und Watchdog bilden unterschiedliche Schutzebenen. Testpunkte, Strommesswiderstände und klare Signalnamen verbessern Diagnosefähigkeit, kosten aber Fläche und müssen geplant werden.

## Merksatz

**Die Funktion endet nicht am Pin und der Fehler beginnt nicht automatisch im Code.**


## Bildungsplan 2026

Dieses Thema unterstützt `a1` (Anforderungen erfassen), `d1` (Aufträge planen), `d2` (Verlauf kontrollieren) und `d3` (Ergebnisse auswerten). Sicherheits-, Qualitäts- und Dokumentationsregeln wirken zusätzlich in allen Hardwarekompetenzen `b1–b5`.

## Kurzcheck

1. Welche Information muss vor dem Einschalten feststehen?
2. Woran erkennt eine zweite Person den tatsächlich geprüften Stand?
3. Welche Hardwareeigenschaft kann sich in der Firmware als scheinbar zufälliger Fehler zeigen?
