# 01.3 – Formeln verstehen und sicher umstellen

[← Zurück](02-zehnerpotenzen-und-wissenschaftliche-schreibweise.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](04-prozentrechnung-abweichung-und-toleranz.md)

## Lernziele

Nach dieser Lektion kannst du:

- Variablen, Gleichheitszeichen und Gültigkeitsbedingungen erklären
- Formeln schrittweise nach einer gesuchten Grösse umstellen
- das Resultat mit Einheiten und Rückeinsetzen prüfen

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02`, `b4`, `b5`
- Nachweise und Leistungskriterien: [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)

## Voraussetzungen

Vorherige Lektionen dieses Moduls.

## Warum ist das wichtig?

Eine Formel ist eine verdichtete Aussage über einen Zusammenhang. Wer sie nur als Zahlenrezept benutzt, übersieht leicht, wann sie gilt und was sich physikalisch ändert. Sicheres Umstellen beginnt deshalb mit einer sprachlichen Beschreibung.

## Theorie

### Gleichgewicht erhalten

Das Gleichheitszeichen bedeutet, dass links und rechts derselbe Wert steht. Jede zulässige Rechenoperation wird auf beiden Seiten ausgeführt. Ziel ist, die gesuchte Variable allein stehen zu lassen.

### Beispiel Ohmsches Gesetz

Die Aussage `U = R · I` bedeutet: Bei konstantem Widerstand steigt die Spannung proportional zum Strom. Gesucht sei I. Beide Seiten werden durch R geteilt: `U/R = R·I/R`, also `I = U/R`.

### Bedingungen und Symbole

Vor dem Einsetzen werden Symbole, Einheiten und Modellgrenzen notiert. Das Ohmsche Gesetz in dieser Form beschreibt einen ohmschen Widerstand bei hinreichend konstanter Temperatur; es ist nicht die Kennlinie jeder LED oder Diode.

## Anschauliches Beispiel

Die bekannte Beziehung wird als Waage vorgestellt. Multiplizierst du nur eine Seite mit 2, kippt die Waage. Führst du dieselbe Operation auf beiden Seiten aus, bleibt die Gleichheit erhalten.

## Berechnungsbeispiel

Aus `P = U · I` soll U bestimmt werden. Division beider Seiten durch I ergibt `U = P/I`. Mit `P = 0,50 W` und `I = 0,10 A` folgt `U = 5,0 V`. Rückprüfung: `5,0 V × 0,10 A = 0,50 W`.

## Praxisbezug

Stelle `U = R·I`, `P = U·I` und `η = P_out/P_in` jeweils nach jeder vorkommenden Grösse um. Schreibe jeden Rechenschritt aus.

## 🔗 Hardware ↔ Firmware

Firmwareformeln für ADC-Skalierung oder Timerperioden folgen denselben Regeln. Integerdivision, Rundung und Einheitenskalierung können jedoch zusätzliche Abweichungen erzeugen; das mathematische Modell und die Implementierung werden getrennt geprüft.

## Merksatz

> Was du auf einer Seite der Gleichung tust, musst du auf der anderen ebenfalls tun.

## Häufige Fehler und Missverständnisse

- Variablen beim «Herüberbringen» ohne nachvollziehbare Operation vertauschen.
- Einheiten erst am Schluss ergänzen.
- Eine Formel ausserhalb ihres Gültigkeitsbereichs verwenden.

## Zusammenfassung

Formeln beschreiben Bedingungen und Zusammenhänge. Systematisches Umstellen, Einheitenkontrolle und Rückeinsetzen machen den Rechenweg überprüfbar.

## Übungsfragen

1. Stelle `E = P·t` nach t um.
2. Warum ist Rückeinsetzen nützlich?
3. Welche Bedingung gilt beim ohmschen Widerstand?

Weitere Aufgaben: [Übungen zu Modul 01](../uebungen/modul-01.md). Die Lösungen liegen bewusst getrennt.
