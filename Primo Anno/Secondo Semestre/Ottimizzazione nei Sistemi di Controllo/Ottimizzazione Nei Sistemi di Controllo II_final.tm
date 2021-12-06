<TeXmacs|1.99.18>

<style|<tuple|book|italian>>

<\body>
  <center|<part|Ottimizzazione nei sistemi di controllo II>>

  <\table-of-contents|toc>
    <vspace*|2fn><with|font-series|bold|math-font-series|bold|font-size|1.19|I<space|2spc>Ottimizzazione
    nei sistemi di controllo II> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|1fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Introduzione>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Funzionali
    su spazi lineari:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>
  </table-of-contents>

  <\center>
    \;

    <chapter|Introduzione>
  </center>

  Il <with|font-series|bold|problema del controllo ottimo> consiste nella
  determinazione della legge di controllo che, applicata ad un dato sistema,
  ne ottimizza il funzionamento rispetto a un criterio di valutazione
  prefissato. In particolare, noto un modello matematica che descrive il
  comportamento dinamico del sistema da controllare e, defininito un indice
  che valuti in maniera glovale il costo e/o la qualità di funzionamento del
  sistema stesso sull'intero intervallo di controllo, si desidera determinare
  l'andamento delle variabili di controllo ed eventualmente la durata
  dell'intervallo di controllo che soddisfano i vincoli presenti e rendono
  minimo o massimo l'indice prescelto.

  Nell'approccio classico vengono assegnate una serie di specifiche che
  devono essere soddisfatte e che valutano aspetti parziali del funzionamento
  del sistema tra cui:

  <\itemize>
    <item>stabilità;

    <item>precisione in regime permanente;

    <item>prontezza del transitorio;

    <item>sensibilità della soluzione rispetto all'azione dei disturbi
    esterni e delle variazioni parametriche;
  </itemize>

  Al contrario, nell'apporccio del <with|font-series|bold|controllo ottimo>
  si ha un'unica specifica che rende minimo o massimo un indice di costo che
  permette di sintetizzare i diversi aspetti ed esigenze del problema in
  questione.

  I vantaggi di questo approccio sono:

  <\itemize>
    <item>metodologia unificante multidisciplinare in frado di trattare
    problemi di controllo di sistemi non lineari, non stazionari e a molte
    variabili;

    <item>ottimalità della soluzione cercata nell'ambito di una inifinità di
    soluzioni ammissibili;

    <item>determinazione della soluzione ottima in forma chiusa e
    corrispondente a strutture realizzabili in retroazione per particolari
    classi di problemi di notevalo interesse applicativo;

    <item>determinazione di una soluzione di riferimento rispetto a soluzioni
    non ottimali per classi di problemi più complesse.
  </itemize>

  Gli svantaggi:

  <\itemize>
    <item>problemicità della scelta di un indice di costo in grado di
    sintetizzare le diverse esigenze che un sistema di controllo deve
    soddisfare;

    <item>difficoltà di terner conto e di valutare i diversi aspetti di
    funzionamento;

    <item>struttura del sistema di controllo cui si perviene;

    <item>difficoltà di calcolare la soluzione ottima per problemi più
    complessi o addirittura di poter stabilire l'esistenza della soluzione
    ottima o l'ottimalità delle soluzione.
  </itemize>

  Nei sistemi a tempo continuo si esprime i un problema di minimo di un
  <with|font-series|bold|funzionale>, cioè di una funzione definita su uno
  spazio di funzioni, in presenza di vincoli di eguaglianza e/o
  diseguaglianza.

  <\center>
    \;

    <chapter|Funzionali su spazi lineari:>

    Definizioni e Condizioni di Minimo
  </center>

  <section|Spazi Lineari Normati>

  Consideriamo un insieme Z di elementi di z, su cio sia definita
  l'operazione di somma e l'operazione di moltiplicazione per un numero
  <math|\<alpha\>\<in\>\<bbb-R\>>.

  Z è uno <with|font-series|bold|spazio lineare> se è chiuso rispetto alle
  due operazioni di somma e moltiplicazione:

  <\equation*>
    z<rprime|'>+z<rprime|''>=z\<in\>Z\<space\>\<forall\>z<rprime|'>,z<rprime|''>\<in\>Z
  </equation*>

  <\equation*>
    \<alpha\>z\<in\>Z<space|1em>\<forall\>\<alpha\>\<in\>\<bbb-R\>,\<space\>\<forall\>z\<in\>Z
  </equation*>

  <\example>
    Lo spazio euclideo <math|\<bbb-R\><rsup|\<nu\>>> è uno spazio lineare in
    cui è definita la somma tra vettori e la moltiplicazione di un vettore
    per uno scalare.
  </example>

  <\example>
    L'insieme delle matrici di dimensioni fissate è uno spazio lineare mentre
    l'insieme delle matrice quadrate non singolari non è uno spazio lineare.
  </example>

  <\example>
    L'insieme delle funzioni <math|z>, definite e limitate sull'intervallo
    <math|<around*|[|t<rsub|i>,t<rsub|f>|]>> tali che per ogni <math|z>
    esiste un numero positvo <math|M> per il quale risulti:

    <\equation*>
      <around*|\||z<around*|(|t|)>|\|>\<leqslant\>M<space|1em>\<forall\>t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>
    </equation*>

    costituisce uno spazio lineare.

    Al contrario, l'insieme delle funzioni superiormente limitate da uno
    stesso valore fissato non è uno spazio lineare.
  </example>

  <\example>
    Indichiamo con <math|C<rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>>
    <math|k=0,1,2,\<ldots\>><space|1em>è l'insieme delle funzioni
    <math|z\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>> con derivata continua
    fino a <math|k*-1> e con derivata di ordine k che può presentare punti
    isolati di discontinuità di prima specia.

    Assumiamo <with|font-series|bold|continuità da destra nel punto di
    discontinuità>: il valore in un punto di discontinuità coincide con il
    valore del lim venendo da destra.

    <\equation*>
      <frac|d<rsup|k>z|dt<rsup|k>>=lim<rsub|\<Delta\>\<rightarrow\>0><frac|d<rsup|k>z|dt<rsup|k>>=<around*|\<nobracket\>|<frac|d<rsup|k>z|dt<rsup|k>>|\|><rsub|<wide|t|\<bar\>><rsup|+>>
    </equation*>

    L'insieme <math|C<rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>> è uno spazio
    lineare.
  </example>

  <\definition>
    <underline|Insieme misurabile>

    z si dice misurabile se esiste una succession
    <math|<around*|{|S<rsup|k>|}>\<subset\>\<delta\><around*|[|t<rsub|i>,t<rsub|f>|]>>
    tale che:

    <\equation*>
      lim<rsub|k\<rightarrow\>\<infty\>>s<rsup|<around*|(|k|)>><around*|(|t|)>=z<around*|(|t|)><space|1em>\<forall\>t
    </equation*>

    fanno eccezione eventuali insiemi di misura nulla (unione di punti
    isolati).

    <math|M<around*|[|t<rsub|i>,t<rsub|f>|]>\<assign\>>insieme delle funzioni
    misurabili su <math|<around*|[|t<rsub|i>,t<rsub|f>|]>> è uno spazio
    lineare.
  </definition>

  <\definition>
    <underline|Sottospazio lineare>

    Un insieme <math|Z<rprime|'>> si dice <with|font-series|bold|sottospazio
    lineare> di Z, se <math|Z<rsup|<rprime|'>>\<subset\>Z<space|1em>e<space|1em>
    Z<rsup|<rprime|'>>> è uno spazio lineare.
  </definition>

  <\example>
    \;

    <\equation*>
      C<rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>\<subset\><wide|C|\<bar\>><rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>\<subset\>C<rsup|k-1><around*|[|t<rsub|i>,t<rsub|f>|]>\<subset\>\<cdots\>\<subset\><wide|C|\<bar\>><rsup|o><around*|[|t<rsub|i>,t<rsub|f>|]>\<subset\>M<around*|[|t<rsub|i>,t<rsub|f>|]><label|cconti>
    </equation*>

    <math|C<rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>> è un sottospazio linere
    rispetto a <math|<wide|C|\<bar\>><rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>>
    che a sua volta lo è per \ <math|C<rsup|k-1><around*|[|t<rsub|i>,t<rsub|f>|]>>
    e cosi via, essendo così tutti sottospazi di
    <math|M<around*|[|t<rsub|i>,t<rsub|f>|]>>.
  </example>

  <\definition>
    <underline|Linearmente indipendenti>

    Consideriamo gli elementi <math|z<rsup|<around*|(|k|)>>\<in\>Z<space|1em>k=1,2\<ldots\>,n><space|1em>in
    un numero finito o infinito, essi si dicono
    <with|font-series|bold|linearmente indipendenti> se per una loro
    combinazione lineare si ha:

    <\equation*>
      <big|sum><rsub|k>\<alpha\><rsub|k>z<rsup|<around*|(|k|)>>=0\<Longleftrightarrow\>\<alpha\><rsub|k>=0,k=1,2,\<ldots\>.
    </equation*>
  </definition>

  <\definition>
    <underline|Sottospazio lineare>

    Considerati <math|z<rsup|<around*|(|k|)>>\<in\>Z><space|1em><math|k=1,2,\<ldots\>:>

    <\equation*>
      <around*|{|z\<in\>Z:z=<big|sum><rsub|k>\<alpha\><rsub|k>z<rsup|<around*|(|k|)>>,\<alpha\><rsub|k>\<in\>\<bbb-R\>|}>
      è il <with|font-series|bold|sottospazio lineare> da essi generato.
    </equation*>
  </definition>

  <\definition>
    <underline|Base, Dimensione>

    Considerati <math|z<rsup|<around*|(|k|)>>\<in\>Z><space|1em><math|k=1,2,\<ldots\>,>essi
    costituiscono una <with|font-series|bold|base> di Z se il sottospazio
    lineare da essi generasto coincide con Z. Allora:

    <\itemize>
      <item><math|dim<around*|{|Z|}>> è il numero delle basi dello spazio
      lineare;

      <item>Per uno spazio lineare è univocamente definita la dimensione, non
      le basi;

      <item>La dimensione può essere finita o infinita.
    </itemize>
  </definition>

  <\definition>
    <underline|Norma e Spazio Lineare Normato>

    Considerato uno spazio lineare Z, la norma
    <math|<around*|\<\|\|\>|\<cdot\>|\<\|\|\>>>, è una funzione che associa
    ad ogni <math|z\<in\>Z> un numero reale non negativo, tali che:

    <\math>
      <\itemize>
        <item><around*|\<\|\|\>|z|\<\|\|\>>=0\<Longleftrightarrow\>z=0;

        <item><around*|\<\|\|\>|z<rprime|'>+z<rprime|''>|\<\|\|\>>\<less\><around*|\<\|\|\>|z<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|z<rprime|''>|\<\|\|\>><space|1em>\<forall\>z<rprime|'>,z<rprime|''>\<in\>Z

        <item><around*|\<\|\|\>|\<alpha\>z|\<\|\|\>>=<around*|\||\<alpha\>|\|><around*|\<\|\|\>|z|\<\|\|\>><space|1em>\<forall\>\<alpha\>\<in\>\<bbb-R\>.
        \<forall\>z\<in\>Z
      </itemize>
    </math>

    Uno spazio lineare che gode di queste proprietà viene detto
    <with|font-series|bold|spazio lineare normato>.
  </definition>

  <\definition>
    <underline|Norme Equivalenti>

    Dato uno spazio lineare <math|Z>, due norme
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> e
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> si dicono tra loro
    <with|font-series|bold|equivalenti> se esistono due costanti positive
    <math|\<alpha\>,\<beta\>> tali che:

    <\equation*>
      \<exists\>\<alpha\>,\<beta\>:\<alpha\><around*|\<\|\|\>|z|\<\|\|\>><rsub|1>\<less\><around*|\<\|\|\>|z|\<\|\|\>><rsub|2>\<less\>\<beta\><around*|\<\|\|\>|z|\<\|\|\>><rsub|1><space|1em>\<forall\>z\<in\>Z
    </equation*>

    <\note>
      Per uno spazio lineare a dimensione finit, tutte le norme sono tra loro
      equivalenti.
    </note>
  </definition>

  <\proposition>
    <underline|Esempi di Norma>

    <paragraph|Norme>

    <\math>
      <\itemize>
        <item>in \<bbb-R\><rsup|\<nu\>>:<around*|\<\|\|\>|z|\<\|\|\>>=<around*|(|<big|sum><rsub|i=1><rsup|\<nu\>>z<rsub|i><rsup|2>|)><rsup|<frac|1|2>>,<around*|\<\|\|\>|z|\<\|\|\>>=max<rsub|i><around*|{|<around*|\||z<rsub|i>|\|>|}>

        <item>in C<rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>,<wide|C|\<bar\>><rsup|k><around*|[|t<rsub|i>,t<rsub|f>|]>:<around*|\<\|\|\>|z|\<\|\|\>>=<big|int><rsup|t<rsub|f>><rsub|t<rsub|i>><around*|\<\|\|\>|z<around*|(|t|)>|\<\|\|\>>dt;<around*|\<\|\|\>|z|\<\|\|\>>=<around*|(|<big|int><rsup|t<rsub|f>><rsub|t<rsub|i>><around*|\<\|\|\>|z<around*|(|t|)>|\<\|\|\>><rsup|2>|)><rsup|<frac|1|2>>
      </itemize>
    </math>

    Oppure, in <math|C<rsup|k>>:

    <\itemize>
      <item><with|font-series|bold|norma forte>:<math|<around*|\<\|\|\>|z|\<\|\|\>>=sup<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|z<around*|(|t|)>|\<\|\|\>>>;

      <item><with|font-series|bold|norma debole:><math|<around*|\<\|\|\>|z|\<\|\|\>>=sup<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|z<around*|(|t|)>|\<\|\|\>>+sup<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|<wide|z|\<dot\>><around*|(|t|)>|\<\|\|\>>>
    </itemize>
  </proposition>

  \;

  <\definition>
    <underline|Convergenza Spazio Lineare Normato>

    Considerato uno spazio lineare normato Z, una succession
    <math|<around*|{|z<rsup|<around*|(|k|)>>|}>> di elementi
    <math|z<rsup|<around*|(|k|)>>\<in\>Z> si dice
    <with|font-series|bold|convergente> a <math|<wide|z|\<bar\>>>, se
    <math|<wide|z|\<bar\>>\<in\>Z> e <math|lim<rsub|k\<rightarrow\>\<infty\>><around*|\<\|\|\>|z<rsup|<around*|(|k|)>>-<wide|z|\<bar\>>|\<\|\|\>>>=0.

    Se una successione converge allora è di Cauchy.

    Se una successione è di Cauchy essa converge se e solo se lo spazio è a
    dimensione finita.
  </definition>

  <\note>
    Per esempio vedere libro pag. 5 esempio 1.19
  </note>

  <\underline>
    <\definition>
      Intorno,frontiera,interno,aperto,chiusura
    </definition>
  </underline>

  Considerato uno spazio lineare normato <math|Z> e
  <math|z\<degree\>\<in\>Z>, definiamo:

  <\itemize-minus>
    <item><with|font-series|bold|intorno> di <math|z\<degree\>\<in\>D> di
    raggio <math|\<rho\>:S<around*|(|z\<degree\>,\<rho\>|)>=<around*|{|z\<in\>Z:<around*|\<\|\|\>|z-z\<degree\>|\<\|\|\>>\<less\>\<rho\>|}>;>

    <item><math|D\<subset\>Z,z\<degree\>\<in\>D> si dice
    <with|font-series|bold|interno> a <math|D,>se
    <math|\<exists\>S<around*|(|z\<degree\>,\<rho\>|)>\<subset\>D;>

    <item><math|D\<subset\>Z,z\<degree\>\<in\>D> si dice
    <with|font-series|bold|di frontiera>, se ogni intorno
    <math|S<around*|(|z\<degree\>,\<rho\>|)>> continiene punti non in D;

    <item><math|D\<subset\>Z,>è <with|font-series|bold|aperto> se ogni suo
    elemento è interno a <math|D>, chiuso <math|Z/D >è aperto;

    <item><math|D\<subset\>Z,>frontiera di <math|D,\<partial\>D>, punti di
    frontiera;

    <item><math|<wide|D|\<bar\>>=D\<cup\>\<partial\>D;>

    <item><math|<wide|D|\<dot\>>=D/\<partial\>D>;
  </itemize-minus>

  <\underline>
    <\definition>
      Insieme limitato
    </definition>
  </underline>

  Un insieme <math|D\<subset\>Z> è <with|font-series|bold|limitato> se
  <math|\<exists\>M:<around*|\<\|\|\>|z|\<\|\|\>>\<less\>M,\<forall\>z\<in\>D>

  <\underline>
    <\definition>
      Compattezza di un insieme
    </definition>
  </underline>

  Un insieme <math|D\<subset\>Z> è un insieme
  <with|font-series|bold|compatto> se ogni successione di elementi di
  <math|D> contiene una sottosuccessione che converge a un elemento di
  <math|D>.

  Se <math|Z> ha una dimensiione finita e <math|D> è compatto
  <math|\<Longleftrightarrow\>> chiuso e lmitato.

  <\underline>
    <with|font-series|bold|Oss.:>

    Se la dimensione è infinitato vale solo <math|\<Longrightarrow\>>
  </underline>

  <\underline>
    <\definition>
      Insieme connesso
    </definition>
  </underline>

  Un insieme <math|D\<subset\>Z> è <with|font-series|bold|connesso> se:

  <\equation*>
    \<alpha\>z<rprime|'>+<around*|(|1-\<alpha\>|)>z<rprime|''>\<in\>D\<space\>\<forall\>z<rprime|'>,z<rprime|''>\<in\>D,\<space\>\<forall\>\<alpha\>\<in\><around*|[|0,1|]>
  </equation*>

  <section|Funzionali su Spazi Lineari>

  <\definition>
    <underline|Funzionale>

    Considerato uno spazio lineare <math|Z> e un suo insieme <math|D>, un
    <with|font-series|bold|funzionale> <math|J:D\<longrightarrow\>\<bbb-R\>>
    è una legge che associa ad ogni elemento di <math|D> un elemento di
    <math|\<bbb-R\>>.
  </definition>

  <\definition>
    <underline|Funzionale lineare>

    Un funzionale <math|J:Z\<longrightarrow\>\<bbb-R\>> si dice
    <with|font-series|bold|lineare> se:

    <\equation*>
      J<around*|(|\<alpha\><rsub|1>z<rprime|'>+<around*|(|1-\<alpha\><rsub|2>|)>z<rprime|''>|)>=\<alpha\><rsub|1>J<around*|(|z<rprime|'>|)>+<around*|(|1-\<alpha\><rsub|2>|)>J<around*|(|z<rprime|''>|)><space|1em>
      \<forall\>z<rprime|'>,z<rprime|''>\<in\>Z<space|1em>\<forall\>\<alpha\><rsub|1>,\<alpha\><rsub|2>\<in\>\<bbb-R\>
    </equation*>
  </definition>

  <\definition>
    <underline|Funzionale bilineare>

    Un funzionale <math|J:Z\<times\>W\<longrightarrow\>\<bbb-R\>> si dice
    <with|font-series|bold|bilineare>:

    <\equation*>
      J<around*|(|\<alpha\><rsub|1>z<rprime|'>+<around*|(|1-\<alpha\><rsub|2>|)>z<rprime|''>,w|)>=\<alpha\><rsub|1>J<around*|(|z<rprime|'>,w|)>+<around*|(|1-\<alpha\><rsub|2>|)>J<around*|(|z<rprime|''>,w|)><space|1em>
      \<forall\>z<rprime|'>,z<rprime|''>\<in\>Z<space|1em>\<forall\>\<alpha\><rsub|1>,\<alpha\><rsub|2>\<in\>\<bbb-R\>
    </equation*>

    <\equation*>
      J<around*|(|z,\<alpha\><rsub|1>w<rprime|'>+\<alpha\><rsub|2>w<rprime|''>|)>=\<alpha\><rsub|1>J<around*|(|z,w<rprime|'>|)>+<around*|(|1-\<alpha\><rsub|2>|)>J<around*|(|z,w<rprime|''>|)>
    </equation*>
  </definition>

  <\definition>
    <underline|Funzionale quadratico>

    Un funzionale <math|J:Z\<longrightarrow\>\<bbb-R\>> si dice
    <with|font-series|bold|quadratico> se:

    <\equation*>
      J<around*|(|z|)>=<wide|J|\<bar\>><around*|(|z,z|)>
    </equation*>

    dove <math|<overline|J>:Z\<times\>Z\<longrightarrow\>\<bbb-R\>> è
    <with|font-series|bold|bilineare>.
  </definition>

  <\definition>
    <underline|Funzionale semidefinito positivo>

    Un funzionale <math|J:Z\<longrightarrow\>\<bbb-R\>> è detto
    <with|font-series|bold|semidefinito positivo>:

    <\equation*>
      J<around*|(|z|)>\<succcurlyeq\>0,\<forall\>z\<in\>Z<space|1em>
    </equation*>

    Nel caso in cui la diseguaglianza è stretta, il funzionale è
    <with|font-series|bold|definito positivo>. Cioè tale che:

    <\equation*>
      <with|font-series||J<around*|(|z|)>\<gtr\>0 \<forall\>z\<neq\>0>
    </equation*>
  </definition>

  <\definition>
    <underline|Funzionale fortemento positivo>

    Un funzionale <math|J:Z\<longrightarrow\>\<bbb-R\>> è detto
    <with|font-series|bold|fortemente positivo> se:

    <\equation*>
      \ <math|\<exists\>> un numero <math|k\<gtr\>0,J<around*|(|z|)>\<geqslant\>k<around*|\<\|\|\>|z<rsup|2>|\<\|\|\>><space|1em>\<forall\>z\<in\>Z>
    </equation*>
  </definition>

  <\note>
    Un funzionale quadratico fortemente positivo è definito positivo, ma in
    generale non è vero il viceversa. Nel caso in cui <math|Z> sia uno spazio
    a dimensione finita le due proprietà di implicano a vicenda.
  </note>

  <\underline>
    <\definition>
      Convessità
    </definition>
  </underline>

  <math|Se insieme D\<subset\>Z,J:D\<rightarrow\>\<bbb-R\>> è
  <with|font-series|bold|convesso> in <math|D> se:

  <\equation*>
    J<around*|[|\<alpha\>z<rprime|'>+<around*|(|1-\<alpha\>|)>z<rprime|''>|]>\<leqslant\>\<alpha\>J<around*|(|z<rprime|'>|)>+<around*|(|1-\<alpha\>|)>J<around*|(|z<rprime|''>|)><space|2em>\<space\>\<forall\>z<rprime|'>,z<rprime|''>\<in\>D,\<forall\>\<alpha\>\<in\><around*|[|0,1|]>
  </equation*>

  Inoltre, è <with|font-series|bold|strettamente convesso> se vale \<less\>.

  <\note>
    Se <math|Z=\<bbb-R\><rsup|\<nu\>>> e <math|D> è convesso:

    <\enumerate-roman>
      <item>Se <math|J\<in\>C<rsup|1><around*|(|D|)>. J
      convesso\<Longleftrightarrow\>J<around*|(|z|)>\<geqslant\>J<around*|(|z<rprime|'>|)>+<frac|\<mathd\>J|dz><mid|\|><rsub|z<rprime|'>><around*|(|z-z<rprime|'>|)><space|1em>\<forall\>z,z<rprime|'>\<in\>D>

      <item>Se <math|J\<in\>C<rsup|2><around*|(|D|)>,J
      convesso\<Longleftrightarrow\><around*|(|z-z<rprime|'>|)><rsup|T><frac|\<mathd\><rsup|2>J|\<mathd\><rsup|2>z><around*|(|z-z<rprime|'>|)><rsup|T>\<geqslant\>0>
      ovvero la matrice Hessiana è (semi)definita positiva;
    </enumerate-roman>
  </note>

  <\remark>
    <underline|<with|font-series|bold|Funzionale
    Lagrangiano>><label|lagrangiano>

    Consideriamo il funzionale nella <with|font-series|bold|forma di
    Lagrange:>

    <\equation*>
      J<around*|(|z|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>,t|)>\<partial\>t
    </equation*>

    <math|J<around*|(|z|)>> sarà convesso se la fuzione
    <math|L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>,t|)>>,
    per ogni ti fissato, è convessa nei suoi argomenti. Infatti:

    <\equation*>
      J<around*|(|\<alpha\>z<rprime|'>+<around*|(|1-\<alpha\>|)>z<rprime|''>|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|\<alpha\>z<rprime|'><around*|(|t|)>+<around*|(|1-\<alpha\>|)>z<rprime|''><around*|(|t|)>,\<alpha\><wide|z|\<dot\>><rprime|'><around*|(|t|)>+<around*|(|1-\<alpha\>|)><wide|z|\<dot\>><rprime|''><around*|(|t|)>,t|)>\<partial\>t=
    </equation*>

    <\equation*>
      =\<alpha\><big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<rprime|'><around*|(|t|)>,<wide|z|\<dot\>><rprime|'><around*|(|t|)>,t|)>\<partial\>t+<around*|(|1-\<alpha\>|)><big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<rprime|''><around*|(|t|)>,<wide|z|\<dot\>><rprime|''><around*|(|t|)>,t|)>\<partial\>t=\<alpha\>J<around*|(|z<rprime|'><around*|(|t|)>|)>+<around*|(|1-\<alpha\>|)>J<around*|(|z<rprime|''><around*|(|t|)>|)>
      convesso
    </equation*>
  </remark>

  <\definition>
    <underline|Spazio lineare normato continuo, limitato e uniformemente
    limitato>

    Sia <math|J> defnito su uno spazop lineare normato <math|Z> esso si dice
    <with|font-series|bold|continuo> in <math|<wide|z|\<bar\>>\<in\>Z> se:

    <\equation*>
      \<forall\>\<varepsilon\>\<gtr\>0,\<exists\>\<delta\><rsub|\<varepsilon\>><around*|(|<wide|z|\<bar\>>|)>\<gtr\>0<space|1em>tale
      che:<around*|\||J<around*|(|z|)>-J<around*|(|<wide|z|\<bar\>>|)>|\|>\<less\>\<varepsilon\><space|1em>\<forall\>z\<in\>S<around*|(|<wide|z|\<bar\>>,\<delta\><rsub|\<varepsilon\>><around*|(|<wide|z|\<bar\>>|)>|)>
    </equation*>

    Si dice <with|font-series|bold|limitato> se:

    <\equation*>
      <around*|\||J<around*|(|z|)>|\|>\<less\>\<infty\><space|1em>\<forall\>z\<in\>D
    </equation*>

    Infine, si dice <with|font-series|bold|uniformemente limitato> se:

    <\equation*>
      <around*|\||J<around*|(|z|)>|\|>\<leqslant\>M<space|1em>\<forall\>z\<in\>D
    </equation*>
  </definition>

  <\remark>
    In riferimento a <reference|lagrangiano>, consideriamo lo spazio
    <math|C<rsup|1><around*|[|t<rsub|i>,t<rsub|f>|]>> con <underline|norma
    debole>, consideriamo:

    <\equation*>
      J<around*|(|z|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>|)>\<partial\>t<space|2em>con
      L\<in\>C<rsup|1><around*|(|\<bbb-R\><rsup|\<nu\>>\<times\>\<bbb-R\><rsup|\<nu\>>|)>
    </equation*>

    Si ha:

    <\equation*>
      <around*|\||J<around*|(|z|)>-J<around*|(|<wide|z|\<bar\>>|)>|\|>\<leqslant\><big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|\||L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>|)>-L<around*|(|<wide|z|\<bar\>><around*|(|t|)>,<wide|<wide|z|\<bar\>>|\<dot\>><around*|(|t|)>|)>|\|>
      \<partial\>t
    </equation*>
  </remark>

  <with|font-series|bold|<underline|Applicanto il teorema del valor medio:>>

  <\equation*>
    \<leqslant\><big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|\<\|\|\>|<frac|\<partial\>L|\<partial\>z<around*|(|t|)>><mid|\|><rsub|w<around*|(|t|)>>|\<\|\|\>>*<around*|\<\|\|\>|z<around*|(|t|)>-<wide|z|\<bar\>><around*|(|t|)>|\<\|\|\>>\<partial\>t+<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|\<\|\|\>|<frac|\<partial\>L|\<partial\><wide|z|\<dot\>><around*|(|t|)>><mid|\|><rsub|w<around*|(|t|)>>|\<\|\|\>>*<around*|\<\|\|\>|<wide|z|\<dot\>><around*|(|t|)>-<wide|<wide|z|\<bar\>>|\<dot\>><around*|(|t|)>|\<\|\|\>>\<partial\>t
  </equation*>

  In particolare, <math|w<around*|(|t|)>\<in\>\<bbb-R\><rsup|2*\<nu\>>> nel
  segmento che ha per estremi <math|<matrix|<tformat|<table|<row|<cell|z<around*|(|t|)>>>|<row|<cell|<wide|z|\<dot\>><around*|(|t|)>>>>>>>
  e <math|<matrix|<tformat|<table|<row|<cell|<wide|z|\<bar\>><around*|(|t|)>>>|<row|<cell|<wide|<wide|z|\<bar\>>|\<dot\>><around*|(|t|)>>>>>>>.

  A questo punto poniamo ora:

  <\equation*>
    max<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|{|<around*|\<\|\|\>|<around*|\||<frac|\<partial\>L|\<partial\>z<around*|(|t|)>>|\|><rsub|w<around*|(|t|)>>|\<\|\|\>>,<around*|\<\|\|\>|<around*|\||<frac|\<partial\>L|\<partial\><wide|z|\<dot\>><around*|(|t|)>>|\|><rsub|w<around*|(|t|)>>|\<\|\|\>>|}>\<leqslant\>C<space|1em><underline|su
    un insieme compatto>
  </equation*>

  Ottenendo di conseguenza:

  <\equation*>
    <around*|\||J<around*|(|z|)>-J<around*|(|<wide|z|\<bar\>>|)>|\|>\<leqslant\>C<around*|(|<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|\<\|\|\>|z<around*|(|t|)>-<wide|z|\<bar\>><around*|(|t|)>|\<\|\|\>>\<partial\>t+<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>*<around*|\<\|\|\>|<wide|z|\<dot\>><around*|(|t|)>-<wide|<wide|z|\<bar\>>|\<dot\>><around*|(|t|)>|\<\|\|\>>\<partial\>t|)>\<leqslant\>C<around*|(|t<rsub|f>-t<rsub|i>|)><around*|\<\|\|\>|z-<wide|z|\<bar\>>|\<\|\|\>>
  </equation*>

  Il risulatato appena ottenuto, considerano il caso peggio del valore delle
  funzioni che possono raggiungere, coincide con il <math|sup<rsub|t>> e
  quindi coincide con al <with|font-series|bold|norma debole>. Concludendo
  che <math|\<forall\>\<varepsilon\>\<gtr\>0>, ponendo
  <math|\<delta\><rsub|\<varepsilon\>><around*|(|z,<wide|z|\<bar\>>|)>=<frac|\<varepsilon\>|C<around*|(|t<rsub|f>-t<rsub|i>|)>>\<rightarrow\><around*|\||J<around*|(|z|)>-J<around*|(|<wide|z|\<bar\>>|)>|\|>\<less\>\<varepsilon\>>.

  Il funzionale di Lagrange è <with|font-series|bold|uniformramente
  continuo>.

  <\remark>
    Se avessimo considerato la <with|font-series|bold|norma forte>, la
    dimostrazione non sarebbe stata più vera poiché pur essendo piccolo
    <math|<around*|\<\|\|\>|z-<wide|z|\<bar\>>|\<\|\|\>>> in norma forte
    poteva non essere piccolo il termine <math|<around*|\<\|\|\>|<wide|z|\<dot\>><around*|(|t|)>-<wide|<wide|z|\<bar\>>|\<dot\>><around*|(|t|)>|\<\|\|\>>>.
    A tale scopo possiamo immaginare due funzionali in norma forte molto
    vicino ( a livello di lunghezze), ma una delle due funzione in realtà
    oscilla attorno alla funzion più \Ppulita\Q e quindi ha derivate
    direzionali, molto elevate.

    Quindi, appartentemente in norma forte le funzioni sono molto vicine e il
    funzionale appare uniformamente continui; tuttavia, considerando la norma
    debole, le due funzioni sono molto lontane.
  </remark>

  <section|Variazione di Funzionale>

  La <with|font-series|bold|variazione di funzionale> generalizza il concetto
  di <underline|derivata funzionale> di funzioni su
  <math|\<bbb-R\><rsup|\<nu\>>.>

  Dato un punto <math|<wide|z|\<bar\>>\<in\>Z> e una direzione
  <math|h\<in\>Z>, consideriamo la funzione della variabile scalare non
  negativa <math|\<alpha\>:>

  <\equation*>
    <wide|J|\<bar\>><around*|(|\<alpha\>|)>=J<around*|(|<wide|z|\<bar\>>+\<alpha\>*h|)>
  </equation*>

  <\definition>
    <underline|Variazione totale con <math|<wide|z|\<bar\>>,h> fissati>

    Dato il funzionale cui sopra e le relative ipotesi, definiamo la
    <with|font-series|bold|variazione totale> come:

    <\equation*>
      J<around*|(|<wide|z|\<bar\>>+\<alpha\>h|)>-J<around*|(|<wide|z|\<bar\>>|)>=<wide|J|\<bar\>><around*|(|\<alpha\>|)>-<wide|J|\<bar\>><around*|(|0|)>=\<Delta\><wide|J|\<bar\>><around*|(|<wide|z|\<bar\>>,\<alpha\>*h|)>
    </equation*>
  </definition>

  Ora, supponiamo che la funzione <math|<wide|J|\<bar\>><around*|(|\<alpha\>|)>>
  sia derivabile <math|n> volte con continuità ripetto ad <math|\<alpha\>>
  nell'intorno dell'origine, e consideriamo lo sviluppo in serie:

  <\equation*>
    <wide|J|\<bar\>><around*|(|\<alpha\>|)>=<big|sum><rsub|k=0><rsup|n><frac|d*<wide|J|\<bar\>><around*|(|\<alpha\>|)>|d*\<alpha\><rsup|k>><mid|\|>
    <rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|<rsub|\<alpha\>=0>>>>>>>>>>>>>><frac|\<alpha\><rsup|k>|k!>+\<tau\><rsub|n+1><around*|(|\<alpha\>|)>
  </equation*>

  <\definition>
    <underline|Variazione>

    Se <math|J<around*|(|<wide|z|\<bar\>>+\<alpha\>*h|)>> è derivabile con
    continuità <math|n> volte rispetto a <math|\<alpha\>> nell'intonro
    dell'origine <math|\<forall\>h\<in\>Z> e risulta:

    <\equation*>
      lim<rsub|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>\<rightarrow\>0><frac|\<tau\><rsub|n+1><around*|(|<wide|z|\<bar\>>,\<alpha\>*h|)>|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>><rsup|n>>=0
    </equation*>

    cioè che il resto è un infinitesimo di ordine superiore rispetto a
    <math|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>><rsup|n>>, definiamo
    <with|font-series|bold|variazione di ordine k di J> nel punto
    <math|<wide|z|\<bar\>>> e nella direzione <math|h>:

    <\equation*>
      \<delta\><rsup|k>J<around*|(|<wide|z|\<bar\>>,h|)>=<frac|\<partial\><rsup|k>J<around*|(|<wide|z|\<bar\>>+h|)>|\<partial\>\<alpha\><rsup|k>><mid|\|><rsub|\<alpha\>=0><space|1em>k=1,2,\<ldots\>,n<label|vartot>
    </equation*>

    <\note>
      L'esistenza della variazione dipende dal tipo di norma scelta.
    </note>
  </definition>

  <\proposition>
    La variazione prima è un funzionale linerare rispetto a h; la variazione
    seconda è quadratico m h e così via.<label|linquad>

    <\proof>
      <reference|linquad>

      <\remark>
        Un'applicazione per essere lineare deve essere omogenea e deve
        soddisfare la sovrapposizione degli effetti.
      </remark>

      Occorre dimostrare che:

      <\equation*>
        \<delta\>J<around*|(|<wide|z|\<bar\>>,\<sigma\><rprime|'>*h<rprime|'>+\<sigma\><rprime|''>*h<rprime|''>|)>=<frac|\<partial\>J<around*|(|<wide|z|\<bar\>>+\<alpha\>*\<sigma\><rprime|'>*h<rprime|'>+\<alpha\>*\<sigma\><rprime|''>*h<rprime|''>|)>|\<partial\>\<alpha\>><mid|\|><rsub|\<alpha\>=0>=
      </equation*>

      <\remark>
        è una derivata di una funzione compsota:
        <math|<frac|\<partial\>J|\<partial\><around*|(|\<alpha\>*\<sigma\><rprime|'>|)>>*<frac|\<partial\>*\<alpha\>*\<sigma\><rprime|'>|\<partial\>\<alpha\>>>
        <label|devcomposta>
      </remark>

      <\equation*>
        =<frac|\<partial\>J<around*|(|\<cdot\>|)>|\<partial\><around*|(|\<alpha\>*\<sigma\><rprime|'>|)>>*\<sigma\><rprime|'><mid|\|><rsub|\<alpha\>=0>+<frac|\<partial\>J<around*|(|\<cdot\>|)>|\<partial\><around*|(|\<alpha\>*\<sigma\><rprime|''>|)>>*\<sigma\><rprime|''><mid|\|><rsub|\<alpha\>=0>=
      </equation*>

      <\remark>
        Tramite la variazione totale <reference|vartot> e
        <reference|devcomposta>, è possibile scrivere:

        <\equation*>
          =\<delta\>J<around*|(|<wide|z|\<bar\>>+\<sigma\><rprime|''>*h<rprime|''>,h<rprime|'>|)>\|<rsub|\<alpha\>=0>*\<sigma\><rprime|'>+\<delta\>J<around*|(|<wide|z|\<bar\>>+\<sigma\><rprime|'>*h<rprime|'>,h<rprime|''>|)>\|<rsub|\<alpha\>=0>*\<sigma\><rprime|''>=
        </equation*>

        <\equation*>
          =\<sigma\><rprime|'>\<delta\>J<around*|(|<wide|z|\<bar\>>,h<rprime|'>|)>+\<sigma\><rprime|''>\<delta\>J<around*|(|<wide|z|\<bar\>>,h<rprime|''>|)>
        </equation*>
      </remark>

      Vale la sovrapposizione degli effetti e l'omogeneità.

      La variazione prima è un funzionale lineare rispetto ad h.
    </proof>
  </proposition>

  <\example>
    <\underline>
      <with|font-series|bold|<with|font-shape|italic|Funzionale di Lagrange>>
    </underline>

    <\example>
      In riferiemnto al funzionale di Lagrange <reference|lagrangiano>
      calcolaiamo le variazioni prima e seconda:

      <\equation*>
        J<around*|(|z|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>,t|)>dt<space|1em>
        in Z=<wide|C|\<bar\>><rsup|1><around*|[|t<rsub|i>,t<rsub|f>|]>
      </equation*>

      con norma debole.

      Supponiamo <math|L\<in\>C<rsup|2><around*|(|\<bbb-R\><rsup|\<nu\>>\<times\>\<bbb-R\><rsup|\<nu\>>*\<times\>\<bbb-R\><rsup|>|)>>

      Per qualunque coppia di funzioni <math|<overline|z>,h\<in\><overline|C<rsup|1>>><math|<around*|[|t<rsub|i>,t<rsub|f>|]>>
      e <math|\<forall\>\<alpha\>\<gtr\>0:>

      <\equation*>
        J<around*|(|<overline|z>+\<alpha\>*h|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><frac|L<around*|(|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>,t|)>|>dt+\<alpha\>*<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|(|<frac|\<partial\>L|\<partial\>z<around*|(|t|)>>\|<rsub|<overline|z><around*|(|t|)>,<wide|z<around*|(|t|)>|\<dot\>>>*h<around*|(|t|)>+<frac|\<partial\>L|\<partial\><wide|z|\<dot\>><around*|(|t|)>>\|<rsub|<overline|z<around*|(|t|)>>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>*<wide|h|\<dot\>><around*|(|t|)>|)>dt+\<tau\><rsub|2><around*|(|<overline|z>,\<alpha\>*h|)>
      </equation*>

      In cui:

      <\equation*>
        \<tau\><rsub|2><around*|(|<overline|z>,\<alpha\>*h|)>=<frac|\<alpha\><rsup|2>|2><big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|(|h<rsup|T><around*|(|t|)>*<frac|\<partial\><rsup|2>L|\<partial\>*<rsup|2>z<around*|(|t|)>>\|<rsub|<wide|\<alpha\>|^>>h<around*|(|t|)>+2*h<rsup|T><around*|(|t|)><frac|\<partial\><rsup|2>L|\<partial\>z<around*|(|t|)>\<partial\><wide|z|\<dot\>><around*|(|t|)>><mid|\|><rsub|<wide|\<alpha\>|^>><wide|h|\<dot\>><around*|(|t|)>+<wide|h|\<dot\>><around*|(|t|)><frac|\<partial\><rsup|2>L|\<partial\><rsup|2>z<around*|(|t|)>>\|<rsub|<wide|\<alpha\>|^>><wide|h|\<dot\>><around*|(|t|)>|)>dt
      </equation*>

      <\note>
        <math|<wide|\<alpha\>|^> >è un incremento in
        <math|<around*|[|0,\<alpha\>|]>>. Dunque per il teorema del valor
        medio, cerchiamo di trovare una maggiorazione considerantdo il caso
        \Ppeggiore\Q in questo caso sfruttando la disuguaglianza triangolare
        <math|<around*|(|<around*|\<\|\|\>|x*y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>*<around*|\<\|\|\>|y|\<\|\|\>>|)>>,
        abbiamo trovato un termine maggiore di <math|\<tau\><rsub|2>> che va
        a zero:
      </note>

      <\equation*>
        0\<leqslant\><frac|<around*|\||\<tau\><rsub|2><around*|(|<overline|z>,\<alpha\>*h|)>|\|>|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>>\<leqslant\><frac|\<alpha\><rsup|2>|2>*M*<frac|<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|(|<around*|\<\|\|\>|h<around*|(|t|)>|\<\|\|\>><rsup|2>+2*<around*|\<\|\|\>|h<around*|(|t|)>|\<\|\|\>>*<around*|\<\|\|\>|<wide|h|\<dot\>><around*|(|t|)>|\<\|\|\>>+<around*|\<\|\|\>|<wide|h|\<dot\>><around*|(|t|)>|\<\|\|\>><rsup|2>|)>dt|<around*|\<\|\|\>|\<alpha\>h|\<\|\|\>>>
      </equation*>

      In cui:

      <\equation*>
        M\<geqslant\>max<around*|{|max<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|<frac|\<partial\><rsup|2>L|\<partial\><rsup|2>z<around*|(|t|)>>\|<rsub|<wide|\<alpha\>|^>>|\<\|\|\>>,\<ldots\>|}>
      </equation*>

      Dunque:

      <\math>
        lim<rsub|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>\<rightarrow\>0><frac|\<tau\><rsub|n+1><around*|(|<wide|z|\<bar\>>,\<alpha\>*h|)>|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>><rsup|n>>\<leqslant\>lim<rsub|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>\<rightarrow\>0><frac|\<alpha\><rsup|2>|2>M<around*|(|t<rsub|f>-t<rsub|i>|)><frac|<around*|(|ax<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|h<around*|(|t|)>|\<\|\|\>><rsup|2>+2*ax<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|h<around*|(|t|)>|\<\|\|\>>*<around*|\<\|\|\>|<wide|h|\<dot\>><around*|(|t|)>|\<\|\|\>>+ax<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|<wide|h|\<dot\>><around*|(|t|)>|\<\|\|\>><rsup|2>|)>|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>><rsup|n>>
      </math>

      <\equation*>
        =lim<rsub|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>\<rightarrow\>0>M*<around*|(|t<rsub|f>-t<rsub|i>|)>*<frac|<around*|(|max<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|\<alpha\>*h<around*|(|t|)>|\<\|\|\>>+max<rsub|t\<in\><around*|[|t<rsub|i>,t<rsub|f>|]>><around*|\<\|\|\>|\<alpha\><wide|h|\<dot\>><around*|(|t|)>|\<\|\|\>>|)><rsup|2>|<around*|\<\|\|\>|\<alpha\>h|\<\|\|\>>>
      </equation*>

      <\equation*>
        =lim<rsub|<around*|\<\|\|\>|\<alpha\>*h|\<\|\|\>>\<rightarrow\>0>M*<around*|(|t<rsub|f>-t<rsub|i>|)><frac|<around*|\<\|\|\>|\<alpha\>h<rsup|><around*|(|t|)>|\<\|\|\>><rsup|2>|<around*|\<\|\|\>|\<alpha\>*h<around*|(|t|)>|\<\|\|\>>>=0
      </equation*>

      <\remark>
        Il limite viene nullo grazio alla scelta della norma debole. Se
        avessimo suato la norma forte non saremmo giunti a questo risulato.
      </remark>

      Quindi la variazione prima esiste ed è data da:

      <\equation*>
        \<delta\>J<around*|(|<overline|z>,h|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|(|<frac|\<partial\>L|\<partial\>z<around*|(|t|)>><mid|\|><rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>*h<around*|(|t|)>+<frac|\<partial\>L|\<partial\><wide|z|\<dot\>><around*|(|t|)>><mid|\|><rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>*<wide|h|\<dot\>><around*|(|t|)>|)>dt
      </equation*>

      <\remark>
        Occorre integrare per parti in cui:

        <\equation*>
          <big|int><rsub|a><rsup|b>f<rprime|'><around*|(|x|)>*g<around*|(|x|)>*dx=f<around*|(|x|)>g<around*|(|x|)><mid|\|><rsub|a><rsup|b>-<big|int><rsub|a><rsup|b>f<around*|(|x|)>**g<rprime|'><around*|(|x|)>*dx
        </equation*>

        Con:

        <\equation*>
          g=h<around*|(|t|)><space|1em>e f=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><frac|\<partial\>L|\<partial\>z>dt
        </equation*>
      </remark>

      Quindi:

      <\equation*>
        \<delta\><rsup|>J<around*|(|<wide|z|\<bar\>>,h|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|[|<frac|\<partial\>L|\<partial\><wide|z|\<dot\>>>-<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><frac|\<partial\>L|\<partial\>z>d\<tau\>|]><rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>*<wide|h|\<dot\>><around*|(|t|)>dt+<around*|[|<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><frac|\<partial\>L|\<partial\>z><mid|\|><rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>d\<tau\>|]><rsub|t<rsub|i>><rsup|t<rsub|f>><space|2em>\<forall\><overline|z>,h\<in\>C<rsup|1><around*|[|t<rsub|i>,t<rsub|f>|]>
      </equation*>

      Qualora <math|L> sia derivabile con continuità 3 volte:
      <underline|variazione seconda>. Integrando per parti il resto
      <math|\<tau\><rsub|2>> e assumento che
      <math|<frac|\<partial\><rsup|2>L|\<partial\>z*\<partial\><wide|z|\<dot\>>>>
      simmetrica.

      <\equation*>
        \<partial\><rsup|2>J<around*|(|<overline|z>,h|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>><around*|[|h<rsup|T><around*|(|t|)><around*|(|<frac|\<partial\><rsup|2>L|\<partial\><rsup|2>z<around*|(|t|)>>-<frac|d|dt><frac|\<partial\><rsup|2>L|\<partial\>z*\<partial\><wide|z|\<dot\>>>|)><rsub|<rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>>h<around*|(|t|)>|\<nobracket\>>+
      </equation*>

      <\equation*>
        +<around*|\<nobracket\>|<wide|h|\<dot\>><rsup|T><around*|(|t|)><around*|(|<frac|\<partial\><rsup|2>L|\<partial\><rsup|2><wide|z|\<dot\>><around*|(|t|)>>|)><rsub|<rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>><wide|h|\<dot\>><around*|(|t|)>|]>dt+<around*|[|h<rsup|T><around*|(|t|)><around*|(|<frac|\<partial\><rsup|2>L|\<partial\>z*\<partial\><wide|z|\<dot\>>>|)><rsub|<rsub|<overline|z><around*|(|t|)>,<wide|<overline|z>|\<dot\>><around*|(|t|)>>>h<around*|(|t|)>|]><rsub|t<rsub|i>><rsup|t<rsub|f>>
      </equation*>

      Infine, considerando <math|J<around*|(|z|)>=<big|int><rsub|t<rsub|i>><rsup|t<rsub|f>>L<around*|(|z<around*|(|t|)>,<wide|z|\<dot\>><around*|(|t|)>,t|)>>
      con norma:

      \ <math|<around*|\<\|\|\>|w|\<\|\|\>>=sup<rsub|t\<in\>\<bbb-R\>><around*|\<\|\|\>|z<around*|(|t|)>|\<\|\|\>>+sup<rsub|t\<in\>\<bbb-R\>><around*|\<\|\|\>|<wide|z|\<dot\>><around*|(|t|)>|\<\|\|\>>+<around*|\||t<rsub|i>|\|>+<around*|\||t<rsub|f>|\|>>,
      la variazione prima è para a quello sopra più:

      <\equation*>
        \<delta\><rsup|>J<around*|(|<wide|z|\<bar\>>,h|)>+L<around*|(|<overline|z><around*|(|<overline|t<rsub|f>>|)>,<wide|<overline|z>|\<dot\>><around*|(|<overline|t<rsub|f>>|)>,<overline|t<rsub|f>>|)>\<tau\><rsub|f>-L<around*|(|<overline|z><around*|(|<overline|t<rsub|i>>|)>,<wide|<overline|z>|\<dot\>><around*|(|<overline|t<rsub|i>>|)>,<overline|t<rsub|i>>|)>\<tau\><rsub|i>
      </equation*>

      In cui <math|\<tau\><rsub|i>> e <math|\<tau\><rsub|f>> sono le
      direzioni rispettivamente di <math|<overline|t<rsub|i>>,><overline|<math|t<rsub|f>>>.
    </example>
  </example>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|I|1|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-2|<tuple|1|7|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-3|<tuple|2|9|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-4|<tuple|2.1|9|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-5|<tuple|1|10|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-6|<tuple|2.2|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|auto-7|<tuple|2.3|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|cconti|<tuple|2.7|10|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|devcomposta|<tuple|2.39|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|lagrangiano|<tuple|2.30|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|linquad|<tuple|2.37|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
    <associate|vartot|<tuple|2.35|?|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_4.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|I<space|2spc>Ottimizzazione
      nei sistemi di controllo II> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Funzionali
      su spazi lineari:> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      2.1<space|2spc>Spazi Lineari Normati
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>

      <with|par-left|<quote|4tab>|Norme <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.15fn>>
    </associate>
  </collection>
</auxiliary>