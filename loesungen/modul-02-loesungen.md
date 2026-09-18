# Lösungen – Modul 02

[← Aufgaben](../uebungen/modul-02.md) · [← Modul 02](../02-elektrische-grundgroessen/README.md)

### 1. Ladung, Strom und Spannung erklären

Ladung ist eine positive oder negative Eigenschaft von Materie. Strom beschreibt die bewegte Ladungsmenge pro Zeit in einem geschlossenen Pfad. Spannung beschreibt den Energie- beziehungsweise Potentialunterschied zwischen zwei Punkten.

### 2. Anzahl Elementarladungen

Die Ladungsmenge wird durch den Betrag der Elementarladung geteilt:

$$
N = \frac{Q}{e}
$$

$$
N =
\frac{2\cdot10^{-6}~\mathrm{C}}
     {1.602\cdot10^{-19}~\mathrm{C}}
\approx 1.25\cdot10^{13}
$$

$$
\boxed{N \approx 1.25\cdot10^{13}\ \text{Elementarladungen}}
$$

### 3. Strom aus Ladung und Zeit

$$
I = \frac{\Delta Q}{\Delta t}
$$

$$
I =
\frac{20~\mu\mathrm{C}}
     {5~\mathrm{ms}}
= 4~\mathrm{mA}
$$

$$
\boxed{I = 4~\mathrm{mA}}
$$

### 4. Spannung zwischen zwei Potentialen

Für die Richtung von A nach B gilt:

$$
U_{AB} = \varphi_A-\varphi_B
= 3.3~\mathrm{V}-1.1~\mathrm{V}
= 2.2~\mathrm{V}
$$

Bei vertauschter Messrichtung ändert sich das Vorzeichen:

$$
U_{BA} = \varphi_B-\varphi_A
= 1.1~\mathrm{V}-3.3~\mathrm{V}
= -2.2~\mathrm{V}
$$

$$
\boxed{U_{AB}=2.2~\mathrm{V},\qquad U_{BA}=-2.2~\mathrm{V}}
$$

### 5. Geschlossener Stromkreis

Erwartet werden eine Spannungsquelle, ein geschlossener Hin- und Rückleiter, ein rechteckiges IEC-Widerstandssymbol, der technische Strompfeil von Plus durch R1 nach Minus sowie ein definierter 0-V-Knoten.

### 6. GND, Chassis und PE

GND ist der elektrische Bezug eines Stromkreises, Chassis bezeichnet ein leitfähiges Gehäuse und PE den Schutzleiter. Eine Verbindung wird bewusst nach Schutz- und EMV-Konzept an einem definierten Punkt hergestellt.

### 7. Strom und Leistung am Widerstand

Zuerst wird der Strom berechnet:

$$
I = \frac{U}{R}
= \frac{9~\mathrm{V}}{2.2~\mathrm{k}\Omega}
\approx 4.09~\mathrm{mA}
$$

Danach folgt die Leistung:

$$
P = U\cdot I
= 9~\mathrm{V}\cdot4.09~\mathrm{mA}
\approx 36.8~\mathrm{mW}
$$

$$
\boxed{I\approx4.09~\mathrm{mA},\qquad P\approx36.8~\mathrm{mW}}
$$

### 8. Relative Widerstandsabweichung

$$
\delta_R =
\frac{R_{\mathrm{ist}}-R_{\mathrm{soll}}}
     {R_{\mathrm{soll}}}
\cdot100~\\%
$$

$$
\delta_R =
\frac{9.92~\mathrm{k}\Omega-10.00~\mathrm{k}\Omega}
     {10.00~\mathrm{k}\Omega}
\cdot100~\\%
= -0.8~\\%
$$

$$
\boxed{\delta_R=-0.8~\\%}
$$

Das Minuszeichen zeigt, dass der Messwert unter dem Nennwert liegt.

### 9. Messgeräte korrekt anschliessen

Das Voltmeter wird parallel zwischen zwei Punkten angeschlossen. Das Amperemeter wird in den geöffneten Strompfad eingeschleift. Das Ohmmeter darf nur an einer energiefreien Schaltung verwendet werden; gegebenenfalls wird das Bauteil einseitig getrennt.

### 10. Wirkungsgrad und Verlustleistung

Die zugeführte Leistung beträgt:

$$
P_{\mathrm{zu}} = U\cdot I
= 12~\mathrm{V}\cdot100~\mathrm{mA}
= 1.2~\mathrm{W}
$$

Der Wirkungsgrad ist:

$$
\eta =
\frac{P_{\mathrm{nutz}}}{P_{\mathrm{zu}}}
= \frac{0.9~\mathrm{W}}{1.2~\mathrm{W}}
= 0.75 = 75~\\%
$$

Die Verlustleistung beträgt:

$$
P_{\mathrm{verlust}} =
1.2~\mathrm{W}-0.9~\mathrm{W}
= 0.3~\mathrm{W}
$$

$$
\boxed{\eta=75~\\%,\qquad P_{\mathrm{verlust}}=0.3~\mathrm{W}}
$$

### 11. Fehlersuche bei 0 A

Mögliche Ursachen sind: Quelle ausgeschaltet, Stromkreis offen, falsche DMM-Buchse oder Messfunktion, defekte DMM-Sicherung, Kontaktfehler, falscher Widerstandswert oder aktive Strombegrenzung. Zuerst werden der sichere Gerätezustand und die Versorgung geprüft, danach der Strompfad abschnittsweise.

### 12. Gleiches Symptom bei Hardware- und Firmwarefehler

Ein falscher Pinmodus kann den Ausgangstreiber hochohmig lassen. Eine elektrische Überlast kann dagegen die reale HIGH-Spannung einbrechen lassen. In beiden Fällen bleibt die Last aus. Die Registerprüfung und eine Messung direkt am Pin trennen die Ursachen.
