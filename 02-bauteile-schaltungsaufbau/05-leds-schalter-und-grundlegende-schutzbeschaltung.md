# 02.5 – LEDs, Schalter und grundlegende Schutzbeschaltung

[← Zurück](04-induktivitaeten-magnetfeld-und-abschaltenergie.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](06-steckbrett-leitungsfuehrung-und-parasitaere-effekte.md)

## Lernziele

Nach dieser Lektion kannst du Funktion, Grenzwerte und reale Nichtidealitäten der behandelten Bauteile erklären, sie im Schema und Aufbau sicher zuordnen und ihr Verhalten mit geeigneten Messmitteln prüfen.

## 1. LED ist kein Widerstand

Eine LED besitzt eine nichtlineare Kennlinie. Kleine Spannungsänderungen können grosse Stromänderungen verursachen; deshalb wird der Strom begrenzt. Für eine einfache Reihenschaltung:

$$R = \frac{U_Q-U_F}{I_F}.$$

Bei `5 V`, roter LED mit angenommener `UF = 2.0 V` und `5 mA` ergibt sich `R = 600 Ω`; ein Normwert `620 Ω` liefert etwa `4.8 mA`. `UF` streut und hängt von Strom und Temperatur ab.

## 2. Polarität und Grenzwerte

Anode und Kathode werden über Datenblatt, Gehäusemerkmal und Schema geprüft. Die zulässige Sperrspannung vieler LEDs ist klein. Absolute Grenzwerte sind keine Betriebswerte; Strom wird mit Reserve ausgelegt.

## 3. Schalter und Taster

Ein mechanischer Kontakt prellt: Während weniger Millisekunden entstehen mehrere Übergänge. Hardware kann mit RC/Schmitt-Trigger filtern; Firmware kann zeitlich entprellen. Offene Eingänge brauchen einen definierten Pull-Widerstand.

## 4. Grundschutz

Typische Schutzideen:

- Serienwiderstand begrenzt Fehlerstrom,
- Verpolschutz verhindert Strom in falscher Richtung,
- Freilaufdiode nimmt Induktivstrom auf,
- TVS begrenzt kurze Überspannungsimpulse,
- Sicherung oder elektronische Begrenzung trennt bei Überstrom.

Schutzbauteile werden nach Energie, Spannung, Strom und Fehlerfall dimensioniert. Eine Diode „irgendwie parallel“ kann selbst den Kurzschluss verursachen.

## Hardware ↔ Firmware

Die aktive Polarität der LED muss im Signalnamen und Treiber abgebildet sein. Für Tasterentprellung braucht Firmware eine definierte Abtastrate und Zustandslogik. Der [STM32-GPIO-Praxisabschnitt](https://github.com/matthiasflueck/STM32-Programmierkurs/blob/main/04-gpio/05-gpio-praxis-und-debugging.md) zeigt den Softwarezugriff; hier werden Pegel und Strom gemessen.

## Beispiel

Ein GPIO mit `3.3 V` treibt eine LED mit `UF = 2.1 V` über `330 Ω`: ideal `3.64 mA`. Ausgangsspannung unter Last und LED-Streuung verändern den realen Strom; er wird über Widerstandsspannung bestimmt.


## Bildungsplan 2026

Primär: `b1`, `b3`, `b4`, `b5`; je nach Aufbau zusätzlich Anforderungen und Machbarkeit aus `a1–a3`.

## Kurzcheck

1. Welche Energie oder Zustandsgrösse kann dieses Bauteil speichern oder beeinflussen?
2. Welcher Datenblattwert begrenzt den sicheren Betrieb?
3. Wie unterscheidest du Bauteilfehler, Aufbaufehler und falsche Messung?
