<TeXmacs|1.99.18>

<style|<tuple|generic|italian>>

<\body>
  <center|<paragraph|Cose da chiedere al professore>>

  <\enumerate>
    <item>Metodo di assegnamento ricompense: deve essere precalcolato o
    normale a run-time.\ 

    <\note>
      Inoltre, se le ricompense sono scelte causalemente a run-time, non sono
      confrontabili con altri algoritmi poiché, variando la probabilità di
      esplorazione <math|\<varepsilon\>>, potremmo avere ricompense casuali
      differenti nello bandit allo stesso istante e quindi il confronto
      risulterebbe falsato;
    </note>

    <item>Cosa si intende per percentuale ottima?

    <\note>
      Si intende per percentuale ottima, di quanto la stima
      <math|Q<around*|(|A|)>> dista dal valore vero q. Oppure, noto il
      bandito ottimo dai valori <math|q<rsup|\<ast\>>> (dato da <math|arg
      max<rsub|a> q<around*|(|t|)>>),
    </note>

    <item>Variazione degli alpha in Preference Update e le sue conseguenze.

    Preference Update:

    <\itemize>
      <item><math|\<alpha\>> sono più greedy rispetto al passo di
      aggiornamento della preferenza. Questo non vuol dire che sceglierò
      sempre lo stesso bandito: devo guardare anche la differenza
      <math|<around*|(|R-<overline|R>|)>>.
    </itemize>

    <item>In UCB con <math|\<alpha\>=0>, al variare di c i reward medi
    complessivi vengono tutti uguali. è possibile questa cosa?

    <\note>
      Ipotizziamo che, poiché <math|\<alpha\>=0\<rightarrow\>>non peso
      affatto il passato e quindi scelgo sempre la stessa azione.
    </note>
  </enumerate>

  <paragraph|Feature>

  <\itemize>
    <item>Stima Q(a) e q(a) in uno scroll plot;

    <item>% ottima;

    <item>Inventarsi un grafico al posto di distributzione reward medi;

    <item>Valori di riferimento nei grafici;

    <item>Cambiare gli altri algoritmi;
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <with|par-left|<quote|4tab>|Cose da chiedere al professore
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>