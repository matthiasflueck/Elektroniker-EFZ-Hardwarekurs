# Lösungen – Modul 03: Gleichstromnetzwerke und Netzwerkanalyse

[← Übungen](../uebungen/modul-03.md) · [Lösungsübersicht](README.md)

Die Rechenwege zeigen eine mögliche saubere Lösung. Abweichende Rundungen oder andere korrekte Verfahren sind zulässig, wenn Annahmen und Einheiten dokumentiert sind.

## 1 – Parallele Topologie

Drei Widerstände liegen genau dann parallel, wenn jeder erste Anschluss am gleichen Knoten A und jeder zweite Anschluss am gleichen Knoten B liegt. Ihre zeichnerische Ausrichtung ist bedeutungslos. Über allen drei Widerständen liegt dann dieselbe Spannung $U_{AB}$.

## 2 – Kleiner Parallelersatz

Jeder zusätzliche Parallelzweig bietet einen weiteren Leitpfad. Bei gleicher Klemmenspannung steigt dadurch der Gesamtstrom. Es gilt:

$$
R_{\mathrm{eq}} =
\frac{U}{I_{\mathrm{ges}}}
$$

Wenn der Gesamtstrom bei gleicher Spannung zunimmt, muss der Ersatzwiderstand sinken. Er ist kleiner als der kleinste Einzelwiderstand, solange alle Zweigwiderstände positiv und endlich sind.

## 3 – Knotenbilanz

Mit der Vorzeichenkonvention «zufliessend positiv, abfliessend negativ» gilt:

$$
8.2~\mathrm{mA}
+1.8~\mathrm{mA}
-4.0~\mathrm{mA}
-3.5~\mathrm{mA}
-I_5 = 0
$$

Nach $I_5$ aufgelöst:

$$
I_5 =
8.2~\mathrm{mA}
+1.8~\mathrm{mA}
-4.0~\mathrm{mA}
-3.5~\mathrm{mA}
$$

$$
\boxed{I_5 = 2.5~\mathrm{mA}}
$$

Kontrolle: **10.0 mA** fliessen in den Knoten hinein und **10.0 mA** hinaus.

## 4 – Ersatzwiderstände

### Reihenschaltung

$$
R_{\mathrm{eq,R}} =
220~\Omega+330~\Omega+1000~\Omega
$$

$$
\boxed{R_{\mathrm{eq,R}} = 1550~\Omega = 1.55~\mathrm{k}\Omega}
$$

### Parallelschaltung

$$
\frac{1}{R_{\mathrm{eq,P}}} =
\frac{1}{220~\Omega}
+\frac{1}{330~\Omega}
+\frac{1}{1000~\Omega}
$$

$$
\boxed{R_{\mathrm{eq,P}} \approx 116.6~\Omega}
$$

Der Parallelersatz liegt unter **220 Ω** und ist damit plausibel.

## 5 – Gemischtes Netzwerk

Zuerst wird der Parallelzweig aus $R_2$ und $R_3$ ersetzt:

$$
R_{23} =
\frac{2.2~\mathrm{k}\Omega\cdot3.3~\mathrm{k}\Omega}
     {2.2~\mathrm{k}\Omega+3.3~\mathrm{k}\Omega}
=
1.32~\mathrm{k}\Omega
$$

Der Gesamtwiderstand beträgt:

$$
R_{\mathrm{ges}} =
1.0~\mathrm{k}\Omega+1.32~\mathrm{k}\Omega =
2.32~\mathrm{k}\Omega
$$

Damit fliesst:

$$
I_{\mathrm{ges}} =
\frac{12~\mathrm{V}}
     {2.32~\mathrm{k}\Omega}
\approx 5.172~\mathrm{mA}
$$

Der Spannungsabfall an $R_1$ ist:

$$
U_{R1} =
5.172~\mathrm{mA}\cdot1.0~\mathrm{k}\Omega =
5.172~\mathrm{V}
$$

Die Knotenspannung am Parallelzweig beträgt:

$$
U_K =
12~\mathrm{V}-5.172~\mathrm{V} =
6.828~\mathrm{V}
$$

Die Zweigströme sind:

$$
I_2 =
\frac{6.828~\mathrm{V}}
     {2.2~\mathrm{k}\Omega}
\approx 3.103~\mathrm{mA}
$$

$$
I_3 =
\frac{6.828~\mathrm{V}}
     {3.3~\mathrm{k}\Omega}
\approx 2.069~\mathrm{mA}
$$

Knotenkontrolle:

$$
3.103~\mathrm{mA}+2.069~\mathrm{mA}
=
5.172~\mathrm{mA}
$$

Die Widerstandsleistungen betragen gerundet:

$$
P_{R1} \approx 26.75~\mathrm{mW}
$$

$$
P_{R2} \approx 21.18~\mathrm{mW}
$$

$$
P_{R3} \approx 14.13~\mathrm{mW}
$$

Damit:

$$
P_{\mathrm{Last}} \approx 62.06~\mathrm{mW}
$$

Die Quelle liefert:

$$
P_Q =
12~\mathrm{V}\cdot5.172~\mathrm{mA}
\approx 62.07~\mathrm{mW}
$$

Die kleine Differenz entsteht durch Rundung.

$$
\boxed{I_{\mathrm{ges}}\approx5.172~\mathrm{mA},\quad U_K\approx6.828~\mathrm{V}}
$$

$$
\boxed{I_2\approx3.103~\mathrm{mA},\quad I_3\approx2.069~\mathrm{mA}}
$$

## 6 – Spannungsteiler dimensionieren

Für **3 V aus 15 V** wird ein Teilverhältnis von **0.2** benötigt. Aus dem geforderten Teilerstrom folgt für den Gesamtwiderstand:

$$
R_{\mathrm{ges,min}} =
\frac{15~\mathrm{V}}
     {200~\mu\mathrm{A}}
=
75~\mathrm{k}\Omega
$$

$$
R_{\mathrm{ges,max}} =
\frac{15~\mathrm{V}}
     {100~\mu\mathrm{A}}
=
150~\mathrm{k}\Omega
$$

Eine mögliche E24-Wahl ist:

$$
R_1 = 82~\mathrm{k}\Omega
\qquad
R_2 = 20~\mathrm{k}\Omega
$$

Der Teilerstrom beträgt:

$$
I =
\frac{15~\mathrm{V}}
     {102~\mathrm{k}\Omega}
\approx147.1~\mu\mathrm{A}
$$

Die Ausgangsspannung ist:

$$
U_{\mathrm{out}} =
15~\mathrm{V}
\frac{20~\mathrm{k}\Omega}
     {82~\mathrm{k}\Omega+20~\mathrm{k}\Omega}
\approx2.941~\mathrm{V}
$$

Die relative Abweichung vom Zielwert beträgt:

$$
\delta =
\frac{2.941~\mathrm{V}-3.0~\mathrm{V}}
     {3.0~\mathrm{V}}
\cdot100~\%
\approx -1.96~\%
$$

$$
\boxed{U_{\mathrm{out}}\approx2.941~\mathrm{V},\qquad I\approx147.1~\mu\mathrm{A}}
$$

Andere begründete E24-Kombinationen sind ebenfalls möglich.

## 7 – Belasteter Teiler

Mit $R_L=47~\mathrm{k}\Omega$ wird der untere Zweig:

$$
R_{2L} =
20~\mathrm{k}\Omega\parallel47~\mathrm{k}\Omega
=
\frac{20\cdot47}{20+47}~\mathrm{k}\Omega
\approx14.03~\mathrm{k}\Omega
$$

Damit folgt:

$$
U_{\mathrm{out,bel}} =
15~\mathrm{V}
\frac{14.03~\mathrm{k}\Omega}
     {82~\mathrm{k}\Omega+14.03~\mathrm{k}\Omega}
\approx2.192~\mathrm{V}
$$

Gegenüber dem Leerlaufwert von **2.941 V** beträgt die Abweichung:

$$
\delta =
\frac{2.192~\mathrm{V}-2.941~\mathrm{V}}
     {2.941~\mathrm{V}}
\cdot100~\%
\approx-25.5~\%
$$

$$
\boxed{U_{\mathrm{out,bel}}\approx2.192~\mathrm{V},\qquad \delta\approx-25.5~\%}
$$

Die starke Abweichung ist plausibel, weil die Last nicht deutlich grösser als der Ausgangswiderstand des Teilers ist.

## 8 – Stromteiler

Die Leitwerte betragen näherungsweise:

$$
G_{470} = \frac{1}{470~\Omega}\approx2.128~\mathrm{mS}
$$

$$
G_{1k} = \frac{1}{1.0~\mathrm{k}\Omega}=1.000~\mathrm{mS}
$$

$$
G_{2.2k} = \frac{1}{2.2~\mathrm{k}\Omega}\approx0.455~\mathrm{mS}
$$

Damit:

$$
G_{\mathrm{ges}}\approx3.582~\mathrm{mS}
$$

Mit

$$
I_k =
I_{\mathrm{ges}}
\frac{G_k}{G_{\mathrm{ges}}}
$$

folgen die Zweigströme:

$$
I_{470}\approx11.88~\mathrm{mA}
$$

$$
I_{1k}\approx5.58~\mathrm{mA}
$$

$$
I_{2.2k}\approx2.54~\mathrm{mA}
$$

Kontrolle:

$$
11.88~\mathrm{mA}+5.58~\mathrm{mA}+2.54~\mathrm{mA}
=
20.00~\mathrm{mA}
$$

$$
\boxed{I_{470}\approx11.88~\mathrm{mA},\quad I_{1k}\approx5.58~\mathrm{mA},\quad I_{2.2k}\approx2.54~\mathrm{mA}}
$$

Der kleinste Widerstand führt den grössten Strom.

## 9 – Reale Quelle

Der Spannungseinbruch zwischen Leerlauf und Last beträgt:

$$
\Delta U =
9.10~\mathrm{V}-8.70~\mathrm{V} =
0.40~\mathrm{V}
$$

Im linearen Modell ist der Innenwiderstand:

$$
R_i =
\frac{\Delta U}{I}
=
\frac{0.40~\mathrm{V}}
     {0.040~\mathrm{A}}
=
10~\Omega
$$

Bei **70 mA** beträgt der interne Spannungsabfall:

$$
U_i =
0.070~\mathrm{A}\cdot10~\Omega =
0.70~\mathrm{V}
$$

Damit:

$$
U_K =
9.10~\mathrm{V}-0.70~\mathrm{V} =
8.40~\mathrm{V}
$$

$$
\boxed{R_i=10~\Omega,\qquad U_K(70~\mathrm{mA})=8.40~\mathrm{V}}
$$

Die Vorhersage gilt nur, solange das Verhalten im betrachteten Bereich annähernd linear bleibt. Strombegrenzung, Ladezustand, Erwärmung oder chemische Dynamik einer Batterie können das Modell ungültig machen.

## 10 – Thévenin und Norton

Die Leerlaufspannung am Mittelabgriff beträgt:

$$
U_{\mathrm{Th}} =
10~\mathrm{V}
\frac{12~\mathrm{k}\Omega}
     {18~\mathrm{k}\Omega+12~\mathrm{k}\Omega}
=
4.00~\mathrm{V}
$$

Bei deaktivierter idealer Spannungsquelle liegen beide Widerstände parallel:

$$
R_{\mathrm{Th}} =
18~\mathrm{k}\Omega\parallel12~\mathrm{k}\Omega =
7.20~\mathrm{k}\Omega
$$

Die Nortonquelle besitzt:

$$
I_N =
\frac{4.00~\mathrm{V}}
     {7.20~\mathrm{k}\Omega}
\approx0.556~\mathrm{mA}
$$

$$
R_N = R_{\mathrm{Th}} = 7.20~\mathrm{k}\Omega
$$

$$
\boxed{U_{\mathrm{Th}}=4.00~\mathrm{V},\quad R_{\mathrm{Th}}=7.20~\mathrm{k}\Omega}
$$

$$
\boxed{I_N\approx0.556~\mathrm{mA},\quad R_N=7.20~\mathrm{k}\Omega}
$$

## 11 – Belastung durch Voltmeter

Das Voltmeter liegt parallel zum unteren **1-MΩ-Widerstand**. Der wirksame untere Widerstand beträgt:

$$
R_{2L} =
1~\mathrm{M}\Omega\parallel10~\mathrm{M}\Omega
\approx0.909~\mathrm{M}\Omega
$$

Damit zeigt das Voltmeter:

$$
U_{\mathrm{out}} =
10~\mathrm{V}
\frac{0.909~\mathrm{M}\Omega}
     {1~\mathrm{M}\Omega+0.909~\mathrm{M}\Omega}
\approx4.76~\mathrm{V}
$$

$$
\boxed{U_{\mathrm{out}}\approx4.76~\mathrm{V}}
$$

Die Anzeige ist für die belastete Schaltung korrekt. Ein ideales Messgerät mit unendlichem Eingangswiderstand würde **5.00 V** anzeigen.

## 12 – Fehlerhypothesen

Mögliche Ursachen sind unterschiedliche Betriebszustände, falsche Messbuchse oder Messfunktion, Amperemeter parallel statt in Serie, vertauschte Zuordnung der Messwerte, ein unberücksichtigter weiterer Zweig oder eine ausgelöste Gerätesicherung. Sinnvolle Reihenfolge: Schaltung spannungsfrei prüfen, Messleitungen und Buchsen kontrollieren, Aufbau mit Schema vergleichen, Versorgung reproduzierbar einstellen und Messungen einzeln wiederholen. Erst danach werden Bauteile ersetzt.

## 13 – Messschema

Die Spannung wird jeweils zwischen einem benannten Knoten und GND beziehungsweise direkt über dem Bauteil gemessen. Der Gesamtstrom kann über den Spannungsabfall an $R_1$ bestimmt werden:

$$
I_{\mathrm{ges}} =
\frac{U_{R1}}{R_1}
$$

Die Zweigströme folgen entsprechend aus den Spannungsabfällen an $R_2$ und $R_3$. Dadurch muss der Strompfad nicht für jede Messung aufgetrennt werden. Widerstandswerte werden nur im spannungsfreien Zustand gemessen.

## 14 – ADC-Teiler

Ideal gilt:

$$
U_{\mathrm{ADC}} =
12~\mathrm{V}
\frac{33~\mathrm{k}\Omega}
     {100~\mathrm{k}\Omega+33~\mathrm{k}\Omega}
\approx2.977~\mathrm{V}
$$

$$
\boxed{U_{\mathrm{ADC}}\approx2.977~\mathrm{V}}
$$

Reale Abweichungen können durch Widerstandstoleranz, ADC-Referenzfehler, zu hohe Quellimpedanz bei kurzer Abtastzeit, Eingangsschutz-Leckstrom, Versorgungsschwankung, Quantisierung, Masseabfall und einen falschen Skalierungsfaktor in der Firmware entstehen. Zusätzlich muss geprüft werden, ob der Eingang bei maximaler 12-V-Signalspannung sicher unter seiner zulässigen Grenze bleibt.
