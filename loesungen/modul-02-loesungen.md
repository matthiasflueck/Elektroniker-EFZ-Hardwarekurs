# Lösungen – Modul 02

[← Übungen](../uebungen/modul-02.md) · [Lösungsübersicht](README.md) · [Kursübersicht](../README.md)

## Lösung 1

Offen fliesst ideal kein Tasterstrom; Pull-up setzt `BUTTON_N` auf HIGH. Gedrückt entsteht `3.3 V → 10 kΩ → Taster → GND`, rund `0.33 mA`; Pegel LOW. Das Signal ist aktiv LOW, Firmware meldet „gedrückt“, wenn der Eingang LOW ist.

## Lösung 2

Worst Case für maximalen Strom nutzt kleinste LED-Spannung: `R ≥ (3.3-2.0)/4 mA = 325 Ω`; Auswahl `330 Ω`. Mit `UF = 2.0 V`: `3.94 mA`; mit `2.4 V`: `2.73 mA`. Maximale Widerstandsleistung ungefähr `I²R = 5.1 mW`; GPIO-Ausgangsspannung unter Last und Datenblattgrenzen zusätzlich prüfen.

## Lösung 3

`τ = 4700 · 22 µF = 0.1034 s`. Nach `1τ`: `0.632·5 = 3.16 V`; nach `3τ`: etwa `0.950·5 = 4.75 V`; `99 %` ungefähr nach `5τ ≈ 0.52 s`.

## Lösung 4

Kapazität bei Bias, Nennspannung/Derating, Toleranz, Temperaturbereich, ESR, ESL/Eigenresonanz, Leckstrom, Bauform, Ripple-Strom, Alterung. Klasse-2-Keramik verliert durch DC-Bias und Temperatur/Kapazitätscharakteristik wirksame Kapazität; Diagramme im Datenblatt sind massgeblich.

## Lösung 5

`E = 0.5·0.08·0.15² = 0.0009 J = 0.9 mJ`. Die Diode ist im eingeschalteten Zustand gesperrt und leitet beim Ausschalten den Spulenstrom im Kreis weiter. Sie begrenzt die Spannung auf ungefähr eine Diodenflussspannung, verlangsamt dadurch aber den Stromabbau und das Relaisabfallen.

## Lösung 6

Der Generator besitzt etwa `50 Ω` Quellwiderstand und bezieht die Anzeige auf eine angepasste `50-Ω`-Last. Ohne Abschluss fällt intern kaum Spannung ab, daher nahezu doppelte Leerlaufamplitude. Dokumentieren: Kanal, Messpunkt/Bezug, Tastkopf und Faktor, V/div, s/div, DC/AC-Kopplung, Bandbreitenlimit, Triggerquelle/-flanke/-pegel sowie Generatorfrequenz, Form, Offset und Lastmodus.

## Lösung 7

Beispielpriorität: Generator nicht aktiv/falsch konfiguriert → Eingang direkt messen; fehlende gemeinsame Masse → Durchgang/Bezug prüfen; falsche Steckbrettreihe/Unterbruch → energiefrei netzweise prüfen; Kondensator kurzgeschlossen/falsch eingesetzt → energiefrei trennen und prüfen; Tastkopf/ Kanal falsch → Kalibriersignal messen. Jede Prüfung soll eine Hypothese klar bestätigen oder verwerfen.
