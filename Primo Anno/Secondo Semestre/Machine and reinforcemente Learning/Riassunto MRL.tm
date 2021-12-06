<TeXmacs|2.1>

<style|<tuple|generic|italian>>

<\body>
  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Introduzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Non-Associative
    Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <with|par-left|1tab|Sample-Average <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|<with|mode|math|\<varepsilon\>-greedy Method>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|Upper-Confidence-Bound UCB
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5>>

    <with|par-left|1tab|Preference Update
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold| Markov
    Decision Process> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>
  </table-of-contents>

  <section*|Introduzione>

  Il reinforcerment learning è la scienza di prendere decisioni sequenziali
  ottime per massimizzare una ricompensa (<with|font-series|bold|reward>)
  scalare. L'agente, cioè colui che esegue le azioni, non è supervisionato:
  non ha indicazioni sulle azioni da intraprendere, ma gli viene fornita solo
  la conoscenza della ricompensa da massimizzare e, di conseguenza, potrebbe
  intraprendere delle azioni che non portano ad una massimizzazione delle
  ricompense istantanea, ma a lungo termine. Viene anche detto apprendimento
  di tipo <with|font-series|bold|trial-and-error>: l'agente cerca di ottenere
  una buona policy bilanciando due concetti fondamentali:

  <\itemize>
    <item><with|font-series|bold|esplorazione:> consiste nel provare nuove
    azioni per ottenere informazioni sull'ambiente che possono non essere
    necessariamente ottime;

    <item><with|font-series|bold|sfruttamento:> si utilizza l'informazione
    già nota per ottenere la ricompensa ottima.
  </itemize>

  In processi non stazionari, il bilanciamento fra esplorazione e
  sfruttamento è molto importante poiché, se scegliessimo di sfruttare
  continuamente, potremmo perderci delle soluzioni non greedy che
  istantaneamente non consentono di ottenere una ricompensa massima, ma a
  lungo termine si.

  Di solito si utilizza la politica <math|\<varepsilon\>-greedy>: sfrutto con
  probabilità <math|1*-\<varepsilon\>> e con probabilità
  <math|\<varepsilon\>> esploro.\ 

  <\definition*>
    <underline|Azione greedy>

    Un'azione è greedy se si sfruttano le conoscenze già note per
    massimizzare la ricompensa.
  </definition*>

  <\definition*>
    <underline|Reward>

    Il <with|font-series|bold|reward> è un segnale scalare di retroazione che
    quantifica la performance dell'agente in un determinato istante di tempo.
    L'agente deve massimizzare il reward cumulativo cioè la somma di tutte le
    ricompense in ogni istante.
  </definition*>

  <\definition*>
    <underline|Ambiente>

    L'<with|font-series|bold|ambiente> è tutto ciò al di fuori dell'agente:
    riceve le azioni dell'agente, genera le osservazioni e i reward.
  </definition*>

  <\definition*>
    <underline|Storia e Stato>

    La <with|font-series|bold|storia> è tutto quello che è successo fino al
    tempo <math|t>. Il futuro sarà dipeso dal risultato della storia e
    dall'azione intrapresa al tempo <math|t>. La storia viene definita come:

    <\equation*>
      H<rsub|t>=O<rsub|1>,R<rsub|1>,\<ldots\>,O<rsub|t>,R<rsub|t>,A<rsub|1>,\<ldots\>,A<rsub|t-1>
    </equation*>

    Lo <with|font-series|bold|stato> è l'informazioni usata per selezionare
    le azioni, è in funzione della storia:

    <\equation*>
      S<rsub|t>=f<around*|(|H<rsub|t>|)>
    </equation*>
  </definition*>

  <\definition*>
    <underline|Policy>

    Una <with|font-series|bold|policy> è una regola utilizzata per prmendere
    decisioni e rappresenta il comportamento dell'agente. Una policy può
    essere deterministica o stocastica.
  </definition*>

  <\definition*>
    <underline|Funzione Valore>

    Una <with|font-series|bold|funzione valore> è una funzione che produce la
    ricompensa futura ed è un indice di valutarione della bontà dello stato.
  </definition*>

  <\definition*>
    <underline|Modello>

    Il <with|font-series|bold|modello> è la credenza dell'agente sul
    comportamento dell'ambiente. Rappresenta la dinamica dell'ambiente.
    <with|font-series|bold|>
  </definition*>

  <\definition*>
    <underline|Planning e Learning>

    Il <with|font-series|bold|learning> è un tipo di apprendimento in cui
    l'ambiente non è noto e l'agente deve interagire con esso per ottenere i
    reward e migliorare la sua policy.

    Il <with|font-series|bold|planning> è un tipo di apprendimento in cui
    l'ambiente è già noto a priori e l'agente deve eseguire calcoli con il
    modello per migliorare la policy.
  </definition*>

  <\definition*>
    <underline|Task Associativo>

    Un task viene detto <with|font-series|bold|associativo> quando vi è il
    bisogno di associare differenti azioni con differenti situazioni
    dell'ambiente.
  </definition*>

  <section*|Non-Associative Methods>

  <subsection*|Sample-Average>

  Il metodo <with|font-series|bold|sample-average> è un metodo che consente
  di ottenere una stima dell'azione da intraprendere tramite la media di
  tutte le ricompense prese fino a quell'istante di tempo. Questa stima
  convergerà al valore vero per la legge dei grandi numeri.

  <\equation*>
    Q<rsub|t><around*|(|a|)>=<choice|<tformat|<table|<row|<cell|<frac|R<rsub|1>+R<rsub|2>+\<cdots\>+R<rsub|N<rsub|t><around*|(|a|)>>|N<rsub|t><around*|(|a|)>><space|1em>se
    N<rsub|t><around*|(|a|)>\<gtr\>0>>|<row|<cell|0<space|9em>se
    N<rsub|t><around*|(|a|)>=0>>>>>
  </equation*>

  Si seleziona l'azione greedy, cioè quella con la stima più elevata. Il
  sample-average è un metodo in cui si sfrutta continuamente senza esplorare.

  <subsection*|<math|\<varepsilon\>-greedy Method>>

  Il metodo <math|\<varepsilon\>-greedy> è un metodo alternativo al
  sample-average in cui si ammette, con probabilità <math|\<varepsilon\>>,
  l'esplorazione di un'azione scelta casualmente. Questo consente di valutare
  tutte le azioni un numero infinito di volte e, per la legge dei grandi
  numeri, la stima di tutte le azioni convergerà al valore vero. Il vantaggio
  rispetto ad un metodo greedy dipende dal tipo di task: se la varianza delle
  ricompense è grande, si necessità di una maggiore espplorazione prima di
  trovare una soluzione ottima, atrimenti si utilizza un algoritmo greedy.

  <\equation*>
    Q<rsub|k+1>=Q<rsub|k>+\<alpha\><around*|[|R<rsub|k>-Q<rsub|k>|]><space|2em>con
    \<alpha\>\<in\><around*|(|0,1|]> costante
  </equation*>

  <\equation*>
    A<rsub|t>=arg max<rsub|a> Q<rsub|t><around*|(|a|)><rsub|>
  </equation*>

  <subsection*|Upper-Confidence-Bound UCB>

  L'UCB è un metodo di selezione dell'azione ottima che prende in
  considerazione tutte le azioni che possono essere ottimali:

  <\equation*>
    A<rsub|t>=arg max<rsub|a><around*|[|Q<rsub|t><around*|(|a|)>+c<sqrt|<frac|ln<around*|(|t|)>|N<rsub|t><around*|(|a|)>>>|]><space|1em>c\<assign\>grado
    di esplorazione
  </equation*>

  L'idea è quella di esprimere l'incertezza o la varianza nella stima del
  valore dell'azione nel termine sotto radice. La quantità che deve essere
  massimizzata è un upper-bound sul possibile valore esatto dell'azione
  determinato con il parametro <math|c > che rappresenta il livello di
  confidenza. Quindi, ogni volta in cui viene scelta l'azione greedy,
  l'incertezza si riduce; al contrario la stima dell'incertezza aumenta.

  <subsection*|Preference Update>

  Il metodo preference update si basa sulla preferenze. Quindi definiamo
  <math|H<rsub|t><around*|(|a|)>> la preferenza della selezione dell'azione.
  Tanto è maggiore questa quantità, tanto si seleziona quella determinata
  azione. Selezioniamo le azioni secondo una distribuzione soft-max:

  <\equation*>
    Pr<around*|{|A<rsub|t>=a|}>=<frac|e<rsup|H<rsub|t><around*|(|a|)>>|<big|sum><rsub|b=1><rsup|n>e<rsup|H<rsub|t><around*|(|b|)>>>=\<pi\><rsub|t><around*|(|a|)>
  </equation*>

  In ogni istante, dopo la selezione dell'azione <math|A<rsub|t>> e la
  ricezione della ricompensa <math|R<rsub|t>>, le preferenze delle azioni
  vengono aggiornate come segue:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|H<rsub|t+1><around*|(|A<rsub|t>|)>=H<rsub|t><around*|(|A<rsub|t>|)>+\<alpha\><around*|(|R<rsub|t>-<wide|R|\<bar\>><rsub|t>|)><around*|(|1-\<pi\><rsub|t><around*|(|A<rsub|t>|)>|)>>>|<row|<cell|H<rsub|t+1><around*|(|a|)>=H<rsub|t><around*|(|a|)>-\<alpha\><around*|(|R<rsub|t>-<wide|R|\<bar\>><rsub|t>|)>\<pi\><rsub|t><around*|(|a|)>>>>>>\<forall\>a\<neq\>A<rsub|t>
  </equation*>

  Questo algoritmo è un'approssimazione stocastica del gradiente ascendente
  poiché, in quello reale, ogni prferenza dovrebbe essere incrementata
  proporzionalmente all'incremento delle performance. La performance viene
  valutata come la ricomppensa attesa.

  <\equation*>
    H<rsub|t+1><around*|(|a|)>=H<rsub|t><around*|(|a|)>+\<alpha\><frac|\<partial\>\<bbb-E\><around*|[|R<rsub|t>|]>|\<partial\>H<rsub|t><around*|(|a|)>>
  </equation*>

  <\equation*>
    \<bbb-E\><around*|[|R<rsub|t>|]>=<big|sum><rsub|b>\<pi\><rsub|t><around*|(|b|)>q<around*|(|b|)>
  </equation*>

  <section*| Markov Decision Process>

  I <with|font-series|bold|processi decisionali markoviani> descrivono
  formalmente un ambiente di reinforcement learning. Ipotizziamo che
  l'ambiente sia completamente osservabile, lo stato corrente del sistema
  caratterizza completamente il futuro e ad ogni azione corrisponde un numero
  finito di ricompense.

  <\definition*>
    <underline|Proprietà di Markov>

    Il futuro è indipendente dal passato dato il presente:

    <\equation*>
      \<bbb-P\><around*|[|S<rsub|t+1>\|S<rsub|t>|]>=\<bbb-P\><around*|[|S<rsub|t+1>\|S<rsub|1>,S<rsub|2>,\<ldots\>,S<rsub|t>|]>
    </equation*>

    Lo stato cattura tutte le informazioni rilevanti della storia.
  </definition*>

  L'agente esegue le decisioni come se fosse una funzione di un segnale
  dell'ambiente, detto stato dell'ambiente. Lo stato, quindi, rappresenta
  tutte le informazioni che sono disponibili e il nostro obiettivo è quello
  di progettare una politica decisionale del segnale dello stato. Inoltre,
  non dovrebbe influenzare le decisioni dell'agente poiché si potrebbero
  avere dei preconcetti sulle decisioni da effettuare e quindi non si
  potrebbero eseguire azioni che mi massimizzano il reward a lungo periodo.

  Un ambiente soddisfa la proprietà di Markov se in ogni passo possiamo
  predire il valore del prossimo stato e il valore atteso della prossima
  ricopmpensa sapendo lo stato corrente e l'azione. Iterando questo
  procedimento si ottiene l'intera evoluzione dell'ambiente.\ 

  <\definition*>
    <underline|Probabilità di transizione di stato>

    Dato uno stato <math|s> e <math|s<rprime|'>>, definiamo la
    <with|font-series|bold|probabilità di transizione di stato>:

    <\equation*>
      P<rsub|s,s<rprime|'>>=\<bbb-P\><around*|[|S<rsub|t+1>=s<rprime|'>\|S<rsub|t>=s|]>
    </equation*>
  </definition*>

  <\definition*>
    <underline|Matride di transizione>

    Se gli stati sono finiti, definiamo la <with|font-series|bold|matrice di
    trasnziione di stato>:

    <\equation*>
      to
    </equation*>

    <\equation*>
      P=from <matrix|<tformat|<table|<row|<cell|P<rsub|1,1><space|1em>P<rsub|1,2><space|1em>\<ldots\><space|1em>P<rsub|1,n>>>|<row|<cell|\<vdots\><space|2em><space|1em>\<vdots\><space|2em>\<ddots\><space|2em>\<vdots\>>>|<row|<cell|P<rsub|n,1><space|1em>P<rsub|n,2><space|1em>\<ldots\><space|1em>P<rsub|n,n>>>>>>
    </equation*>

    In cui ogni somma delle righe di P =1 :

    <\equation*>
      <big|sum><rsub|j=1><rsup|n>P<rsub|i,j>=1 <space|2em>i=1,\<ldots\>,n
    </equation*>
  </definition*>

  Gli elementi sulla riga rappresentano gli stati di partenza, mentre sulla
  colonna gli stati di arrivo. Inoltre, la somma di una riga di <math|P> deve
  fare 1 poiché rappresentano una probabilità.

  <\definition*>
    <underline|Distribuzione di probabilità>

    Sia\ 

    <\equation*>
      \<pi\><around*|(|t|)>=<matrix|<tformat|<table|<row|<cell|\<bbb-P\><around*|[|S<rsub|t>=1|]>>>|<row|<cell|\<bbb-P\><around*|[|S<rsub|t>=2|]>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<bbb-P\><around*|[|S<rsub|t>=n|]>>>>>><rsup|T>
    </equation*>

    la distribuzione di probabilità di trovarmi in uno stato <math|S> al
    tempo <math|t>. Lo stato futuro, poiché <math|P> costante e l'ambiente
    soddisfano la proprietà di Markov:

    <\equation*>
      \<pi\><around*|(|t+1|)>=\<pi\><around*|(|t|)>*P
    </equation*>

    I punti di equilibro, cioè la <with|font-series|bold|distribuzione
    stazionaria,> soddisfa il seguente sistema:

    <\equation*>
      <wide|\<pi\>|\<bar\>>=<wide|\<pi\>|\<bar\>>*P
    </equation*>

    Quindi abbiamo che:

    \PLa probabilità di trovarci nello stato <math|S<rsub|t+h>=s<rprime|'>>
    dato lo stato <math|S<rsub|t>=s> è uguale all'elevamento a potenza della
    matrice di transizione P di <math|h>\Q

    <\equation*>
      \<bbb-P\><around*|[|S<rsub|t+h>=s<rprime|'>\|S<rsub|t>=s|]>=<around*|[|P<rsup|h>|]><rsub|s,s<rprime|'>>
    </equation*>
  </definition*>

  <\definition*>
    <underline|Processo Markoviano>

    Un processo Markoviano è un processo casuale senza memoria che soddisfa
    la proprietà di Markov
  </definition*>

  <\definition*>
    <\underline>
      Catena di Markow
    </underline>

    Una catena di Markov è una coppia <math|<around*|(|S,P|)>> con <math|S>
    insieme finito di stati e <math|P> matrice di transizione.
  </definition*>

  Nel reinforcement Learning l'agente e l'ambiente interagiscono
  continuamente: l'agente selezionando le azioni, influenza l'ambiente che a
  sua volta elergirà la corrispondente ricompensa e presenterà un nuovo stato
  del sistema.

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1>>
    <associate|auto-2|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-3|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<bullet\>>|2>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<bullet\>>|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Introduzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Non-Associative
      Methods> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Sample-Average
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|<with|mode|<quote|math>|\<varepsilon\>-greedy
      Method> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|Upper-Confidence-Bound UCB
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|Preference Update
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|
      Markov Decision Process> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>