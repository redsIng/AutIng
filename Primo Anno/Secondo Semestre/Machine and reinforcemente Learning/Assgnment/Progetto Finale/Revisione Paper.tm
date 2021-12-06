<TeXmacs|1.99.18>

<style|<tuple|generic|italian>>

<\body>
  <\center>
    <chapter*|Fantasy Football>
  </center>

  Il problema a cui si fa riferimento nell'articolo è il problema della
  formazione settimanale di una squadra per competere nel fantacalcio reale.
  In particolare, nell'articolo si fa riferiemento al fantacalcio della
  Premier League di cui spiegheremo le regole in seguito.\ 

  Il problema viene modellato come un problema di Reinforcment Learning
  Bayesiano in cui:

  <\itemize>
    <item> Lo spazio delle azioni è esponenziale nel numero dei giocatori;

    <item>L'agente prende in considerazione molteplici caratteristiche per
    ogni calciatore.
  </itemize>

  <section|Introduzione>

  Dato che il contesto in cui gli autori dell'articolo hanno lavorato è un
  contesto reale, si prendono in considerazione molteplici attori, ognuno dei
  quali possiedono le proprie caratteristiche è abilità, che cooperano per
  raggiungere uno stesso obiettivo. Queste caratteristiche sono affette da
  incertezze e la formazione del team ottimale è tipicamente un processo
  lungo che coinvolge la sostitzione di certi giocatori con altri.

  Quindi il nostro obiettivo è quello di identificare la sequenza delle
  formazioni della squadra ( e quindi delle decisioni che devono essere prese
  in considerazione) con il massimo valore nel tempo. Nel fantacalcio, è
  proprio il giocatore che deve ripetutamente scegliere un insieme molto
  vincolato (imposto dalle regole del gioco) di giocatori per massimizzare il
  punteggio nella classifica.

  Tuttavia,dato che le performance dei giocatori sono affette da molta
  incertezza (come a causa di infortuni, perdite di morale a causa di una
  serie negative di sconfitte nella squadra in cui gioca o il giocare con una
  squadra più forte) e il costo dello scambio dei giocatori non selezionati,
  è importante considerare gli eventi furuti per massimizzare il punto finale
  a fine stagione.

  <with|font-series|bold|Costo Computazionale>

  <\itemize>
    <item>500 possibili calciatori tra cui scegliere selezionabili in
    <math|10<rsup|25>> modi;

    <item>I giocatori devono effettuare la scelta <math|38 volte> ( numero di
    partite nella Premier Leauge) nella stagione.
  </itemize>

  Quindi gli autori utilizzano delle tecniche di
  <with|font-series|bold|Reinforcment Learning Bayesiano> per identificare le
  decisioni più proficue nel tempo.\ 

  <\with|font-series|bold>
    Gli agenti Bayesiani mantengono una priorità nek tempo della loro
    incertezza per rappresentare la loro credenza sull'ambiente per esplorare
    in maniera ottimale.

    \;
  </with>

  Il gioco viene modellato tramite un <with|font-series|bold|processo
  Markoviano parzialmente osservabile> per provare ad approssimare
  efficientemente la sua soluzione.

  L'articolo fornisce i seguenti contributi :

  <\itemize>
    <item>Benchmark del problema del fantacalcio che permette di selezionare
    un giocatore automatizzato da far competere contro giocatori umani;

    <item>Metodi per gestire le incertezze e dimostrazioni su come sfruttare
    il modello incerto per guidare la selezione nello spazio dei teams
    disponibili.
  </itemize>

  <section|Regole Del Fantasy Football (Fantacalcio inglese)>

  Il giocatore automatizzato opera seconfo le regole e il dataset del sito
  ufficiale del Fantasy Football:

  <\itemize>
    <item>Prima della campionato, il palinesto da 380 partite sono divise in
    38 giornate ognuna delle quali composta da 10 match.

    <item>Tutti i match in una giornata sono svolti nel periodo di 3/4
    giorni;

    <item>L'organizzatore FPL( Fantasy Football Leauge) valuta ognuno dei
    giocatori della EPL(English Premier Leauge) con un prezzo di vendita
    scelto in maniera opportuna per riflettere il potenziale di punteggio e
    assegnato ad ogni calcatore una delle quattro categorie in base al ruolo
    nel mondo reale:

    <\itemize>
      <item>Portiere;

      <item>Attaccante;

      <item>Difensore;

      <item>Centrocampista.
    </itemize>

    <item>Prima di ogni giornata, un manager FPL(giocatore) deve selezionare
    un team di 15 giocatori fra i 500 all'interno di EPL nel budget
    assegnatogli. Deve essere composto esattamente da:

    <\itemize>
      <item>2 Portieri;

      <item>5 Difensori;

      <item>5 Centrocampisti;

      <item>3 attaccanti;

      <item>Non ci possono essere più di 3 giocatori dello stesso club nella
      stessa quadra.

      <item>11 di questi 15 giocatori devono essere assegnati nella
      formazione iniziale che contribuiranno al guadagno del punteggio.

      <item>Se i giocatori non vengono schierati in campo sono sostituiti da
      uno de 4 giocatori non titolari.
    </itemize>

    <item>Il giocatore FPL viene penalizzato per l'aver selezionato troppi
    giocatori che non hanno selezionati nella giornata precentente. Ogni
    penalità costa 4 punti.\ 

    <\itemize>
      <item>Questo vincola la scelta della squadra in ottica di un reward
      positivo nel lungo periodo.
    </itemize>
  </itemize>

  L'obiettivo complessivo, quindi, è quello di massimizzare i punti totali
  ottenuti nelle 38 giornate prendnedo in cnsiderazione le regole del gioco,
  l'incertezza nei giocatori, le abilità dei club e la non predicibilità
  della dinamica dell'ambiente del calcio.

  <section|Modellizzare FPL>

  Il fantacalcio inglese viene modellizzato come un problema sequenziale di
  formazione della squadra tramite un MDP adattato per ammettere l'incertezza
  formulandolo in termini di un MDP parzialmente osservabile utilizzando un
  modello approssimato Bayesiano per le abilità del giocatore.

  <subsection|Definizioni>

  Per ogni giornata un manager deve selezionare un team di giocatori che
  rispetta tutti i vinoli imposti dalle regole del fantacalcio.

  <\itemize>
    <item>Nella giornata <math|i-*esima>:

    <\itemize>
      <item>Il manager conosce:

      <\enumerate>
        <item> l'insieme delle partite che si dovranno giocare
        <math|M<rsub|i>>;

        <item>l'insieme dei giocatori disponibili per la selezione
        <math|P<rsub|i>>;

        <item>l'insieme delle azioni disponibili <math|A<rsub|i>>:

        Un'azione è la selezione di un team valido tale che:
        <math|a\<in\>A<rsub|i>> p un sottoinsieme di <math|P<rsub|i>>
        ammissibile;
      </enumerate>

      <item>Ogni giocatore giocatore:

      <\enumerate>
        <item> <math|p\<in\>P<rsub|i>> è associato ad una posizione ed a un
        prezzo di vendita;

        <item><math|\<tau\><rsub|p>\<in\>\<tau\>> è una sistema di
        distribuzioni rappresentante la sua influenza nella partita.
      </enumerate>

      <item><math|O<rsub|i>\<assign\>>L'insieme dei possibili risultati di
      <math|M<rsub|i>>.\ 

      <\itemize>
        <item>Ogni <math|o\<in\>O<rsub|i>> rappresenta il risultato della
        partita nell'insieme <math|M<rsub|i>> come i contributi del giocatore
        influenzati dalla probabilità <math|\<tau\>>.

        <item>Dato che il risultato è influenzato dal contributo del
        giocatore e dalle sue caratteristica, la probabilità di ogni
        <math|o\<in\>O<rsub|i>> è dipendente dall probabilità <math|\<tau\>>.
        Quindi è possibile definire <math|Pr<around*|(|o\|\<tau\>|)>>,

        <item><math|R<around*|(|o,a<rsub|prev>,a|)>>:= dato il risultato
        <math|o> e selezionato il team <math|a\<in\>A> e slezionato
        precedentemente <math|a<rsub|prev>\<in\>A<rsub|i-1>> ritorna il
        punteggio <math|a>.
      </itemize>
    </itemize>
  </itemize>

  <subsection|Formulazione di un MDP>

  Formuliamo ora, le definizioni sopra descritte come un problema MDP con un
  insieme di stati, azioni,dinamiche di transizioni e una funzione di
  ricompensa.

  <with|font-series|bold|Stato>

  Lo stato per la <math|i-esima> giornata contiene
  <math|M<rsub|i>,\<ldots\>,M<rsub|38>>:

  <\itemize>
    <item> l'insieme dei prossimi incontri

    <item><math|P<rsub|i>> l'insieme dei giocatori selezionabili;

    <item><math|o\<in\>O<rsub|i-1>> i risultati della giornata precedente;

    <item><math|\<tau\>> le abilità del giocatore;
  </itemize>

  <\with|font-series|bold>
    Azioni
  </with>

  L'insieme delle azioni è <math|A<rsub|i>:> l'insieme delle squadre
  selezionabili nella giornata <math|i-esima> con <math|R> la corrispondente
  funzione delle ricompense.

  <with|font-series|bold|Funzione di transizione>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
    <associate|auto-2|<tuple|1|1|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
    <associate|auto-3|<tuple|2|2|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
    <associate|auto-4|<tuple|3|2|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
    <associate|auto-5|<tuple|3.1|3|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
    <associate|auto-6|<tuple|3.2|3|..\\..\\..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_2.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Fantasy
      Football> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Introduzione>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Regole
      Del Fantasy Football (Fantacalcio inglese)>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>Modellizzare
      FPL> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>Definizioni
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>Formulazione di un MDP
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>