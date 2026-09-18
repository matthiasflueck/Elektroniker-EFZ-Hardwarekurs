# 04.4 – Verlustleistung und Impulsbelastung

[← Zurück](03-temperaturkoeffizient-und-belastbarkeit.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](05-smd-widerstaende-und-potentiometer.md)

## Lernziele

Nach dieser Lektion kannst du:

- Dauerverlustleistung in einem Widerstand berechnen
- Energie und mittlere Leistung eines einfachen Pulses bestimmen
- erklären, weshalb mittlere Leistung allein keine Impulsfreigabe beweist

## Einleitung

Widerstände werden nicht nur durch Dauerstrom belastet. Einschaltvorgänge, Kondensatorentladung, Motorstart oder Schutzpulse können kurzzeitig viel höhere Leistungen erzeugen. Ein Widerstand mit scheinbar ausreichender Nennleistung kann dabei beschädigt werden, obwohl die über viele Sekunden gemittelte Leistung klein ist.

Das Bauteil muss sowohl die thermische Dauerbelastung als auch den einzelnen Puls elektrisch und mechanisch überstehen. Für eine Freigabe sind deshalb Datenblattkurven zur Pulsdauer, Wiederholrate und maximalen Spannung erforderlich.


<!-- context-expansion-2026 -->
Ein Widerstand ist nicht nur ein Zahlenwert in Ohm. Technologie, Toleranz, Temperatur, Spannung, Pulsenergie, Bauform und Alterung entscheiden, ob er seine Aufgabe zuverlässig erfüllt. Widerstandssensoren nutzen dieselben Abhängigkeiten gezielt als Messprinzip.

Beim Thema **Verlustleistung und Impulsbelastung** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Bei der Bauteilauswahl werden Nennwert und Bauform mit den realen Betriebsbedingungen verknüpft. Neben dem Normalbetrieb werden Toleranz, Temperatur, Verlustleistung, kurzzeitige Überlast und Fehlerfall geprüft. Das Datenblatt ist dabei Teil der Schaltungsauslegung.

### Dauerverlustleistung

Elektrische Energie wird im Widerstand überwiegend in Wärme umgewandelt. Für einen ohmschen Widerstand gelten `P = U·I`, `P = I²R` und `P = U²/R`. Verwendet werden jeweils Spannung und Strom am selben Bauteil und im selben Betriebszustand.

Die berechnete Verlustleistung sollte nicht ohne Reserve genau der Nennleistung entsprechen. Umgebungstemperatur, Toleranzen, Lüftung und Leiterplattenaufbau bestimmen die notwendige Reserve.

### Energie eines Rechteckpulses

Während eines konstanten Pulses gilt:

`EP = PP · tP`

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `EP` | Energie eines Pulses | J |
| `PP` | Leistung während des Pulses | W |
| `tP` | Pulsdauer | s |
| `T` | Periodendauer vom Beginn eines Pulses bis zum Beginn des nächsten | s |
| `Pavg` | über eine vollständige Periode gemittelte Leistung | W |

Bei wiederholten identischen Pulsen mit Periodendauer `T` beträgt die idealisierte mittlere Leistung `Pavg = EP/T`. `Pavg` bezeichnet die zeitlich gemittelte Leistung. Diese Rechnung prüft die langfristige Erwärmung, nicht automatisch die lokale Spitzentemperatur oder Spannungsfestigkeit.

![Rechteckpuls mit Pulsleistung, Pulsdauer, Periodendauer und mittlerer Leistung](../bilder/04-widerstaende-sensoren/04-04-impulsbelastung.png)

### Warum Pulse gesondert geprüft werden

Wärme verteilt sich im Widerstand nicht augenblicklich. Ein kurzer starker Puls kann lokal eine Widerstandsschicht beschädigen, bevor das ganze Gehäuse warm wird. Zusätzlich können hohe Spannungen einen Überschlag oder eine bleibende Widerstandsänderung verursachen. Die zulässige Pulsleistung ist daher keine beliebige Vielfache der Dauerleistung.

Datenblätter unterscheiden häufig Einzelpuls und wiederholte Pulse. Für Wiederholbetrieb sind Tastgrad, Abkühlzeit, Zahl der Pulse und Umgebungstemperatur relevant. Fehlt eine passende Spezifikation, darf die Eignung nicht erfunden werden.

### Strommess-Shunt

Ein Shunt setzt Strom in eine kleine Messspannung um. Ein kleiner Wert reduziert Verlustleistung, erzeugt aber ein kleineres Signal. Bei hohen Strömen beeinflussen Leiterbahn- und Kontaktwiderstände das Resultat. Kelvinanschlüsse trennen den Laststrompfad von den Spannungsmessleitungen und vermindern diesen Fehler.

![Shunt mit Laststrompfad und getrennten Kelvin-Messleitungen](../bilder/04-widerstaende-sensoren/04-04-kelvin-shunt.png)


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Einschaltstrombegrenzung und Vorladung
- Brems- und Entladewiderstände
- Snubber und pulsfeste Schutzpfade

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein 0,25-W-Widerstand darf nicht allein deshalb einen 10-W-Puls vertragen, weil dieser nur 1 ms dauert. Die Pulsenergie beträgt zwar nur 10 mJ, doch ob Widerstandsschicht und Anschlussaufbau dies überstehen, zeigt ausschliesslich die passende Impulskurve des konkreten Bauteils.

## Berechnungsbeispiel

Ein 10-Ω-Widerstand führt während 5 ms einen Strom von 1 A. Die Pulsleistung beträgt `PP = 1²·10 Ω = 10 W`, die Energie `EP = 10 W·5 ms = 50 mJ`. Wiederholt sich der Puls alle 500 ms, ergibt sich ideal `Pavg = 50 mJ/0,5 s = 0,10 W`. Trotzdem müssen 10-W-/5-ms-Einzelpulse und Wiederholbetrieb im Datenblatt freigegeben sein.

## Praxisbezug

Für den Laborversuch werden nur Widerstände innerhalb klarer Dauergrenzen betrieben. Pulsversuche erfordern einen freigegebenen Aufbau, Strombegrenzung und geeignete Messgeräte. Temperaturänderungen werden berührungslos oder mit geeignet befestigtem Sensor gemessen; «mit dem Finger testen» ist keine sichere Methode.

## 🔗 Hardware ↔ Firmware

Firmware bestimmt bei PWM Tastgrad, Frequenz und Einschaltzeit. Daraus folgen reale Pulsenergie und mittlere Verlustleistung im Widerstand. Ein Softwarelimit ist nur wirksam, wenn Startzustand, Fehlerfall und Reset berücksichtigt sind. Ein fest verdrahteter Schutz kann erforderlich bleiben.

## Merksatz

> Dauerleistung prüft die langfristige Erwärmung; Pulsfestigkeit muss zusätzlich für Pulsform und Wiederholung belegt sein.

## Häufige Fehler und Missverständnisse

- Nur die mittlere Leistung berechnen und die Spitzenbelastung ignorieren.
- Einzelpulsdaten auf periodischen Betrieb übertragen.
- Nennleistung ohne Derating und thermische Reserve ausnutzen.
- Shuntspannung an stromführenden Lötstellen statt über Kelvinpunkte messen.

## Zusammenfassung

Widerstände müssen Dauerleistung, Pulsenergie, Spitzenspannung und thermische Randbedingungen einhalten. Mittlere Leistung und Einzelpulsbelastung beantworten verschiedene Fragen. Beim Shunt entscheidet zusätzlich eine saubere Anschlussführung über die Messgenauigkeit.

## Übungsfragen

1. Welche Energie enthält ein 4-W-Puls von 20 ms?
2. Warum reicht `Pavg` zur Bauteilfreigabe nicht aus?
3. Was unterscheidet Einzelpuls- von Wiederholpulsbetrieb?
4. Welchen Vorteil bieten Kelvinanschlüsse an einem Shunt?

Weitere Aufgaben: [Übungen zu Modul 04](../uebungen/modul-04.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK01–04`, `b1-LK07`, `b4-LK03`, `b5-LK01–05`
- Nachweise: Leistungs-, Energie- und Datenblattprüfung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
