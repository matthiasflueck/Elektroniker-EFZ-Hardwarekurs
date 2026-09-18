# 03.6 – Innenwiderstand und Ersatzschaltungen

[← Zurück](05-reale-spannungs-und-stromquellen.md) · [Modulübersicht](README.md) · [Kursübersicht](../README.md) · [Weiter →](07-systematische-netzwerkanalyse.md)

## Lernziele

Nach dieser Lektion kannst du:

- ein lineares Zweipolnetzwerk als Thévenin- oder Norton-Ersatzquelle beschreiben
- Ersatzspannung und Ersatzwiderstand bestimmen
- die Grenzen und den praktischen Nutzen einer Ersatzschaltung erklären

## Einleitung

Eine Last «sieht» von aussen oft nur zwei Klemmen. Ob dahinter drei Widerstände, mehrere Quellen oder ein ganzer Schaltungsteil liegen, ist für das Lastverhalten nicht immer relevant. Eine Ersatzschaltung fasst dieses Verhalten in wenigen Grössen zusammen und macht Belastungsrechnungen übersichtlich.

Dabei wird die innere Schaltung nicht als physisch identisch behauptet. Thévenin- und Norton-Modell sind an den betrachteten Klemmen gleichwertig, solange das Netzwerk linear ist und im untersuchten Betriebsbereich bleibt. Für Fehlersuche und Schnittstellendimensionierung ist diese Unterscheidung sehr wertvoll.


<!-- context-expansion-2026 -->
Eine Baugruppe besteht aus verbundenen Quellen, Bauteilen und Lasten. Gleichstromnetzwerke liefern die Regeln, mit denen sich unbekannte Ströme und Spannungen aus Topologie und Bauteilwerten ableiten lassen. Dabei sind Knoten, Maschen und Rückstrompfade ebenso wichtig wie die Zahlenwerte.

Beim Thema **Innenwiderstand und Ersatzschaltungen** geht es deshalb nicht nur um eine einzelne Formel oder Definition. Entscheidend ist, wie sich das Prinzip im Schema erkennen, im Datenblatt beurteilen, im Aufbau messen und bei einer Abweichung systematisch überprüfen lässt.

## Theorie

<!-- theory-expansion-2026 -->
### Einordnung und Grundidee

Netzwerke werden aus Sicht ihrer Topologie gelesen: Bauteile in demselben Strompfad liegen in Reihe, Bauteile an denselben zwei Knoten parallel. Erst danach werden Ersatzwerte, Knotenbilanzen oder Maschengleichungen gebildet. Diese Reihenfolge verhindert viele Vorzeichen- und Zuordnungsfehler.

### Thévenin-Ersatzquelle

Jedes lineare Zweipolnetzwerk aus Quellen und Widerständen lässt sich an zwei Klemmen durch eine ideale Spannungsquelle `UTh` in Reihe mit `RTh` ersetzen. `UTh` ist die Leerlaufspannung an den Klemmen. `RTh` beschreibt, wie stark die Klemmenspannung unter Belastung sinkt.

![Komplexes Zweipolnetzwerk und gleichwertige Thévenin- sowie Norton-Ersatzquelle](../bilder/03-gleichstromnetzwerke/03-06-thevenin-norton.png)

| Formelzeichen | Bedeutung | Einheit |
|---|---|---|
| `UTh` | Thévenin- oder Leerlaufspannung | V |
| `RTh` | Thévenin-Ersatzwiderstand | Ω |
| `IN` | Norton- oder Kurzschlussstrom | A |
| `RN` | Norton-Ersatzwiderstand; bei linearen Netzen `RN = RTh` | Ω |

### Norton-Ersatzquelle

Dasselbe Klemmenverhalten kann als ideale Stromquelle `IN` parallel zu `RN` beschrieben werden. Beide Darstellungen lassen sich umrechnen:

`IN = UTh / RTh`

`UTh = IN · RN`

Welche Form übersichtlicher ist, hängt von der angeschlossenen Schaltung ab. Für eine Serienlast ist Thévenin oft anschaulich; für mehrere parallele Pfade kann Norton günstiger sein.

### Ersatzwiderstand bestimmen

Bei einem Netz aus ausschliesslich unabhängigen Quellen werden diese für die Widerstandsbetrachtung deaktiviert: ideale Spannungsquellen werden kurzgeschlossen, ideale Stromquellen geöffnet. Danach wird der von den Klemmen sichtbare Widerstand berechnet. Das bedeutet nicht, reale Quellen unkontrolliert kurzzuschliessen; es ist ein Rechenschritt am idealen Modell.

Alternativ können zwei Betriebspunkte verwendet werden. Ändert sich der Laststrom um `ΔI` und die Klemmenspannung um `ΔU`, gilt für ein lineares Quellenmodell betragsmässig `RTh = |ΔU/ΔI|`. Das Delta-Zeichen `Δ` bezeichnet die Differenz zwischen zwei Messwerten, nicht einen einzelnen Wert.

Bei abhängigen Quellen dürfen diese nicht deaktiviert werden. Dann wird eine Testspannung oder ein Teststrom an den Klemmen angelegt und das Verhältnis berechnet. Diese Methode wird in späteren Schaltungsmodulen vertieft.

### Gültigkeitsbereich

Eine Ersatzschaltung bewahrt das äussere Strom-Spannungs-Verhalten, nicht interne Leistungen oder einzelne Knotenspannungen. Nichtlineare Bauteile, Strombegrenzung und Temperatur können dazu führen, dass ein einziges lineares Modell nur lokal gilt. Dann müssen Betriebspunkt und Messbereich dokumentiert werden.


## Anwendungsfall

Typische elektronische Anwendungen und Baugruppen für dieses Thema sind:

- Vereinfachung komplexer Sensornetze
- Bestimmung der Belastbarkeit eines Ausgangsknotens
- Vergleich von Thévenin- und Nortonmodell

In einer konkreten Entwicklung wird nicht nur geprüft, ob die gewünschte Funktion grundsätzlich entsteht. Ebenso wichtig sind zulässige Grenzwerte, Toleranzen, Temperatur, Messbarkeit und das Verhalten bei Unterbruch, Kurzschluss oder falscher Ansteuerung.

## Anschauliches Beispiel

Ein Spannungsteiler aus 10 kΩ und 10 kΩ an 10 V wirkt am Mittelabgriff wie eine 5-V-Quelle mit `RTh = 10 kΩ || 10 kΩ = 5 kΩ`. Damit ist sofort sichtbar, warum eine 5-kΩ-Last die Ausgangsspannung auf 2,5 V zieht.

## Berechnungsbeispiel

Für den genannten Teiler ist `UTh = 5 V` und `RTh = 5 kΩ`. Die Nortonquelle hat `IN = 5 V/5 kΩ = 1 mA` und `RN = 5 kΩ`. An einer Last von 15 kΩ ergibt die Thévenin-Darstellung `IL = 5 V/(5 kΩ+15 kΩ) = 0,25 mA`; daher liegen an der Last 3,75 V.

## Praxisbezug

Miss zunächst die Leerlaufspannung eines unbekannten, sicheren Zweipols. Schliesse dann zwei bekannte Lastwiderstände nacheinander an und protokolliere Klemmenspannung sowie Laststrom. Berechne aus der Kennliniensteigung den Innenwiderstand. Prüfe, ob beide Lastpunkte durch dasselbe lineare Modell erklärt werden.

## 🔗 Hardware ↔ Firmware

Ein DAC-, GPIO- oder Sensorsignal kann an der Schnittstelle als Quelle mit Ausgangswiderstand betrachtet werden. Die Firmware legt den logischen oder analogen Sollwert fest; die externe Last bestimmt gemeinsam mit dem Ausgangstreiber den realen Pegel. Das Ersatzmodell hilft zu unterscheiden, ob eine Abweichung durch falschen Sollwert oder elektrische Überlastung entsteht.

## Merksatz

> Eine Ersatzschaltung bildet das Verhalten an festgelegten Klemmen ab – nicht jedes Detail im Inneren.

## Häufige Fehler und Missverständnisse

- Quellen im realen Aufbau statt nur im Rechenmodell «deaktivieren».
- Die Leerlaufspannung mit der belasteten Klemmenspannung verwechseln.
- Eine lineare Ersatzquelle über Strombegrenzung oder nichtlineare Bereiche hinaus verwenden.
- Interne Verlustleistungen aus der Ersatzschaltung ableiten, obwohl nur das Klemmenverhalten gleich ist.

## Zusammenfassung

Thévenin- und Norton-Ersatzquelle beschreiben denselben linearen Zweipol. Leerlaufspannung, Ersatzwiderstand und Kurzschlussstrom verknüpfen beide Darstellungen. Die Methode vereinfacht Lastrechnungen, Schnittstellenanalyse und Messauswertung erheblich.

## Übungsfragen

1. Welche zwei Grössen bestimmen eine Thévenin-Ersatzquelle?
2. Wie werden unabhängige ideale Spannungs- und Stromquellen bei der Widerstandsbestimmung behandelt?
3. Wandle `UTh = 3,3 V` und `RTh = 330 Ω` in eine Nortonquelle um.
4. Welche Information über die innere Schaltung geht bei der Ersatzbildung verloren?

Weitere Aufgaben: [Übungen zu Modul 03](../uebungen/modul-03.md).

## Bezug Bildungsplan 2026

- Handlungskompetenzen: `a3`, `b1-LK02–03`, `b1-LK06`, `b1-LK08`, `b4-LK01`, `b4-LK06–10`
- Nachweise: Zweipolmodell und experimentelle Innenwiderstandsbestimmung; [Kompetenzmatrix](../bildungsplan-2026/kompetenzmatrix.md)
