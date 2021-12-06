<TeXmacs|1.99.20>

<style|<tuple|generic|italian>>

<\body>
  <center|<doc-data|<doc-title|Esercizi MOBD>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizi KKT
    per problemi vincolati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizi KKT
    per problemi con Vincoli di Box> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizio
    Iperpiano > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizio
    Iperpiano Ottimo Duale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizio SVM
    Lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizio SVM
    Non Lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|Esercizi
    Decomposizione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <with|par-left|1tab|Esercizio SVM Light
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|K-Means>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>
  </table-of-contents>

  <section*|Esercizi KKT per problemi vincolati>

  <\problem*>
    Dato il problema nella forma:

    <\equation*>
      <choice|<tformat|<table|<row|<cell|min
      f<around*|(|x|)>>>|<row|<cell|g<around*|(|x|)>\<leqslant\>0<space|1em><around*|(|\<lambda\><rsub|i>|)>>>|<row|<cell|h<around*|(|x|)>=0<space|1em><around*|(|\<mu\><rsub|i>|)>>>>>>
    </equation*>

    <\enumerate>
      <item>Il problema ammette soluzione?

      <item>Il problema è convesso?

      <item>Scrivere KKT e risolvere KKT.

      <item>Verificare se un punto <math|x> è regolare, soddisfa KKT e le
      conclusioni che si possono trarre.

      <item>Verificare se un punto è ottimo.
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <with|font-series|bold|(1)> Per verificare che il problema ammette
    soluzioni:

    <\itemize>
      <item><underline|<with|font-series|bold|Teorema di
      Weierstrass>(Condizione Sufficiente):>

      Se <math|f<around*|(|x|)>> continua e <math|S>
      compatta<math|\<longrightarrow\>\<exists\>>minimo o massimo globale. In
      particolare, l'insieme <math|S> è compatto se chiuso e limitato.

      <item><underline|<with|font-series|bold|Coercività>(Condizione
      sufficiente):>

      Nel caso in cui si voglia utilizzare la coercività, occorre o trovare
      una successione per cui la <math|f<around*|(|x|)>> diventa illimitata o
      verificare gli insiemi di livello della funzione:

      <\equation*>
        \<cal-L\><around*|(|\<alpha\>|)>=<around*|{|x\<in\>S:f<around*|(|x|)>\<leqslant\>\<alpha\>|}><space|1em>\<alpha\>=f<around*|(|x<rsub|0>|)>,x<rsub|0>\<in\>S
        iniziale
      </equation*>

      Quindi, se la funzione <math|f<around*|(|x|)>> è continua e
      coerciva<math|\<rightarrow\>\<exists\>> minimo o massimo globale.

      Nel caso in cui ne Wierstrass ne la coercività vengono soddisfatti,
      allora non si può concludere nulla.
    </itemize>

    <with|font-series|bold|(2)> Affinché il problema sia convesso occorre che
    la <math|f<around*|(|x|)>> sia convessa e l'insieme ammissibile <math|S>
    sia anch'esso convesso.Nel caso in cui queste condizioni vengano
    soddisfatte le condizioni successive diventano necessarie e sufficienti,
    altrimenti solo necessarie. A tale scopo:

    <\enumerate>
      <\itemize>
        <item>Verifica, se possibile, grafica;

        <item>Tutto ciò che è lineare è convesso;

        <item>La funzione non lineare <math|f<around*|(|x|)>> è convessa su
        <math|S> se la sua relativa matrice Hessiana:

        <\equation*>
          \<nabla\><rsup|2>f<around*|(|x|)>=<matrix|<tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|1>>
          <frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|2>\<partial\><rsup|>x<rsub|1>>\<ldots\>\<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|n>\<partial\><rsup|>x<rsub|1>>
          \ >>|<row|<cell|<frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|2>\<partial\><rsup|>x<rsub|1>><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|2>>\<ldots\>\<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|n>\<partial\><rsup|>x<rsub|1>>>>|<row|<cell|\<vdots\><space|2em>\<vdots\><space|2em>\<vdots\><space|2em>\<vdots\><space|1em>\<vdots\>>>|<row|<cell|<frac|\<partial\><rsup|2>f|\<partial\>x<rsub|1>\<partial\>>\<ldots\>
          \<ldots\> \<ldots\> \<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|n>>>>>>>
        </equation*>

        è convessa. Questa verifica viene effettuata tramite il criterio dei
        minori di Nord-Ovest o più in generale:

        <item>Applico criterio di nord-ovest:

        <\enumerate-Alpha>
          <item>tutti i minori hanno determinante \<gtr\>0
          <math|\<longrightarrow\>STOP<space|1em>Q\<succ\>0>

          <item>Si ha un minore con determinante =0
          <math|\<longrightarrow\><with|font-series|bold|Criterio minori
          principali>:>

          <\enumerate-roman>
            <item>tutti i minori principali hanno determinante
            <math|\<geqslant\>0\<longrightarrow\>STOP\<longrightarrow\>Q\<succcurlyeq\>0>

            <item>trovo minore con determinante \<less\>0:

            <\enumerate-alpha>
              <item>se i minori principali hanno determinante \<gtr\>0 e un
              determinante \<less\>0

              <\equation*>
                \<longrightarrow\>STOP\<Longrightarrow\>Q indefinita
              </equation*>

              <item>Ritorno al passo 1 considerando <math|-Q> per dedurne la
              (semi)definita negatività.
            </enumerate-alpha>
          </enumerate-roman>
        </enumerate-Alpha>

        \;
      </itemize>
    </enumerate>

    <with|font-series|bold|(3)> KKT fornisce condizioni necessarie e
    sufficienti o solo necessarie in base, rispettivamente, alla convessità o
    meno del problema. Quindi ne deriva che, se il problema è non convesso,
    allora i punti che soddisfano KKT sono candidati all'ottimo globale e
    quindi sono minimi locali. Per scrivere KKT occorre:

    <\itemize>
      <item><with|font-series|bold|<underline|Lagrangiana generalizzata:>>

      <\equation*>
        <\equation*>
          L<around*|(|x\<comma\>\<lambda\><rsub|0>,\<lambda\>,\<mu\>|)>=\<lambda\><rsub|0>*f<around*|(|x|)>+<big|sum><rsub|i=1><rsup|m>\<lambda\><rsub|i>*g<rsub|i><around*|(|x|)>+<big|sum><rsub|j=1><rsup|p>\<mu\><rsub|j>*h<rsub|j><around*|(|x|)>
        </equation*>
      </equation*>

      <item><underline|<with|font-series|bold|Condizioni Necessarie di KKT:>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<tformat|<table|<row|<cell|\<nabla\>f<around*|(|x<rsup|\<ast\>>|)>+\<nabla\>g<around*|(|x<rsup|\<ast\>>|)>*\<lambda\><rsup|\<ast\>>+\<nabla\>h<around*|(|x<rsup|\<ast\>>|)>*\<mu\><rsup|\<ast\>>=0>>|<row|<cell|g<around*|(|x<rsup|\<ast\>>|)>\<leqslant\>0,h<around*|(|x<rsup|\<ast\>>|)>=0>>|<row|<cell|\<lambda\><rsup|\<ast\>T>*g<around*|(|x<rsup|\<ast\>>|)>=0>>|<row|<cell|\<lambda\><rsup|\<ast\>>\<geqslant\>0>>>>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </itemize>

    A questo punto trovo dei candidati <math|x<rsup|\<ast\>>> ad essere
    ottimi globali.

    <with|font-series|bold|<underline|N.B.:> Si consiglia la risoluzione di
    KKT e FJ partendo dalla complementarietà discutengo i casi in cui i
    moltiplicatori <math|\<lambda\><rsub|i>> siano <math|\<geqslant\>0>>

    <with|font-series|bold|(4)+(5)> L'iter da seguire per verificare se un un
    punto <math|x<rsup|\<ast\>>> candidato è tale occorre:

    <\enumerate>
      <item>Se il punto soddisfa KKT, allora quest'ultimo è un candidato.
      Altrimenti:

      <\enumerate>
        <item>Applico le condizioni di regolarità/qualificazione dei vincoli
        dei vincoli:

        <\itemize>
          <item><underline|<with|font-series|bold|LICQ:>><math|x<rsup|\<ast\>>>,
          candidato di minimo locale, soddisfa <with|font-series|bold|LICQ>
          se per i vettori <math|\<nabla\>g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>
          con <math|i\<in\>I<around*|(|x<rsup|\<ast\>>|)>=<around*|{|i=1,\<ldots\>,n:g<rsub|i><around*|(|x<rsup|\<ast\>>|)>=0|}>>
          (insieme dei vincoli attivi) e <math|\<nabla\>h<rsub|j><around*|(|x<rsup|\<ast\>>|)><space|1em>j=1,\<ldots\>,p>
          sono <with|font-series|bold|linearmente indipendenti> allora
          <math|\<lambda\><rsub|0><rsup|\<ast\>>\<neq\>0>.\ 

          Quindi nei vincoli soddisfatti per il punto scrivo il gradiente
          <math|\<nabla\>g<rsub|i><around*|(|x<rsup|\<ast\>>|)>> e questi,
          una volta sostituito il punto <math|x<rsup|\<ast\>>> devono avere
          rango pieno, quindi sono non singolari.

          <item><underline|<with|font-series|bold|Mangasarian-Fromovitz:>>Sia
          <math|x<rsup|\<ast\>>\<in\>S> e supponiamo che <math|g,h> siano
          continuamente differenziabili in un intorno di
          <math|x<rsup|\<ast\>>>. Si dice che è soddisfatta in
          <math|x<rsup|\<ast\>>> la condizione di qualificazione dei vincoli
          di <with|font-series|bold|Mangasarian-Fromovitz> se:

          <\enumerate-roman>
            <item>I gradienti dei vincoli di eguaglianza
            <math|<around*|{|\<nabla\>h<rsub|j><around*|(|x<rsup|\<ast\>>|)>,j=1,\<ldots\>,p|}>>
            sono linearmente indipendenti;

            <item><math|\<nabla\>g<rsub|i><around*|(|x<rsup|\<ast\>>|)><rsup|T>d\<less\>0<space|1em>\<forall\>i\<in\>I<around*|(|x<rsup|\<ast\>>|)><space|1em>\<nabla\>h<rsub|i><around*|(|x<rsup|\<ast\>>|)><rsup|T>*d=0<space|1em>\<forall\>i=1,\<ldots\>,p>;
          </enumerate-roman>

          <item><underline|<with|font-series|bold|Condizioni di
          Slater:>>Nelle <with|font-series|bold|condizioni di Slater>
          consideriamo il caso in cui l'insieme ammissibile è definito
          attraverso vincoli convessi di diseguaglianza. Quindi:

          Supponiamo che le funzioni <math|g<rsub|i>> siano convesso e
          continuamente differenziabili su un insieme aperto convesso
          contenente l'insieme ammissibile:

          <\equation*>
            S=<around*|{|x\<in\>\<bbb-R\><rsup|n>:g<around*|(|x|)>\<leqslant\>0|}>
          </equation*>

          Si dice che è la condizione di Slater è soddisfatta se esiste
          <math|<wide|x|^>\<in\>S> tale che:

          <\equation*>
            g<around*|(|<wide|x|^>|)>\<less\>0
          </equation*>

          Cioè che il punto <math|<wide|x|^>> sia interno all'insieme.

          <item><underline|<with|font-series|bold|Linearità dei vincoli di
          eguaglianza e concavità:>>Supponiamo che i vincoli di eguaglianza
          siano <with|font-shape|italic|lineari> e che i vincoli di
          diseguaglianza attivi siano concavi nel punto
          <math|x<rsup|\<ast\>>. >In tali ipotesi è possibile trovare un
          intorno <math|B<around*|(|x<rsup|\<ast\>>,\<rho\>|)>> di
          <math|x<rsup|\<ast\>>> tale che, per ogni
          <math|x\<in\>B<around*|(|x<rsup|\<ast\>>,\<rho\>|)>> si abbia:

          <\eqnarray*>
            <tformat|<table|<row|<cell|h<rsub|i><around*|(|x|)>>|<cell|=>|<cell|h<rsub|i><around*|(|x<rsup|\<ast\>>|)>+\<nabla\>h<rsub|i><around*|(|x<rsup|\<ast\>>|)><rsup|T>*<around*|(|x-x<rsup|\<ast\>>|)><space|1em>i=1,\<ldots\>p>>|<row|<cell|g<rsub|i><around*|(|x|)>>|<cell|\<leqslant\>>|<cell|g<rsub|i><around*|(|x<rsup|\<ast\>>|)>+\<nabla\>g<rsub|i><around*|(|x<rsup|\<ast\>>|)><rsup|T><around*|(|x-x<rsup|\<ast\>>|)><space|1em>i\<in\>I<around*|(|x<rsup|\<ast\>>|)>>>>>
          </eqnarray*>

          Un caso particolare è quando tutti i vincoli attivia in
          <math|x<rsup|\<ast\>>> siano lineari.
        </itemize>

        <item>Se il punto è regolare, allora si scarta. Altrimenti applico le
        condizioni di <with|font-series|bold|<underline|Fritz-John>:>

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<nabla\><rsub|x>*L<around*|(|x<rsup|\<ast\>>,\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>,\<mu\><rsup|\<ast\>>|)>=0>|<cell|=>|<cell|\<lambda\><rsub|0><rsup|\<ast\>>*f<around*|(|x<rsup|\<ast\>>|)>+<big|sum><rsub|i=1><rsup|m>\<lambda\><rsub|i><rsup|\<ast\>>*g<rsub|i><around*|(|x<rsup|\<ast\>>|)>+<big|sum><rsub|j=1><rsup|p>\<mu\><rsub|j><rsup|\<ast\>>*h<rsub|j><around*|(|x<rsup|\<ast\>>|)>>>|<row|<cell|\<lambda\><rsub|i><rsup|\<ast\>>*g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>|<cell|=>|<cell|0<space|1em>i=1,\<ldots\>,m<space|1em>>>|<row|<cell|\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>>|<cell|\<geqslant\>>|<cell|0;<around*|(|\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>,\<mu\><rsup|\<ast\>>|)>\<neq\>0>>|<row|<cell|g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>|<cell|\<leqslant\>>|<cell|0,h<rsub|j><around*|(|x<rsup|\<ast\>>|)>=0>>>>
        </eqnarray*>

        <item>Se le condizioni di <underline|<with|font-series|bold|Fritz-John>>
        sono soddisfatte, allora il punto è candidato ad essere ottimo
        globale, altrimenti il punto viene scartato.
      </enumerate>

      <item>Le conclusioni che quindi si possono trarre è che il punto è
      solamente candidato all'ottimo globale se rispetta KKT e FJ e quindi
      sono ottimi locali. Nel caso convesso questi si traducono in candidati
      a ottimi globale che, sostituiti nella <math|f<around*|(|x|)>> hanno
      valore minimo: l'ottimo globale tra tutti questi punti è quello con
      valore di <math|f<around*|(|x|)>> minore. Altrimenti, non si può dire
      nulla.
    </enumerate>
  </answer*>

  <section*|Esercizi KKT per problemi con Vincoli di Box>

  <\problem*>
    Dato un problema nella forma:

    <\equation*>
      <choice|<tformat|<table|<row|<cell|min
      f<around*|(|x|)>>>|<row|<cell|l<rsub|i>\<leqslant\>x<rsub|i>\<leqslant\>u<rsub|i>>>>>><space|1em>i=1,\<ldots\>,n
    </equation*>

    <\equation*>
      l<rsub|i>-x<rsub|i>\<leqslant\>0<space|1em>i=1,\<ldots\>,n<space|1em><around*|(|\<lambda\><rsub|i>|)>
    </equation*>

    <\equation*>
      x<rsub|i>-u<rsub|i>\<leqslant\>0<space|1em>i=1,\<ldots\>,n<space|1em><around*|(|\<mu\><rsub|i>|)>
    </equation*>

    <\enumerate>
      <item>Il problema ammette soluzione?

      <item>Il problema è convesso?

      <item>Scrivere KKT e risolvere KKT.

      <item>Verificare se un punto <math|x> è regolare, soddisfa KKT e le
      conclusioni che si possono trarre.

      <item>Verificare se un punto è ottimo.
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <with|font-series|bold|(1)> Per verificare che il problema ammette
    soluzioni:

    <\itemize>
      <item><underline|<with|font-series|bold|Teorema di
      Weierstrass>(Condizione Sufficiente):>

      Se <math|f<around*|(|x|)>> continua e <math|S>
      compatta<math|\<longrightarrow\>\<exists\>>minimo o massimo globale. In
      particolare, l'insieme <math|S> è compatto se chiuso e limitato.

      <item><underline|<with|font-series|bold|Coercività>(Condizione
      sufficiente):>

      Nel caso in cui si voglia utilizzare la coercività, occorre o trovare
      una successione per cui la <math|f<around*|(|x|)>> diventa illimitata o
      verificare gli insiemi di livello della funzione:

      <\equation*>
        \<cal-L\><around*|(|\<alpha\>|)>=<around*|{|x\<in\>S:f<around*|(|x|)>\<leqslant\>\<alpha\>|}><space|1em>\<alpha\>=f<around*|(|x<rsub|0>|)>,x<rsub|0>\<in\>S
        iniziale
      </equation*>

      Quindi, se la funzione <math|f<around*|(|x|)>> è continua e
      coerciva<math|\<rightarrow\>\<exists\>> minimo o massimo globale.

      Nel caso in cui ne Wierstrass ne la coercività vengono soddisfatti,
      allora non si può concludere nulla.
    </itemize>

    <with|font-series|bold|(2)> Affinché il problema sia convesso occorre che
    la <math|f<around*|(|x|)>> sia convessa e l'insieme ammissibile <math|S>
    sia anch'esso convesso.Nel caso in cui queste condizioni vengano
    soddisfatte le condizioni successive diventano necessarie e sufficienti,
    altrimenti solo sufficienti. A tale scopo:

    <\enumerate>
      <\itemize>
        <item>Verifica, se possibile, grafica;

        <item>Tutto ciò che è lineare è convesso;

        <item>La funzione non lineare <math|f<around*|(|x|)>> è convessa su
        <math|S> se la sua relativa matrice Hessiana:

        <\equation*>
          \<nabla\><rsup|2>f<around*|(|x|)>=<matrix|<tformat|<table|<row|<cell|<frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|1>>
          <frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|2>\<partial\><rsup|>x<rsub|1>>\<ldots\>\<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|n>\<partial\><rsup|>x<rsub|1>>
          \ >>|<row|<cell|<frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|2>\<partial\><rsup|>x<rsub|1>><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|2>>\<ldots\>\<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\>x<rsub|n>\<partial\><rsup|>x<rsub|1>>>>|<row|<cell|\<vdots\><space|2em>\<vdots\><space|2em>\<vdots\><space|2em>\<vdots\><space|1em>\<vdots\>>>|<row|<cell|<frac|\<partial\><rsup|2>f|\<partial\>x<rsub|1>\<partial\>>\<ldots\>
          \<ldots\> \<ldots\> \<ldots\><frac|\<partial\><rsup|2>f<around*|(|x|)>|\<partial\><rsup|2>x<rsub|n>>>>>>>
        </equation*>

        è convessa. Questa verifica viene effettuata tramite il criterio dei
        minori di Nord-Ovest o più in generale:

        <item>Applico criterio di nord-ovest:

        <\enumerate-Alpha>
          <item>tutti i minori hanno determinante \<gtr\>0
          <math|\<longrightarrow\>STOP<space|1em>Q\<succ\>0>

          <item>Si ha un minore con determinante =0
          <math|\<longrightarrow\><with|font-series|bold|Criterio minori
          principali>:>

          <\enumerate-roman>
            <item>tutti i minori principali hanno determinante
            <math|\<geqslant\>0\<longrightarrow\>STOP\<longrightarrow\>Q\<succcurlyeq\>0>

            <item>trovo minore con determinante \<less\>0:

            <\enumerate-alpha>
              <item>se i minori principali hanno determinante \<gtr\>0 e un
              determinante \<less\>0

              <\equation*>
                \<longrightarrow\>STOP\<Longrightarrow\>Q indefinita
              </equation*>

              <item>Ritorno al passo 1 considerando <math|-Q> per dedurne la
              (semi)definita negatività.
            </enumerate-alpha>
          </enumerate-roman>
        </enumerate-Alpha>

        \;
      </itemize>
    </enumerate>

    \;

    <with|font-series|bold|(3)> Essendo vincoli lineari, possiamo applicare
    le condizioni di KKT per ottenere condizioni necessarie di minimo locale.
    A tale scopo definiamo la Lagrangiana:

    <\equation*>
      L<around*|(|x,<wide|\<lambda\>|^>,\<lambda\>|)>=f<around*|(|x|)>+<big|sum><rsub|i=1><rsup|m><wide|\<lambda\><rsub|i>|^>*<around*|(|l<rsub|i>-x<rsub|i>|)>+<big|sum><rsub|j=1><rsup|n>\<lambda\><rsub|i><around*|(|x<rsub|i>-u<rsub|i>|)>
    </equation*>

    <\equation*>
      L<around*|(|x,<wide|\<lambda\>|^>,\<lambda\>|)>=f<around*|(|x|)>+<big|sum><rsub|i=1><rsup|m><wide|\<lambda\><rsub|i>|^>*<around*|(|l<rsub|i>-x<rsub|i>|)>+<big|sum><rsub|j=1><rsup|n>\<lambda\><rsub|i><around*|(|x<rsub|i>-u<rsub|i>|)>
    </equation*>

    Scriviamo le condizioni di KKT:

    <\equation*>
      \<exists\><around*|(|<wide|\<lambda\><rsub|>|^><rsup|\<star\>>,\<lambda\><rsup|\<ast\>>|)>
      t.c. \<nabla\>L<around*|(|x<rsup|\<ast\>>,<wide|\<lambda\><rsub|>|^><rsup|\<star\>>,\<lambda\><rsup|\<ast\>>|)>=0=\<nabla\>f<around*|(|x<rsup|\<ast\>>|)>-<wide|\<lambda\><rsub|>|^><rsup|\<star\>>+\<lambda\><rsup|\<ast\>>
    </equation*>

    <\equation*>
      <frac|\<partial\>f<around*|(|x<rsup|\<ast\>>|)>|\<partial\>x<rsub|i>>-<wide|\<lambda\><rsub|i><rsub|>|^><rsup|\<star\>>+\<lambda\><rsub|i><rsup|\<star\>>=0<space|1em>i=1,\<ldots\>,n
    </equation*>

    <\equation*>
      <wide|\<lambda\>|^><rsub|i><rsup|\<ast\>>*<around*|(|l<rsub|i>-x<rsub|i><rsup|\<ast\>>|)>=0<space|1em>i=1,\<ldots\>n
    </equation*>

    <\equation*>
      \<lambda\><rsub|i><rsup|\<ast\>><around*|(|x<rsub|i><rsup|\<ast\>>-u<rsub|i><rsub|>|)>=0<space|1em>i=1,\<ldots\>,n
    </equation*>

    <\equation*>
      <wide|\<lambda\><rsub|>|^><rsup|\<star\>>,\<lambda\><rsub|i><rsup|\<ast\>>\<geqslant\>0<space|1em>i=1,\<ldots\>,n
    </equation*>

    <\equation*>
      l<rsub|i>\<leqslant\>x<rsub|i><rsup|\<ast\>>\<leqslant\>u<rsub|i>
    </equation*>

    <with|font-series|bold|(4)+(5)> Condizione necessarie (e sufficiente se
    il problema è convesso) sono:

    <\equation*>
      <frac|\<partial\>f|\<partial\>x<rsub|i>>=<choice|<tformat|<table|<row|<cell|\<geqslant\>0<space|1em>se
      x<rsub|i><rsup|\<ast\>>=l<rsub|i>>>|<row|<cell|=0<space|1em>se
      l<rsub|i>\<less\>x<rsub|i><rsup|\<ast\>>\<less\>u<rsub|i>>>|<row|<cell|\<leqslant\>0<space|1em>se
      x<rsub|i><rsup|\<ast\>>=u<rsub|i>>>>>>
    </equation*>

    Le conclusioni che quindi si possono trarre è che il punto è solamente
    candidato all'ottimo globale se rispetta KKT e FJ e quindi sono ottimi
    locali. Nel caso convesso questi si traducono in candidati a ottimi
    globale che, sostituiti nella <math|f<around*|(|x|)>> hanno valore
    minimo: l'ottimo globale tra tutti questi punti è quello con valore di
    <math|f<around*|(|x|)>> minore. Altrimenti, non si può dire nulla.
  </answer*>

  <section*|Esercizio Iperpiano >

  <\problem*>
    Dato il problema nella forma:

    <\equation*>
      TS=<around*|{|<around*|(|<matrix|<tformat|<table|<row|<cell|x<rsub|1,1>>>|<row|<cell|x<rsub|1,2>>>>>>,y<rsub|1>|)>,\<ldots\>,<around*|(|<matrix|<tformat|<table|<row|<cell|x<rsub|n,1>>>|<row|<cell|x<rsub|n,2>>>>>>,y<rsub|n>|)>|}>
    </equation*>

    <\enumerate>
      <item>Dato un iperpiano di separazione
      <math|<matrix|<tformat|<table|<row|<cell|<wide|w|^>>>|<row|<cell|>>|<row|<cell|<wide|b|^>>>>>>>trovare
      l'iperpiano di separazione ottimo <math|<matrix|<tformat|<table|<row|<cell|w<rsup|\<ast\>>>>|<row|<cell|b<rsup|\<ast\>>>>>>>>
      e verificarne l'ottimalità.
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <with|font-series|bold|(1)>

    <\enumerate>
      <item>Verifica se l'iperpiano è di separazione occorre che:

      <\equation*>
        <choice|<tformat|<table|<row|<cell|<wide|w|^><rsup|T>*x<rsup|i>+<wide|b|^>\<geqslant\>1<space|1em>\<forall\>x<rsup|i>\<in\>A<space|1em>A=<around*|{|x<rsup|i>\<in\>TS:y<rsup|i>=1|}>>>|<row|<cell|<wide|w|^><rsup|T>*x<rsup|i>+<wide|b|^>\<leqslant\>-1<space|1em>\<forall\>x<rsup|i>\<in\>A<space|1em>B=<around*|{|x<rsup|i>\<in\>TS:y<rsup|i>=-1|}>>>>>>
      </equation*>

      <item>Il problema è nella forma:

      <\equation*>
        <tformat|<table|<row|<cell|max<rsub|w,b>
        \<rho\><around*|(|w,b|)>>|<cell|=>|<cell|min<rsub|x<rsup|i>\<in\>A\<cup\>B><around*|{|<frac|<around*|\||w<rsup|T>x<rsup|i>+b|\|>|<around*|\<\|\|\>|w|\<\|\|\>>>|}>>>|<row|<cell|w<rsup|T>*x<rsup|i>+b>|<cell|\<geqslant\>>|<cell|1<space|1em>\<forall\>x<rsup|i>\<in\>A>>|<row|<cell|w<rsup|T>*x<rsup|j>+b>|<cell|\<leqslant\>>|<cell|-1<space|1em>\<forall\>x<rsup|j>\<in\>B>>>>
      </equation*>

      Diventa:

      <\equation*>
        <tformat|<table|<row|<cell|min >|<cell|<frac|1|2><around*|\<\|\|\>|w|\<\|\|\>><rsup|2>>|<cell|>>|<row|<cell|w<rsup|T>*x<rsup|i>+b>|<cell|\<geqslant\>>|<cell|1<space|1em>\<forall\>x<rsup|i>\<in\>A>>|<row|<cell|w<rsup|T>*x<rsup|j>+b>|<cell|\<leqslant\>>|<cell|-1<space|1em>\<forall\>x<rsup|j>\<in\>B>>>>
      </equation*>

      <item>Prendo <math|x<rsup|i>\<in\>A> e <math|x<rsup|j>\<in\>B> e
      calcolo:

      <\equation*>
        <wide|d|^><rsub|i>=min<rsub|x<rsup|i>\<in\>A><around*|{|<frac|<around*|\||<wide|w|^><rsup|T>x<rsup|i>+<wide|b|^>|\|>|<around*|\<\|\|\>|<wide|w|^>|\<\|\|\>>>|}>
      </equation*>

      <\equation*>
        <wide|d|^><rsub|j>=min<rsub|x<rsup|j>\<in\>B><around*|{|<frac|<around*|\||<wide|w|^><rsup|T>x<rsup|j>+<wide|b|^>|\|>|<around*|\<\|\|\>|<wide|w|^>|\<\|\|\>>>|}>
      </equation*>

      Occorre ricordarsi i punti <math|<wide|x|^><rsup|i>\<in\>A> e
      <math|<wide|x|^><rsup|j>\<in\>B> per cui si è ottenuto il minimo.

      <item>Definisco <math|\<rho\><around*|(|<wide|w|^>,<wide|b|^>|)>=min<around*|{|<wide|d<rsub|i>|^>,<wide|d|^><rsub|j>|}>=<frac|1|<around*|\<\|\|\>|<wide|w|^>|\<\|\|\>>>>.
      Verifico che:

      <\equation*>
        \<rho\><around*|(|<wide|w|^>,<wide|b|^>|)>=min<around*|{|<wide|d<rsub|i>|^>,<wide|d|^><rsub|j>|}>\<leqslant\><frac|1|2><wide|d<rsub|i>|^>+<frac|1|2><wide|d<rsub|j>|^>=<frac|<wide|w|^><rsup|T><around*|(|<wide|x|^><rsup|i>-<wide|x|^><rsup|j>|)>|2**<around*|\<\|\|\>|<wide|w|^>|\<\|\|\>>>
      </equation*>

      <item>Ora modifico <math|<around*|(|<wide|w|^>,<wide|b|^>|)>> con due
      scalari <math|\<alpha\>,\<beta\>> per ottenere il nuovo iperpiano
      candidato all'ottimo <math|<around*|(|<overline|w>,<overline|b>|)>>. In
      cui:

      <\equation*>
        <overline|w>=\<alpha\><wide|w|^><space|1em>\<alpha\>\<assign\>fattore
        di rotazione
      </equation*>

      <\equation*>
        <overline|b>=\<beta\><space|1em>\<beta\>\<assign\>fattore di
        traslazione
      </equation*>

      Per avere i punti sul margine del nuovo iperpiano, i coefficienti
      <math|\<alpha\>,\<beta\>> devono soddisfare:

      <\equation*>
        <choice|<tformat|<table|<row|<cell|\<alpha\>*<wide|w|^><rsup|T><wide|x|^><rsup|i>+\<beta\>=1>>|<row|<cell|\<alpha\><wide|w|^><rsup|T>*<wide|x|^><rsup|j>+\<beta\>=-1>>>>>
      </equation*>

      La soluzione <math|\<alpha\>> deve essere
      <math|0\<less\>\<alpha\>\<less\>1>. Ed in generale i coefficienti si
      presentano nella forma:

      <\equation*>
        \<alpha\>=<frac|2|<wide|w|^><rsup|T><around*|(|<wide|x|^><rsup|i>-<wide|x|^><rsup|j>|)>>;\<beta\>=<frac|*<wide|w|^><rsup|T><around*|(|<wide|x|^><rsup|i>+<wide|x|^><rsup|j>|)>|<wide|w|^><rsup|T><around*|(|<wide|x|^><rsup|i>-<wide|x|^><rsup|j>|)>>
      </equation*>

      <item>Il nuovo iperpriano per essere ammissibile deve soddisfare il
      passo 1.

      <item>Verifica che il nuovo margine sia maggiore di quello precedente;

      <item>Per verificare l'ottimalità di un iperpiano occorre studiare il
      problema primale o il suo duale:

      <\enumerate>
        <item>Scrivere il seguente problema con il vettore <math|w>
        incognito:

        <\eqnarray*>
          <tformat|<table|<row|<cell|min <rsub|w,b>>|<cell|<frac|1|2><around*|\<\|\|\>|w|\<\|\|\>><rsup|2>>|<cell|>>|<row|<cell|y<rsup|i><around*|(|w<rsup|T>*x<rsup|i>+b|)>>|<cell|\<geqslant\>>|<cell|1
          \<forall\>x<rsup|i>\<in\>T>>>>
        </eqnarray*>

        <item>Scrivere le condizioni di KKT (sono condizioni necessarie e
        sufficienti), introducendo gli opportuni moltiplicatori:

        <\equation*>
          <tabular|<tformat|<table|<row|<cell|\<nabla\><rsub|x>*L<around*|(|x<rsup|\<ast\>>,\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>,\<mu\><rsup|\<ast\>>|)>=0>|<cell|=>|<cell|\<lambda\><rsub|0><rsup|\<ast\>>*f<around*|(|x<rsup|\<ast\>>|)>+<big|sum><rsub|i=1><rsup|m>\<lambda\><rsub|i><rsup|\<ast\>>*g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>>|<row|<cell|\<lambda\><rsub|i><rsup|\<ast\>>*g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>|<cell|=>|<cell|0<space|1em>i=1,\<ldots\>,m<space|1em>>>|<row|<cell|\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>>|<cell|\<geqslant\>>|<cell|0;<around*|(|\<lambda\><rsub|0><rsup|\<ast\>>,\<lambda\><rsup|\<ast\>>,\<mu\><rsup|\<ast\>>|)>\<neq\>0>>|<row|<cell|g<rsub|i><around*|(|x<rsup|\<ast\>>|)>>|<cell|\<leqslant\>>|<cell|0>>>>>
        </equation*>

        I vincoli corrispondenti ai punti che si trovano sul margine sono i
        vincoli di attivi. Di conseguenza, tutti gli altri avranno i
        corrispondenti moltiplicatori nulli.

        <item>Si risolve KKT imponendo <math|w=<overline|w> > e
        <math|b=<overline|b>>. Se KKT è soddisfatto, allora è l'iperpiano
        ottimo altrimenti no.

        <item>Nel caso in cui l'iperpiano candidato non è dato, si risolve il
        punto <math|b> nelle incognite <math|w >e <math|b>.
      </enumerate>
    </enumerate>
  </answer*>

  <section*|Esercizio Iperpiano Ottimo Duale>

  <\problem*>
    Dato il problema in questa forma:

    <\equation*>
      <choice|<tformat|<table|<row|<cell|min
      <frac|1|2>x<rsup|T>*Q*x+c<rsup|T>x>>|<row|<cell|A*x\<geqslant\>b>>|<row|<cell|A\<in\>\<bbb-R\><rsup|m*xn>,b\<in\>\<bbb-R\><rsup|m>>>>>>
      Q\<succcurlyeq\>0
    </equation*>

    <\enumerate>
      <item>Scrivere il duale di Wolfe;

      <item>Data soluzione del duale <math|<matrix|<tformat|<table|<row|<cell|<overline|x>>>|<row|<cell|<overline|\<lambda\>>>>>>>>
      determinare e/o valutare soluzione del primale. Se fosse possibile,
      determiare valori dei moltiplicatori.
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <with|font-series|bold|(1)> Per scrivere il duale di Wolfe, ricordiamo
    che il problema di minimo diventa, nel duale, di massimo e viceversa.
    Anche il problema duale può essere ricondotto ad un problema di minimo
    secondo la relazione:

    <\equation*>
      max f<around*|(|x|)>=-min-f<around*|(|x|)>
    </equation*>

    Quindi si ottiene il seguente problema convesso:

    <\equation*>
      <choice|<tformat|<table|<row|<cell|-min<rsub|x,\<lambda\>><frac|1|2>*x<rsup|T>*Q*x+b<rsup|T>\<lambda\>=\<theta\><around*|(|x,\<lambda\>|)>>>|<row|<cell|Q*x+c+A<rsup|T>\<lambda\>=0>>|<row|<cell|\<lambda\>\<geqslant\>0>>>>>
    </equation*>

    <with|font-series|bold|(2)> Sia <math|<around*|(|<overline|x>,<overline|\<lambda\>>|)>>
    soluzione del duale, allora <math|\<exists\>x<rsup|\<ast\>>>, non
    necessariamente uguale a <math|<overline|x>>, tale che:

    <\enumerate>
      <item><math|Q<around*|(|<overline|x>-x<rsup|\<ast\>>|)>=0;>

      <item><math|x<rsup|\<ast\>>> soluzione del problema primale (P);

      <item><math|<around*|(|<overline|x>,<overline|\<lambda\>>|)>> è una
      coppia di minimo globale-moltiplicatore del primale (P);
    </enumerate>

    Di conseguenza occorre:

    <\enumerate>
      <item>Scrivere la Lagrangiana per il problema duale:

      <\equation*>
        W<around*|(|x,\<lambda\>,v,z|)>=<frac|1|2>x<rsup|T>*Qx+b<rsup|T>\<lambda\>-v<rsup|T><around*|(|Q*x+c+A<rsup|T>\<lambda\>|)>-z<rsup|T>\<lambda\>
      </equation*>

      <item>Scrivere le condizioni di KKT:

      <\equation*>
        <tformat|<cwith|1|1|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-halign|c>|<cwith|3|3|1|1|cell-halign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-halign|c>|<table|<row|<cell|\<nabla\><rsub|x>W=Q*x-Q*v=0>|<cell|>>|<row|<cell|\<nabla\><rsub|\<lambda\>>W=b-A*v-z=0>|<cell|<around*|(|a|)>>>|<row|<cell|z<rsup|T>*\<lambda\>=0>|<cell|>>|<row|<cell|z\<geqslant\>0>|<cell|>>|<row|<cell|Q*<overline|x>+
        c+A<rsup|T>*<overline|\<lambda\>>=0>|<cell|<around*|(|\<Delta\>|)>>>|<row|<cell|\<lambda\>\<geqslant\>0>|<cell|>>>>
      </equation*>

      <item>Sono soddisfatte per ipotesi dal vettore
      \ <math|<around*|(|<overline|x>,<overline|\<lambda\>>|)>>. Per trovare
      <math|x<rsup|\<ast\>>> del primale, scriviamo KKT per il primale:

      <\equation*>
        <tformat|<table|<row|<cell|\<nabla\><rsub|x>L=0=-Q*x+c+A<rsup|T>*\<lambda\>>|<cell|>>|<row|<cell|\<lambda\><rsup|T><around*|(|A*x-b|)>=0>|<cell|>>|<row|<cell|\<lambda\>\<geqslant\>0>|<cell|>>|<row|<cell|A*x\<leqslant\>b>|<cell|>>>>
      </equation*>

      <item>Da (a) <math|\<nabla\><rsub|\<lambda\>>W=b-A*v-z=0> si
      ricava:<math|z=b-A*v> (con incognita <math|v>) che sostituito nella
      complementarietà del duale:

      <\equation*>
        <overline|\<lambda\>> <rsup|T><around*|(|b-A*v|)>=0\<longrightarrow\>z\<geqslant\>0
        <around*|(|ammissibilità|)>\<longrightarrow\>A*v\<leqslant\>b<around*|(|ammissibilità
        primale di v|)>
      </equation*>

      <item>Inoltre sappiamo che:

      <\equation*>
        <\equation*>
          Q<around*|(|<overline|x>-v|)>=0\<longrightarrow\>Q*<overline|x>=Q*v
        </equation*>
      </equation*>

      <item>Sostituisco <math|Q*v> in <math|<tabular|<tformat|<cwith|1|1|1|1|cell-halign|c>|<table|<row|<cell|Q*<overline|x>+
      c+A<rsup|T>*<overline|\<lambda\>>=0>|<cell|<around*|(|\<Delta\>|)>>>>>>>
      deve soddisfare KKT.

      <item>Riepilogando, quindi:

      <\enumerate>
        <item><math|x<rsup|\<ast\>>=v><math|> <math|coppia
        <around*|(|x<rsup|\<ast\>>,<overline|\<lambda\>>|)> soddisfa KKT del
        primale>;

        <item><math|x<rsup|\<ast\>>> è la soluzione ottima del
        primale<math|\<longrightarrow\>x<rsup|\<ast\>>=v> è la soluzione
        globale

        <item><math|Q<around*|(|x-x<rsup|\<ast\>>|)>=0>
      </enumerate>
    </enumerate>
  </answer*>

  <section*|Esercizio SVM Lineari>

  <\problem*>
    Dato il problema nella forma:

    <\equation*>
      min<rsub|w,b,\<xi\>><frac|1|2>*<around*|\<\|\|\>|w|\<\|\|\>><rsup|2>+C*<big|sum><rsub|i=1><rsup|l>\<xi\><rsub|i>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rsup|i>*<around*|(|w<rsup|T>*x<rsup|i>+b|)>>|<cell|\<geqslant\>>|<cell|1-\<xi\><rsub|i><space|1em>i=1,\<ldots\>,l<space|2em><with|color|blue|\<lambda\><rsub|i>>>>|<row|<cell|\<xi\><rsub|i>>|<cell|\<geqslant\>>|<cell|0<space|2em>i=1,\<ldots\>,l<space|3em><with|color|blue|\<mu\><rsub|i>>>>>>
    </eqnarray*>

    <\enumerate>
      <item>Applicare SVM Lineare e trovare Iperpriano Ottimo.
    </enumerate>
  </problem*>

  <\answer*>
    \;

    In questo problema si può applicare la dualità di Wolfe poiché la
    funzione obiettivo è convessa: Q semidefinita positiva. Il termine
    <math|><math|C*<big|sum><rsub|i=1><rsup|l>\<xi\><rsub|i>> rappresenta la
    penalità sugli errori del TS.

    Quindi iniziamo con lo scrivere la Lagrangiana di questo problema:

    <\equation*>
      L<around*|(|w,b,\<xi\>,\<lambda\>,\<mu\>|)>=<frac|1|2><around*|\<\|\|\>|w|\<\|\|\>><rsup|2>+C<big|sum><rsub|i=1><rsup|l>\<xi\><rsub|i>-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>*<around*|(|y<rsup|i>*<around*|(|w<rsup|T>*x<rsup|i>+b|)>-1+\<xi\><rsub|i>|)>-<big|sum><rsub|i=1><rsup|l>\<mu\><rsub|i>*\<xi\><rsub|i>
    </equation*>

    Il corrispondente duale di Wolfe, risulterà:

    <\equation*>
      max <frac|1|2><around*|\<\|\|\>|w|\<\|\|\>><rsup|2>+C*<big|sum><rsub|i=1><rsup|l>\<xi\><rsub|i>-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>*<around*|(|y<rsup|i>*<around*|(|w<rsup|T>*x<rsup|i>+b|)>-1+\<xi\><rsub|i>|)>-<big|sum><rsub|i=1><rsup|l>\<mu\><rsub|i>\<xi\><rsub|i>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nabla\><rsub|w>L<around*|(|w,b,\<xi\>,\<lambda\>,\<mu\>|)>>|<cell|=>|<cell|w-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>y<rsup|i>*x<rsup|i>=0>>|<row|<cell|<frac|\<partial\>L|\<partial\>b><around*|(|w,b,\<xi\>,\<lambda\>,\<mu\>|)>>|<cell|=>|<cell|-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>y<rsup|i>=0>>|<row|<cell|<frac|\<partial\>L|\<partial\>\<xi\><rsub|i>><around*|(|w,b,\<xi\>,\<lambda\>,\<mu\>|)>>|<cell|=>|<cell|C-\<lambda\><rsub|i>-\<mu\><rsub|i><space|2em>i=1,\<ldots\>,l>>|<row|<cell|\<lambda\><rsub|i>>|<cell|\<geqslant\>>|<cell|0<space|2em>i=1,\<ldots\>,l>>|<row|<cell|\<mu\><rsub|i>>|<cell|\<geqslant\>>|<cell|0<space|2em>i=1,\<ldots\>,l>>>>
    </eqnarray*>

    Dall'annullamento della Lagrangiana rispetto a <math|b> otteniamo che
    <math|<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>y<rsup|i>*b=0>; mentre
    dall'annullamento della Lagrangiana rispetto a <math|w> otteniamo:

    <\equation*>
      w=<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>*y<rsup|i>*x<rsup|i>
    </equation*>

    Sostituendo lìultima espressione nella funzione obiettivo, il problema
    può essere riscritto come:

    <\equation*>
      <\equation*>
        max <frac|1|2><big|sum><rsub|i=1><rsup|l><big|sum><rsub|j=1><rsup|l>\<lambda\><rsub|i>*\<lambda\><rsub|j>*y<rsup|i>*y<rsup|j>*<around*|(|x<rsup|i>|)><rsup|T>*x<rsup|j>+<with|color|red|C<big|sum><rsub|i=1><rsup|l>\<xi\><rsub|i>>-<big|sum><rsub|i=1><rsup|l>*<big|sum><rsub|j=1><rsup|l>\<lambda\><rsub|i>*\<lambda\><rsub|j>*y<rsup|i>*y<rsup|j>*<around*|(|x<rsup|i>|)><rsup|T>*x<rsup|j>-<with|color|red|<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>*y<rsup|i>*b>+<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>*-<with|color|red|<big|sum><rsub|i=1><rsup|l>\<lambda\><rsup|i>*\<xi\><rsup|i>>-<with|color|red|<big|sum><rsub|i=1><rsup|l>*<around*|(|C-<with|color|red|\<lambda\><rsub|i>>|)>*<with|color|red|\<xi\><rsub|i>>>
      </equation*>
    </equation*>

    <\equation*>
      =max <frac|1|2><big|sum><rsub|i=1><rsup|l><big|sum><rsub|j=1><rsup|l>\<lambda\><rsub|i>*\<lambda\><rsub|j>y<rsup|i>*y<rsup|j>*<around*|(|x<rsup|i>|)><rsup|T>*x<rsup|j>+<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>
    </equation*>

    Riscrivendo la funzione obiettivo in forma otteniamo il duale di Wolfe:

    <\equation*>
      <choice|<tformat|<table|<row|<cell|-min
      <frac|1|2><big|sum><rsub|i=1><rsup|l><big|sum><rsub|j=1><rsup|l>\<lambda\><rsub|i><rsup|>*\<lambda\><rsub|j>y<rsup|i>*y<rsup|j>*<around*|(|x<rsup|i>|)><rsup|T>*x<rsup|j>-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>>>|<row|<cell|<tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|l>\<lambda\><rsup|i>*y<rsup|i>>|<cell|=>|<cell|0>>|<row|<cell|\<lambda\><rsub|i>>|<cell|\<geqslant\>>|<cell|0>>|<row|<cell|C-\<lambda\><rsub|i>>|<cell|\<geqslant\>>|<cell|0<space|1em>i=1,\<ldots\>,l>>>>>>>>>
    </equation*>

    Gli ultimi due vincoli vengono riscritti come
    <math|0\<leqslant\>\<lambda\><rsub|i>\<leqslant\>C<space|1em>i=1,\<ldots\>,l>

    A questo punto defiscono la forma matriciale di questo problema
    introducendo la matrice:

    <\equation*>
      X=<around*|[|y<rsup|1>*x<rsup|1>\<ldots\>y<rsup|l>*x<rsup|l>|]><space|1em>X\<in\>\<bbb-R\><rsup|n\<times\>l>
    </equation*>

    In cui l'elemento <math|i j-esimo> risulterà nella forma:

    <\equation*>
      <around*|[|X<rsup|T>X|]><rsub|i j>=y<rsup|i>*y<rsup|j>*<around*|(|x<rsup|i>|)><rsup|T>*x<rsup|j>
    </equation*>

    Quindi otteniamo il <with|font-series|bold|duale in forma compatta>:

    <\equation*>
      min <frac|1|2>*\<lambda\><rsup|T>*X<rsup|T>*X*\<lambda\>-e<rsup|T>*\<lambda\>
    </equation*>

    <\equation*>
      y<rsup|T>*\<lambda\>=0
    </equation*>

    <\equation*>
      0\<leqslant\>\<lambda\><rsub|i>\<leqslant\>C<space|1em>i=1,\<ldots\>,l
    </equation*>

    in cui <math|e=<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|\<vdots\>>>|<row|<cell|1>>>>>>.

    Una volta risolto il duale ed ottenedo i moltiplicatori
    <math|\<lambda\><rsup|\<ast\>>>:

    <\equation*>
      w<rsup|\<ast\>>=<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i><rsup|<rsup|\<ast\>>>*y<rsup|i>*x<rsup|i><space|2em>\<lambda\><rsup|\<ast\>>\<geqslant\>0
    </equation*>

    In cui gli unici punti del Training Set che contribuiscono ad individuare
    <math|w<rsup|\<cdot\>>> sono gli <math|x<rsup|i>> per cui
    <math|\<lambda\><rsup|i<rsup|\<ast\>>>\<gtr\>0>. I punti che soddisfano
    tale condizioni vengono detti <with|font-series|bold|vettori di
    supporto.> Nel caso in cui <math|\<lambda\><rsup|i><rsup|\<ast\>>\<gtr\>0>,
    allora il vincolo <math|i->esimo del primale è attivo all'uguaglianza e
    quindi il punto si trova sul margine.

    Per ricavare <math|b<rsup|\<ast\>>> si ricava per complementarietà. In
    particolare, <math|<around*|(|\<lambda\><rsup|\<ast\>>,\<mu\><rsup|\<ast\>>|)>>
    dove <math|\<mu\><rsub|i><rsup|\<ast\>>=C*-\<lambda\><rsub|i><rsup|\<ast\>>>
    sono i moltiplicatori associati alla soluzione primale. Allora questi
    moltiplicatori devono soddisfare la complementarietà:

    <\equation*>
      \<lambda\><rsub|i><rsup|\<ast\>><around*|(|y<rsup|i>*<around*|(|w<rsup|\<ast\><rsup|T>>*x<rsup|i>+b<rsup|\<ast\>>|)>-1+\<xi\><rsub|i><rsup|\<ast\>>|)>=0<space|1em>i=1,\<ldots\>,l
    </equation*>

    <\equation*>
      \<mu\><rsub|i><rsup|\<ast\>>*\<xi\><rsub|i><rsup|\<ast\>>=<around*|(|C-\<lambda\><rsub|i><rsup|\<ast\>>|)>*\<xi\><rsub|i><rsup|\<ast\>>=0<space|1em>i=1,\<ldots\>,l
    </equation*>

    <\equation*>
      \<xi\><rsub|i><rsup|\<ast\>><around*|(|C-\<lambda\><rsub|i><rsup|\<ast\>>|)>=0\<longrightarrow\>Se
      \<lambda\><rsub|i><rsup|\<ast\>>\<less\>C\<longrightarrow\>\<xi\><rsub|i><rsup|\<ast\>>=0\<longrightarrow\>x<rsup|i>
      è <with|font-series|bold|ben calssificato>
    </equation*>

    Per trovare <math|b<rsup|\<ast\>>> scelgo
    <math|i:0\<less\>\<lambda\><rsub|i><rsup|\<ast\>>\<less\>C>. Allora
    <math|\<xi\><rsub|i><rsup|\<ast\>>=0\<longrightarrow\>y<rsup|i><around*|(|w<rsup|\<ast\><rsup|T>>*x<rsup|i>+b<rsup|\<ast\>>|)>=1>.

    I punti <math|x<rsup|i>> per cui <math|\<lambda\><rsub|i><rsup|\<ast\>>=C>
    non posso calcolare <math|\<xi\><rsub|i><rsup|\<ast\>>>. Allora sono
    candidati ad essere malclassificati. Infine, la nostra macchina SVN sarà
    del tipo:

    <\equation*>
      y<around*|(|x|)>=sgn<around*|(|w<rsup|\<ast\>T>*x+b<rsup|\<ast\>>|)>
    </equation*>
  </answer*>

  <section*|Esercizio SVM Non Lineari>

  <\problem*>
    Il problema è nella forma:

    <\equation*>
      min <frac|1|2><big|sum><rsub|i><big|sum><rsub|j>y<rsup|i>y<rsup|j>\<lambda\><rsub|i>\<lambda\><rsub|j>K<around*|(|x<rsup|i>,x<rsup|j>|)>-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>
    </equation*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i>\<lambda\><rsub|i>*y<rsup|i>>|<cell|=>|<cell|0>>|<row|<cell|0\<leqslant\>>|<cell|\<lambda\><rsub|i>>|<cell|\<leqslant\>C>>>>
    </eqnarray*>

    <\enumerate>
      <item>Utilizza un certo tipo di Kernel tra:

      <\enumerate>
        <item>Kernel Lineare:<math|K<around*|(|x,y|)>=x<rsup|T>y> ;

        <item>Kernel Polinomiale: <math|k<around*|(|x,y|)>=<around*|(|x<rsup|T>*y+\<gamma\>|)><rsup|p><space|1em>\<gamma\>\<geqslant\>0,p\<geqslant\>1>

        <item>Kernel Gaussiano: <math|><math|k<around*|(|x,y|)>=e<rsup|-<frac|<around*|\<\|\|\>|x-y|\<\|\|\>><rsup|2>|2*\<sigma\><rsup|2>>><space|1em>\<sigma\>\<gtr\>0>

        <item>Kernel a Tangente Iperbolica:
        <math|k<around*|(|x,y|)>=tanh<around*|(|\<beta\>x<rsup|T>*y+\<gamma\>|)>><math|>
      </enumerate>
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <\enumerate>
      <item>Funzione Kernel:

      <\equation*>
        <\equation*>
          K=<matrix|<tformat|<table|<row|<cell|k<around*|(|x<rsup|i>,x<rsup|j>|)>>|<cell|\<ldots\>>|<cell|k<around*|(|x<rsup|1>,x<rsup|l>|)>>>|<row|<cell|\<vdots\>>|<cell|\<ddots\>>|<cell|\<vdots\>>>|<row|<cell|k<around*|(|x<rsup|l>,x<rsup|1>|)>>|<cell|\<ldots\>>|<cell|k<around*|(|x<rsup|l>,x<rsup|l>|)>>>>>>\<succcurlyeq\>0
        </equation*>
      </equation*>

      <item>Scrittura del duale:

      <\equation*>
        <\equation*>
          min <frac|1|2><big|sum><rsub|i><big|sum><rsub|j>\<lambda\><rsub|i>\<lambda\><rsub|j>K<around*|(|x<rsup|i>,x<rsup|j>|)>-<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>
        </equation*>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i>\<lambda\><rsub|i>*y<rsup|i>>|<cell|=>|<cell|0>>|<row|<cell|0\<leqslant\>>|<cell|\<lambda\><rsub|i>>|<cell|\<leqslant\>C>>>>
        </eqnarray*>
      </equation*>

      <item>Il problema è convesso, si risolve il duale trovando
      <math|\<lambda\><rsup|\<ast\>>> e si trova <math|b<rsup|\<ast\>>> per
      complementarietà:

      <\equation*>
        <\equation*>
          b<rsup|\<ast\>>=<frac|1|y<rsup|i>>-<big|sum><rsub|j=1><rsup|l>y<rsup|j>*\<lambda\><rsup|\<ast\>><rsub|j>k<around*|(|x<rsup|i>,x<rsup|j>|)>
        </equation*>
      </equation*>

      <item>La SVM diventa:

      <\equation*>
        y<around*|(|x|)>=sgn<around*|(|<big|sum><rsub|i=1><rsup|l>\<lambda\><rsub|i>y<rsup|i>k<around*|(|x<rsup|i>,x|)>+b<rsup|\<ast\>>|)>
      </equation*>
    </enumerate>
  </answer*>

  <section*|Esercizi Decomposizione>

  <subsection*|Esercizio Decomposizione in generale ??>

  <subsection*|Esercizio SVM Light>

  <\problem*>
    Dato il problema nella forma:

    <\equation*>
      TS=<around*|{|<around*|(|<matrix|<tformat|<table|<row|<cell|x<rsub|1,1>>>|<row|<cell|x<rsub|1,2>>>>>>,y<rsub|1>|)>,\<ldots\>,<around*|(|<matrix|<tformat|<table|<row|<cell|x<rsub|n,1>>>|<row|<cell|x<rsub|n,2>>>>>>,y<rsub|n>|)>|}>
    </equation*>

    <\equation*>
      C=k
    </equation*>

    Applicare SVM Light.
  </problem*>

  <\answer*>
    \;

    <\enumerate>
      <item>Determinare <math|Q=k<around*|(|x,y|)>*<rsup|T>k<around*|(|x,y|)>>
      in base al kernel scelto;

      <item><math|y=<matrix|<tformat|<table|<row|<cell|y<rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|y<rsub|n>>>>>>>

      <item>Inizializzare <math|\<alpha\>\<degree\>=<matrix|<tformat|<table|<row|<cell|\<alpha\><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<alpha\><rsub|n>>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>><space|1em><math|\<nabla\>f<around*|(|\<alpha\>\<degree\>|)>=-<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|\<vdots\>>>|<row|<cell|1>>>>>>

      <item>Determinare gli insiemi:

      <\equation*>
        R<around*|(|\<alpha\>|)>=L<rsup|+><around*|(|\<alpha\><rsup|\<ast\>>|)>\<cup\>U<rsup|*-><around*|(|\<alpha\><rsup|\<ast\>>|)>\<cup\><around*|{|i:0\<less\>\<alpha\>\<degree\>\<less\>C|}>
      </equation*>

      <\equation*>
        S<around*|(|\<alpha\>|)>=L<rsup|-><around*|(|\<alpha\><rsup|\<ast\>>|)>\<cup\>U<rsup|+><around*|(|\<alpha\><rsup|\<ast\>>|)>\<cup\><around*|{|i:0\<less\>\<alpha\>\<degree\>\<less\>C|}>
      </equation*>

      <item>Calcolare <math|-<frac|\<nabla\>f<around*|(|x|)>|y>>

      <item>Verificare:

      <\equation*>
        max<rsub|i\<in\>R<around*|(|\<alpha\>|)>><around*|{|-<frac|\<nabla\><rsub|i>f<around*|(|x|)>|y<rsub|i>>|}>\<leqslant\>min<rsub|j\<in\>S<around*|(|\<alpha\>|)>><around*|{|-<frac|\<nabla\><rsub|j>f<around*|(|x|)>|y<rsub|j>>|}>
      </equation*>

      <item>Se la condizione al punto 6 è violata, definire WS prendendo due
      indici <math|i,j> dai due insiemi e scrivere il problema ridotto:

      <\equation*>
        min<rsub|\<alpha\><rsub|i>,\<alpha\><rsub|j>><frac|1|2><matrix|<tformat|<table|<row|<cell|0\<ldots\>\<alpha\><rsub|i>\<ldots\>\<alpha\><rsub|j>\<ldots\>0>>>>>*<matrix|<tformat|<table|<row|<cell|Q<rsub|i,i>>|<cell|Q<rsub|i,j>>>|<row|<cell|Q<rsub|j,i>>|<cell|Q<rsub|j,j>>>>>>*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|\<alpha\><rsub|i>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<alpha\><rsub|j>>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>-\<alpha\><rsub|i>-\<alpha\><rsub|j>
      </equation*>

      <\equation*>
        \<alpha\><rsub|i>-\<alpha\><rsub|j>=0
      </equation*>

      <\equation*>
        0\<leqslant\>\<alpha\><rsub|i>\<leqslant\>1<space|1em>0\<leqslant\>\<alpha\><rsub|j>\<leqslant\>1
      </equation*>

      <item>Pongo <math|\<alpha\><rsub|i>=\<alpha\><rsub|j>>, sostituiso in
      funzione obiettivo e derivo rispetto alla variabile rimanente:

      <\equation*>
        <frac|\<partial\>f|\<partial\>\<alpha\><rsub|j>>=0
      </equation*>

      <item>Pongo:

      <\equation*>
        \<alpha\><rsup|1>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|\<alpha\><rsub|i>>>|<row|<cell|\<vdots\>>>|<row|<cell|\<alpha\><rsub|j>>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>
      </equation*>

      <item>Il nuovo gradiente sarà:

      <\equation*>
        \<nabla\>f<around*|(|x<rsup|1>|)>=\<nabla\>f<around*|(|\<alpha\>\<degree\>|)>+Q<rsub|:,i><around*|(|\<alpha\><rsub|i><rsup|1>-\<alpha\><rsub|i>\<degree\>|)>+Q<rsub|:,j>*<around*|(|\<alpha\><rsub|j><rsup|1>-\<alpha\><rsub|j>\<degree\>|)>
      </equation*>

      <item>Ricomincio.
    </enumerate>
  </answer*>

  <section*|K-Means>

  <\problem*>
    Dato il problema nella forma:

    <\equation*>
      TS=<around*|{|<matrix|<tformat|<table|<row|<cell|x<rsub|1,1>>>|<row|<cell|x<rsub|1,2>>>>>>,\<ldots\>,<matrix|<tformat|<table|<row|<cell|x<rsub|n,1>>>|<row|<cell|x<rsub|n,2>>>>>>|}>
    </equation*>

    <\equation*>
      M=k
    </equation*>

    <\equation*>
      z=<around*|{|<matrix|<tformat|<table|<row|<cell|z<rsub|1,1>>>|<row|<cell|z<rsub|1,2>>>>>>,\<ldots\>,<matrix|<tformat|<table|<row|<cell|z<rsub|k,1>>>|<row|<cell|z<rsub|k,2>>>>>>|}>
    </equation*>

    <\enumerate>
      <item>Effettuare un passo dell'algoritmo K-Means;

      <item>Calcolare la Silhoutte;
    </enumerate>
  </problem*>

  <\answer*>
    \;

    <with|font-series|bold|(1) >L'algoritmo di K-Means è un algoritmo di
    Clusterizzazione in cui:

    <\enumerate>
      <\itemize>
        <item>M:= numero di Cluster

        <item>z:=posizione dei centroidi;

        <item>TS:= insieme dei punti da assegnare ai cluster
      </itemize>
    </enumerate>

    Per risolvere questo tipo di esercizio occorre calcolare per ogni punto:

    <\enumerate>
      <item>Assegnare il punto al cluster. A tale scopo si calola la distanza
      <math|d<around*|(|x<rsup|i>,z<rsup|j>|)>>;

      <item>Si prend:

      <\equation*>
        arg min<rsub|j><around*|{|d<around*|(|x<rsup|i>,z<rsup|j>|)>|}>\<longrightarrow\>\<delta\><rsub|i>=<matrix|<tformat|<table|<row|<cell|e<rsub|j>>>>>><around*|(|z<rsub|j>|)><space|1em>
      </equation*>

      Per esempio, la distanza minima per i esimo punto si ha per il j-esimo
      cluster. Allora:

      <\equation*>
        \<delta\><rsub|i>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|\<vdots\>>>|<row|<cell|0>>>>>
        <around*|(|z<rsub|j>|)>
      </equation*>

      <item>Calcolare la nuova posizione dei centroidi dei cluster.
      Ricordandosi delle assegnazioni fatte:

      <\equation*>
        z<rsub|j>=<frac|<big|sum><rsub|i>\<delta\><rsub|i,j>*x<rsup|i>|<big|sum><rsub|i>\<delta\><rsub|i,j>>
      </equation*>
    </enumerate>

    <with|font-series|bold|(2)> Per calcolare la Silhouette, occorre:

    <\enumerate>
      <item>Fissare il numero <math|K>;

      <item>Per ogni punto <math|i\<in\>C<around*|(|i|)>> con
      <math|C<around*|(|i|)>> cluster i-esimo, calcolare:

      <\equation*>
        a<around*|(|i|)>=<frac|1|<around*|\||C<around*|(|i|)>|\|>-1>*<big|sum><rsub|j\<in\>C<around*|(|i|)>>d<around*|(|x<rsup|i>,x<rsup|j>|)>
      </equation*>

      <\equation*>
        b<around*|(|i|)>=min<rsub|k\<nin\>C<around*|(|i|)>><frac|1|<around*|\||C<rsub|k>|\|>>*<big|sum><rsub|j\<in\>K>d<around*|(|x<rsup|i>,x<rsup|j>|)>
      </equation*>

      <\equation*>
        S<around*|(|i|)>=<frac|b<around*|(|i|)>-a<around*|(|i|)>|max<around*|{|a<around*|(|i|)>,b<around*|(|i|)>|}>><space|1em>se
        <around*|\||C<around*|(|i|)>|\|>\<gtr\>1
      </equation*>

      <\equation*>
        S<around*|(|i|)>=0<space|1em>se <around*|\||C<around*|(|i|)>|\|>=1
      </equation*>

      <item>Al variare di <math|K> si calcola:

      <\equation*>
        S<rsub|k>=<frac|1|N>*<big|sum><rsub|i=1><rsup|N>S<around*|(|i|)>
      </equation*>

      <item>Si prende il massimo di questi valori.
    </enumerate>
  </answer*>

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
    <associate|auto-10|<tuple|11|14>>
    <associate|auto-2|<tuple|2|4>>
    <associate|auto-3|<tuple|b|6>>
    <associate|auto-4|<tuple|d|8>>
    <associate|auto-5|<tuple|c|9>>
    <associate|auto-6|<tuple|1|11>>
    <associate|auto-7|<tuple|4|12>>
    <associate|auto-8|<tuple|4|12>>
    <associate|auto-9|<tuple|4|12>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizi
      KKT per problemi vincolati> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizi
      KKT per problemi con Vincoli di Box>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizio
      Iperpiano > <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizio
      Iperpiano Ottimo Duale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizio
      SVM Lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizio
      SVM Non Lineari> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Esercizi
      Decomposizione> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1tab>|Esercizio Decomposizione in generale ??
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|Esercizio SVM Light
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|K-Means>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>