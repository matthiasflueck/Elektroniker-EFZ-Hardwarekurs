# Labor 00 – Sicherer Messplatz und Freigabecheck

[← Praxisübersicht](README.md) · [Modul 00](../00-kursstart-sicherheit/README.md) · [Kursübersicht](../README.md)

## Ziel

Du richtest einen sicheren SELV-Messplatz ein, konfigurierst Netzgerät und Multimeter korrekt und dokumentierst einen vollständigen Freigabeablauf. Es wird noch keine komplexe Schaltung aufgebaut.

## Material

- galvanisch getrenntes Labornetzgerät, `0…12 V`, mit Strombegrenzung,
- Digitalmultimeter mit intakten Messleitungen,
- `1 kΩ`, mindestens `0.25 W`, sowie rote LED,
- Steckbrett und Leitungen,
- ESD-Ausrüstung, falls ESD-empfindliche Baugruppen verwendet werden,
- Laborjournal.

## Schaltung und Sollwerte

Reihenschaltung: `+5 V → 1 kΩ → rote LED → 0 V`. Mit angenommener LED-Spannung `2.0 V` gilt `I ≈ (5 V - 2 V) / 1 kΩ = 3 mA`. Erwartete Widerstandsleistung: `P ≈ 9 mW`.

## Freigabe

- [ ] Netzgerät aus; `5.00 V` und `10 mA` Stromgrenze vorbereitet.
- [ ] LED-Polarität und Widerstandswert geprüft.
- [ ] Kein Kurzschluss zwischen `+5 V` und `0 V`.
- [ ] DMM für DC-Spannung, rote Leitung in V/Ω-Buchse.
- [ ] Messpunkte: Versorgung, LED und Widerstand; Bezug `0 V`.

## Durchführung

1. Prüfe Netzgerätspannung zunächst **ohne** Schaltung und schalte den Ausgang wieder aus.
2. Baue die Reihenschaltung spannungsfrei auf.
3. Lass den Aufbau freigeben oder dokumentiere den Selbstcheck.
4. Schalte ein und beobachte Stromanzeige. Bei Strombegrenzung sofort wieder aus.
5. Miss Versorgung, LED-Spannung und Widerstandsspannung jeweils gegen `0 V`.
6. Berechne den Strom aus der Widerstandsspannung und vergleiche ihn mit der Netzgerätanzeige.
7. Schalte aus, kontrolliere Spannungsfreiheit und räume geordnet auf.

## Protokolltabelle

| Grösse | Soll | Ist | Messmittel/Bedingung | Bewertung |
|---|---:|---:|---|---|
| Versorgung | `5.00 V ± 2 %` | | | |
| LED-Spannung | ca. `1.7…2.2 V` | | | |
| Widerstandsspannung | ca. `2.8…3.3 V` | | | |
| Strom | ca. `2.8…3.3 mA` | | | |

## Reflexion

Erkläre die Abweichung zur angenommenen LED-Spannung. Notiere, welcher einzelne Bedienfehler beim Multimeter die grösste Kurzschlussgefahr erzeugt und wie dein Arbeitsplatz ihn verhindert.

## Bildungsplan 2026

`a1`, `b4`, `b5`, `d1`, `d2`, `d3`.
