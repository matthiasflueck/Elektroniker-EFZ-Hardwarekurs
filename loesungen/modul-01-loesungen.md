# Lösungen – Modul 01

[← Aufgaben](../uebungen/modul-01.md) · [← Modul 01](../01-mathematik-physik/README.md)

### 1. Präfixe in Zehnerpotenzen umrechnen

Die Präfixe werden durch die entsprechenden Zehnerpotenzen ersetzt:

$$
\boxed{4.7~\mathrm{M}\Omega=4.7\cdot10^6~\Omega}
$$

$$
\boxed{330~\mu\mathrm{A}=330\cdot10^{-6}~\mathrm{A}=3.30\cdot10^{-4}~\mathrm{A}}
$$

$$
\boxed{22~\mathrm{nF}=22\cdot10^{-9}~\mathrm{F}=2.2\cdot10^{-8}~\mathrm{F}}
$$

### 2. Wissenschaftliche Schreibweise

In wissenschaftlicher Schreibweise:

$$
\boxed{0.000~0033=3.3\cdot10^{-6}}
$$

$$
\boxed{4~700~000=4.7\cdot10^6}
$$

### 3. Mantissen und Zehnerpotenzen multiplizieren

Mantissen und Zehnerpotenzen werden getrennt berechnet:

$$
(2.2\cdot10^3)\cdot(3\cdot10^{-3}) =
(2.2\cdot3)\cdot10^{3+(-3)} =
6.6\cdot10^0
$$

$$
\boxed{(2.2\cdot10^3)\cdot(3\cdot10^{-3})=6.6}
$$

Die Schätzung bestätigt die Grössenordnung:

$$
2\cdot3\approx6
$$

### 4. Formeln umstellen

Beide Formeln werden mit derselben Operation auf beiden Seiten umgestellt:

$$
P=U\cdot I
\quad\Longrightarrow\quad
\boxed{U=\frac{P}{I}}
$$

$$
E=P\cdot t
\quad\Longrightarrow\quad
\boxed{t=\frac{E}{P}}
$$

Durch Rückeinsetzen lassen sich beide Resultate prüfen.

### 5. Toleranzgrenzen bestimmen

Ein Prozent von **10 kΩ** entspricht **0.1 kΩ** beziehungsweise **100 Ω**:

$$
R_{\mathrm{min}}=10~\mathrm{k}\Omega-0.1~\mathrm{k}\Omega=9.9~\mathrm{k}\Omega
$$

$$
R_{\mathrm{max}}=10~\mathrm{k}\Omega+0.1~\mathrm{k}\Omega=10.1~\mathrm{k}\Omega
$$

$$
\boxed{9.9~\mathrm{k}\Omega\le R\le10.1~\mathrm{k}\Omega}
$$

### 6. Absolute und relative Abweichung

Die absolute Abweichung beträgt:

$$
\Delta U =
U_{\mathrm{ist}}-U_{\mathrm{soll}} =
4.85~\mathrm{V}-5.00~\mathrm{V} =
-0.15~\mathrm{V}
$$

Die relative Abweichung beträgt:

$$
\delta_U =
\frac{-0.15~\mathrm{V}}
     {5.00~\mathrm{V}}
\cdot100~\\% =
-3.0~\\%
$$

$$
\boxed{\Delta U=-0.15~\mathrm{V},\qquad\delta_U=-3.0~\\%}
$$

### 7. Kennliniensteigung und Widerstand

Die Steigung der Strom-Spannungs-Kennlinie ist:

$$
G =
\frac{(8-2)~\mathrm{mA}}
     {(4-1)~\mathrm{V}} =
2~\mathrm{mA/V} =
2~\mathrm{mS}
$$

Der zugehörige Widerstand ist:

$$
R=\frac{1}{G}=\frac{1}{2~\mathrm{mS}}=500~\Omega
$$

$$
\boxed{G=2~\mathrm{mS},\qquad R=500~\Omega}
$$

### 8. Wirkungsgrad und Verlustleistung

Der Wirkungsgrad und die Verlustleistung ergeben sich zu:

$$
\eta =
\frac{P_{\mathrm{nutz}}}{P_{\mathrm{zu}}} =
\frac{16~\mathrm{W}}{20~\mathrm{W}} =
0.8 =
80~\\%
$$

$$
P_{\mathrm{verlust}} =
20~\mathrm{W}-16~\mathrm{W} =
4~\mathrm{W}
$$

$$
\boxed{\eta=80~\\%,\qquad P_{\mathrm{verlust}}=4~\mathrm{W}}
$$

### 9. Plausibilitätsprüfung der Stromberechnung

Volt durch Kiloohm ergibt Milliampere:

$$
\frac{3.3~\mathrm{V}}
     {1~\mathrm{k}\Omega} =
3.3~\mathrm{mA}
$$

$$
\boxed{I=3.3~\mathrm{mA}}
$$

Das falsche Ergebnis von 3300 A liegt um den Faktor eine Million daneben.

### 10. Unabhängige Plausibilitätsprüfungen

Geeignete unabhängige Prüfungen sind Einheiten- beziehungsweise Dimensionsprüfung, Grössenordnung, Grenzfall und ein zweiter Weg durch Rückrechnung, Messung oder Simulation.
