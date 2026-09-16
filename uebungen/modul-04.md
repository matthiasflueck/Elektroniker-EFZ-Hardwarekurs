# Übungen – Modul 04: Widerstände und Widerstandssensoren

[← Modul 04](../04-widerstaende-sensoren/README.md) · [Übungsübersicht](README.md)

Verwende bei Datenblattaufgaben ein tatsächlich verfügbares Herstellerdatenblatt und notiere Hersteller, Baureihe sowie Dokumentstand. Wo hier Beispielwerte vorgegeben sind, gelten sie nur für die jeweilige Aufgabe.

## Bauteilauswahl und Normwerte

1. Erkläre den Unterschied zwischen Dickschicht-, Dünnschicht- und Drahtwiderstand. Nenne je eine sinnvolle Anwendung und eine zu prüfende Grenze.
2. Wähle aus E12 und E24 jeweils den nächstliegenden Wert zu 3,18 kΩ. Berechne die relative Wertabweichung.
3. Ein LED-Strom darf auch im ungünstigsten Fall 8 mA nicht überschreiten. Gegeben: Versorgung 5,0 V ±3 %, LED-Flussspannung minimal 1,8 V, Widerstand ±5 %. Bestimme einen geeigneten E12-Nennwert und prüfe dessen maximale Verlustleistung.

## Toleranz und Temperatur

4. Bestimme die Grenzen eines 47-kΩ-Widerstands mit ±1 %. Ergänze eine lineare Temperaturdrift von ±50 ppm/K über eine Änderung von +60 K als konservative zusätzliche Grenze.
5. Ein 1:1-Spannungsteiler besteht aus zwei unabhängigen 10-kΩ-Widerständen mit ±1 %. Berechne minimale und maximale Ausgangsspannung bei exakt 5,000 V Eingang.
6. Ein 10,000-kΩ-Widerstand besitzt `α = 25 ppm/K`. Berechne seinen angenäherten Wert bei −20 °C und 85 °C, bezogen auf 25 °C.

## Leistung, Bauform und Identifikation

7. Ein 1-kΩ-Widerstand liegt dauerhaft an 24 V. Berechne die Leistung. Begründe, weshalb die reine Wattzahl für die Auswahl noch nicht genügt.
8. Ein 22-Ω-Widerstand führt 2 A während 2 ms, wiederholt alle 200 ms. Berechne Pulsleistung, Pulsenergie, Tastgrad und mittlere Leistung. Welche Datenblattnachweise fehlen noch?
9. Deute die üblichen SMD-Codes `221`, `4992`, `0R47` und `000`. Nenne zwei Gründe, warum das Ergebnis am realen Bauteil trotzdem verifiziert werden muss.
10. Ein lineares 20-kΩ-Potentiometer steht bei 40 % vom unteren Ende und wird mit 10 kΩ gegen GND belastet. Berechne bei 5 V die unbelastete und belastete Schleiferspannung.

## Sensoren, Messung und Firmware

11. Ein 10-kΩ-NTC liegt unten in einem Teiler mit 10 kΩ oben an 3,3 V. Sein Widerstand sinkt von 10 kΩ auf 4 kΩ. Berechne beide Ausgangsspannungen und beschreibe die Signalrichtung.
12. Plane eine NTC-Kennlinienmessung bei mindestens fünf Temperaturpunkten. Nenne Messmittel, Stabilitätskriterium, Massnahmen gegen Eigenerwärmung und erforderliche Protokolldaten.
13. Ein LDR liegt oben und ein 10-kΩ-Festwiderstand unten. Berechne `U_out` bei 3,3 V für 2 kΩ, 10 kΩ und 100 kΩ LDR-Widerstand. Schlage zwei ADC-Grenzen für Leitungsdiagnose vor und begründe sie.
14. Beschreibe die vollständige Kette vom NTC über Spannungsteiler und ADC bis zur Temperaturanzeige. Ordne mindestens sechs mögliche Abweichungen entweder Hardware, Firmware oder beiden Bereichen zu.

> [Separate Lösungen](../loesungen/modul-04-loesungen.md)
