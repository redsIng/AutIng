<TeXmacs|1.99.20>

<style|<tuple|generic|italian>>

<\body>
  <\center>
    \;

    <chapter*|Esami Svolti IIW>
  </center>

  <\enumerate>
    <item><with|font-series|bold|Descrivere come viene realizzata la
    comunicazione affidabile del protocollo TCP.>

    Il servizio del livello di rete non è affidabile dato che il protocollo
    IP non garantisce ne la consegna del datagramma ne la consegna dei
    datagrammi in ordine ne l'integrità dei dati all'interno di essi. Quindi
    la connessione TCP crea un servizio affidabile di dati sopra al
    protocollo IP assicurandosi che il flusso di byte in uscita sia uguale a
    quello ingresso dall'altra parte della connessione. In particolare il
    protocollo TCP, ad alto livello, risponde a tre tipi di eventi regolati
    da timer:

    <\enumerate>
      <item>Quando TCP riceve un dato dal livello applicativo, lo incapsula
      in un segmento e lo trasferisce al protocollo IP. Se il timer non è
      ancora in esecuzione per qualche altro segmento, TCP inizializza il
      timer e lo passa ad IP. Il timer viene inizializzato come segue:

      <\equation*>
        Timeout Interval=EstimatedRTT+4*DevRTT
      </equation*>

      In cui DevRTT è la variabilità dell'RTT definita come:

      <\equation*>
        DevRTT=<around*|(|1-\<beta\>|)>*DevRTT+\<beta\>\<cdot\><around*|\||SampleRTT-EstimatedRTT|\|>
      </equation*>

      \ e\ 

      <\equation*>
        EstimatedRTT=<around*|(|1-\<alpha\>|)>*EstimatedRTT+\<alpha\>*SampleRTT
      </equation*>

      che aiutanto a tener conto della variazione dovuta alla congestione nei
      router e dal carico variabile negli end-system.

      <item>Quando TCP risponde ad un evento di timeout, il protocollo
      ritrasmette il segmento e reinizializza il timer;

      <item>Quando TCP riceve un ACK dal destinatario. TCP confronta il
      valore dell'ACK con <with|font-shape|italic|<math|SendBase>>. Questa
      variabile di stato è il numero di sequenza del più vecchio byte non
      riconosciuto. Inoltre, dato che gli ACK in TCP sono cumulativi, il
      valore di ACK riconosce come ricevuti tutti i isegmenti prima del
      numero di byte. In caso contrario i segmenti non sono stati
      riconosciuti. Infine, a questo punto si aggiorna SendBase e si
      reinizializza il timer.
    </enumerate>

    A livello implementativo occorre considerare la modellazione del
    intervallo di timeout. Una tenica è quella di duplicare l'intervello di
    timeout quando quest'ultimo si esaurisce. Questa tecnica fornisce una
    forma di controllo di congestione.

    Una problematica dei problemai basati da eventi causati da timeout è che
    il periodo di timeout potrebbe essere molto lungo. INfatti, quando un
    segmento viene perso, questo lungo periodi di timeout forza il mittente a
    ritardare il reinvio del pacchetto perso, aumentando drasticamente il
    ritardo. Il mittente rileva la perdita del segmento tramite ACK
    duplicati. Nel caso in cui il mittente riceva 3 ACK duplicati, il
    pacchetto è ritenuto perso e TCP effettua il cosiddetto Fast Retrasmit
    cioè reinvia il segmento prima che il timer scada.

    <item><with|font-series|bold|Descrivere il protocollo BGP>

    <item><with|font-series|bold|Descrivere il protocollo ARP>

    <item><with|font-series|bold|Descrivere il problema del terminale
    nascosto gestito nelle rete 802.11>

    <item><with|font-series|bold|Illustrare e discure le varie cause di
    ritardo nelle reti a commutazione di pacchetto.>

    In generale un pacchetto parte da un host sorgente, passa attraverso una
    serie di router e arriva a destinazione. In ogni tappa il pacchetto
    subisce vari tipi di ritardo in ciascun nodo del tragitto. I principali
    ritardi sono:

    <\itemize>
      <item><with|font-series|bold|Ritardo di elaborazione>: è il tempo
      richiesto per esaminare l'intestazione del pacchetto e per determinare
      dove dirigerlo. Questo ritardo può includere il tempo necessario per
      contorllare errori a livello di bit.

      <item><with|font-series|bold|Ritardo di accodamento>: è il tempo in cui
      il pacchetto rimane in coda in attesa della trasmissione sul
      collegamento. Questo ritardo dipende dal numero di pacchetti
      precedenmente arrivi, accodati e in attesa di trasmissione sullo stesso
      collegamento. Se la cosa è vuota e non è in corso la trasmissione di
      altri pacchetti, allora il ritardo di accodamento è nullo. Questo
      ritardo viene modellato tramite concetti di multiplazione statistica e
      coda M/M/n.

      <item><with|font-series|bold|Ritardo di trasmissione>: assumendo che la
      trasmissione die pacchetti sia di tipo FIFO, il pacchetto sarà
      trasmesso solo dopo la trasmissione di tutti i pacchetti che lo hanno
      preceduto nell'arrivo. Viene definito come <math|<frac|L|R>> e coincide
      con il tempo necessario a trasmettere tutti i bit del pacchetto sul
      collegamento.

      <item><with|font-series|bold|Ritardo di propagazione>: è il tempo che
      impiega il bit ad essere propagato. dipende dal mezzo fisico (velocità
      della luca) e dalla lunghezza del collegamento.
    </itemize>

    In totale, il ritardo totale di un nodo è:

    <\equation*>
      d<rsub|node>=d<rsub|proc>+d<rsub|queue>+d<rsub|transf>+d<rsub|prop>
    </equation*>

    <item><with|font-series|bold|Descrivere come viene realizzato il
    controllo di congestione in TCP>

    In TCP possiamo distinguere due metodologie di controllo di congestione:

    <\itemize>
      <item><with|font-series|bold|Controllo di congestione End-to-End> in
      cui il livello di rete non fornisce un supporto esplicito al livello di
      trasporto. La congestione viene risolta dagli end system in base
      all'osservazione del comportamento di rete.

      <item><with|font-series|bold|Controllo di congestione assistita dalla
      rete:> i router forniscono un feedback esplicito al
      mittente/destinatario riguardo lo stato della rete.
    </itemize>

    In particolare, si ha un limite di velocita a cui i mittenti pososno
    inviare traffico nella propria connessione. Il mittente TCP
    aumenta/diminusice la velocità di invio del segmento in base alla
    presenza o meno di congestione. A tale scopo, si introduce una variabile
    della <with|font-series|bold|finestra di congestione> che impone un
    vincolo sul rate per cui il mittente TCP può inviare traffico nella rete
    secondo la legge:

    <\equation*>
      LastByteSent-LastByteAcked\<leqslant\>min<around*|{|cwn,rwnd|}>
    </equation*>

    In particolare, si seguono i seguenti principi:

    <\itemize>
      <item>Un segmento perso implica che il rate del mittente TCP dovrebbe
      essere diminuito;

      <item>Per un segmento a cui si è ricevuto un ACK indica che la rete non
      è congestionata e quindi il rate può essere aumentato;

      <item><with|font-series|bold|<with|font-shape|italic|Bandwith
      probing:>>dato che gli ACK sono una prova della presenza di congestione
      e la perdita di un segmento è un indice di congestione, si aumenta il
      rate del mittente fin quando non si ha congestione e, al verificarsi di
      questo evento, si diminuirà il rate di invio.
    </itemize>

    L'algoritmo di congestione è composto da 3
    fasi:<with|font-series|bold|slow start>,<with|font-series|bold|congestion
    Avoidance, fast recovery>.\ 

    <\itemize>
      <item>Nello slow start il valore della finestra di congestione viene
      inizializzato ad 1 e la velocità di tramissione viene impostato a
      <math|<frac|MSS|RTT>>. Ogni volta che viene riconosciuto un segmento
      per la prima volta e ogni volta che si riceve un ACK di un segmento la
      finestra viene aumentata di 1 MSS per ogni segmento e ciò corrisponde a
      raddoppiare il rate di invio. L'andamento dell'aumento del rate di
      invio del mittente è esponenziale. La crescita
    </itemize>

    \ 
  </enumerate>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|1|..\\..\\..\\..\\..\\AppData\\Roaming\\TeXmacs\\texts\\scratch\\no_name_3.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|2fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|font-size|<quote|1.19>|Esami
      Svolti IIW> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|1fn>
    </associate>
  </collection>
</auxiliary>