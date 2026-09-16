# Lösungen – Modul 00

[← Übungen](../uebungen/modul-00.md) · [Lösungsübersicht](README.md) · [Kursübersicht](../README.md)

## Lösung 1

`E = 0.5 · 0.0047 F · (12 V)² = 0.3384 J`, gerundet `0.34 J`. Substitution: kleinere Kapazität oder niedrigere Spannung. Technisch: strombegrenzte Quelle und dimensionierter Entladewiderstand mit Spannungsanzeige. Organisatorisch: definierter Lade-/Entladeablauf und Prüfung vor Berührung. Kurzschliessen erzeugt einen hohen Impulsstrom, Funken und mögliche Bauteil-/Werkzeugschäden; der Zustand ist schlecht kontrollierbar.

## Lösung 2

Ausgang AUS; Spannung auf `0 V`; Stromgrenze berechnen/einstellen; Schaltung spannungsfrei aufbauen; Polarität und Kurzschluss prüfen; Messpunkte vorbereiten; Ausgang einschalten und Spannung langsam erhöhen. Abbruch bei unerwarteter Strombegrenzung, Erwärmung, Geruch/Geräusch, instabiler Spannung oder Überschreitung eines Bauteilgrenzwerts. Änderungen nur energiefrei.

## Lösung 3

Beispiel: „TP3 gegen AGND bei `5.00 V` Versorgung und `1.0 kΩ` Last mit DMM (Eingang ≥ `10 MΩ`) messen. Akzeptanz `3.25…3.35 V`. Versorgung, Last, Geräte-ID und Messwert mit Zeitpunkt protokollieren.“

## Lösung 4

Schema/Stückliste bzw. Abweichungsfreigabe, Änderungsjournal, Baugruppenrevision oder Seriennummernbezug sowie Prüfbericht aktualisieren. Der erfolgreiche Test gehört eindeutig zum as-built-Stand mit `4.7 kΩ`; erst danach kann dieser Stand freigegeben werden.

## Lösung 5

Muster: `LOAD_EN`, Ausgang, aktiv HIGH; externer Gate-Source-Pulldown z. B. `100 kΩ`, sodass die Last während Reset AUS bleibt; zulässiger GPIO-Pegel und Gatewiderstand festlegen; Testpunkt am Gate und optional Strommesspunkt; Firmware setzt den Ausgangswert vor Umschalten auf Ausgang; Fehlerzustand = LOW.

## Lösung 6

Eine vollständige Vorlage enthält mindestens Dokumentkopf (Datum, Person, Auftrag), Hardware-/Firmwareversion, Schema, Geräte mit ID, Gefährdung/Freigabe, Solltabelle, Isttabelle, Rohdatenverweise, Abweichung/Hypothese, Änderung, Wiederholungsmessung und Freigabeentscheid.
