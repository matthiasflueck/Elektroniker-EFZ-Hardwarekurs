# Labor 03 – Reale Quelle als Ersatzschaltung bestimmen

[← Praxisübersicht](README.md) · [Modul 03](../03-netzwerkanalyse/README.md) · [Kursübersicht](../README.md)

> **Ausbaustatus:** Labor-Skelett. Vor der Durchführung werden Schaltung, Grenzwerte, Stückliste und erwartete Messwerte in der Ausbauphase vollständig freigegeben.

## Ziel

Die Inhalte aus **Netzwerkanalyse und Ersatzschaltungen** werden aufgebaut, gemessen, beurteilt und nachvollziehbar dokumentiert.

## Sicherheitsfreigabe vor dem Einschalten

- [ ] Energiequelle und maximale Spannung sind festgelegt.
- [ ] Strombegrenzung ist berechnet und eingestellt.
- [ ] Massebezug und zulässige Messkategorie sind geklärt.
- [ ] Polaritäten, Bauteilgrenzen und Kurzschlussfreiheit sind geprüft.
- [ ] Oszilloskop-Masse kann keinen unbeabsichtigten Kurzschluss erzeugen.

## Geplanter Ablauf

1. Schaltung und Messpunkte aus dem Schema ableiten.
2. Erwartete Werte mit Toleranzen berechnen.
3. Spannungsfrei aufbauen und Sicht-/Durchgangsprüfung ausführen.
4. Mit Strombegrenzung stufenweise in Betrieb nehmen.
5. Messwerte mit Bedingungen und Unsicherheit protokollieren.
6. Soll-Ist-Abweichungen begründen und Änderungen nachführen.

## Hardware ↔ Firmware

Wo ein Mikrocontroller beteiligt ist, werden Pinzustände, Startreihenfolge, Grenzwerte, Diagnoseausgaben und Fail-Safe-Verhalten vorab festgelegt. Firmware darf keine unsichere Hardwarekonfiguration erzeugen.

## Bildungsplan 2026

`a3`, `b1`, `b4`, `b5`
