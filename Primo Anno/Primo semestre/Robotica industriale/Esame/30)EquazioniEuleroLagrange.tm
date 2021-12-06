<TeXmacs|1.99.17>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|13em><with|font-series|bold|Equazioni Eulero-Lagrange>

  Le equazioni di Eulero-Lagrange si basano sul principio di
  Hamilton(principio di minimizzazione) in cui, note le espressioni
  dell'energia cinetica e potenziale, si calcolano le equazioni del moto e
  quindi permette di simulare il comportamento del sistema.

  Sia:

  <\equation*>
    T\<assign\>energica cinetica,U\<assign\>energia potenziale
  </equation*>

  Si definisce l'<with|font-series|bold|azione> come
  <math|<big|int><rsub|ti><rsup|t<rsub|f>>\<cal-L\>\<partial\>t> in cui
  <math|\<cal-L\>\<assign\>Lagrangiana=T-U>.

  Supponiamo di voler passare da <math|q<around*|(|t<rsub|i>|)>\<rightarrow\>q<around*|(|t<rsub|f>|)>>:

  Si possono percorrere innumerevoli traiettorie, tuttavia dimostra che la
  traiettoria a costo minimo in <math|<around*|(|t<rsub|i>,t<rsub|f>|)>>
  coincide con <math|q<rsup|<wide|\<ast\>|\<dot\>>><around*|(|t|)>,cioè un
  punto di stazionarietà dell<rprime|'>integrale d<rprime|'>azione.>

  <with|font-series|bold|N.B.:>

  - Si definisce <with|font-series|bold|punto stazionario> un punto
  <math|f<around*|(|x|)>> t.c. <math|<frac|\<partial\>f|\<partial\>x>=0>.

  Inoltre ,effettuando lo sviluppo di Taylor della fuzione
  <math|y=f<around*|(|x|)>> che congiunge i punti dell'ipotesi.Si definisce
  <math|la variazione f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>=\<partial\>y=J<around*|(|x<rsub|0>|)><around*|(|x-x<rsub|0>|)>>+<text-dots>
  in cui <math|<around*|(|x-x<rsub|0>|)>=\<partial\>x>. Quindi:

  <\equation*>
    \<partial\>y=J<around*|(|x|)>\<partial\>x
  </equation*>

  Si definisce un <with|font-series|bold|punto <math|x<rsup|\<ast\>> >di
  stazionarietà> se <math|\<partial\>y=0 \<forall\>\<partial\>x>.

  In altre parole, un punto è di stazionarietà se considere una variazione
  nel codominio della funzione, ottengo una variazione nulla del dominio:

  <\equation*>
    J<around*|(|x<rsup|\<ast\>>|)>=0
  </equation*>

  Il principio di Hamilton afferma che il sistema si muove in maniera tale
  che:

  <\equation*>
    \<partial\>J=0<space|2em>\<forall\>q
  </equation*>

  Da cui si ottengono le equazioni di Eulero-Lagrange.Esse tengono conto del
  tipo di sistema che si sta considerando:

  -<strong|Sistemi conservativi(assenza di forze esterne e forze d'attrito):>

  <\equation*>
    <frac|\<mathd\>|dt><frac|\<partial\>L|\<partial\><wide|q|\<dot\>>>-<frac|\<partial\>L|\<partial\>q>=0
  </equation*>

  -<with|font-series|bold|Sistemi non conservativi(presenza di forze
  esterne):>

  <\equation*>
    <frac|\<mathd\>|dt><frac|\<partial\>L|\<partial\><wide|q|\<dot\>>>-<frac|\<partial\>L|\<partial\>q>=u<rsup|T>
  </equation*>

  Il vettore <math|u<rsup|T> >rappresenta le forze esterne agenti lungo la
  direzione di q.

  In generale, per ottenere l'equazione di un qualsiasi moto, occorre
  considerare anche la presenza delle forze di attrito. Si ottiene:

  <\equation*>
    <frac|\<mathd\>|dt><frac|\<partial\>L|\<partial\><wide|q|\<dot\>>>-<frac|\<partial\>L|\<partial\>q>+<frac|\<partial\>\<bbb-F\>|\<partial\><wide|q|\<dot\>>>=u<rsup|T>
  </equation*>

  In cui <math|\<bbb-F\>=<frac|1|2><wide|q|\<dot\>><rsup|T>*F*<wide|q|\<dot\>>>,
  <math|F\<succeq\>0>.

  \;

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      inverseLaplace(SI,theta):=block([res,M,MC,aC,b],\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aC:M[i,j],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b:ilt(aC,s,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC[i,j]:b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:MC

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|inverseLaplace><around*|(|<math-up|SI>,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,M,<math-up|MC>,<math-up|aC>,b|]>,M:<math-up|SI>,<math-up|MC>:<math-up|SI>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|aC>:M<rsub|i,j>,b:<math-up|ilt><around*|(|<math-up|aC>,s,\<vartheta\>|)>,<math-up|MC><rsub|i,j>:b|)>,<math-up|res>:<math-up|MC>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotLaplace(k,theta):=block([res,S,I],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      S[i][j]:0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*k[3-remainder(i+j,3)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:inverseLaplace(invert(s*I-S),theta)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,S,I|]>,S:<math-up|ident><around*|(|3|)>,I:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*k<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,\<vartheta\>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Av(v,theta,d):=block([res,Trot,row,Atemp,A],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Trot:rotLaplace(v,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row:matrix([0,0,0,1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Atemp:addcol(Trot,d*transpose(v)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ A:addrow(Atemp,row),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:A

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|Av><around*|(|v,\<vartheta\>,d|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,<math-up|Trot>,<math-up|row>,<math-up|Atemp>,A|]>,<math-up|Trot>:<math-up|rotLaplace><around*|(|v,\<vartheta\>|)>,<math-up|row>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<math-up|Atemp>:<math-up|addcol><around*|(|<math-up|Trot>,d*<math-up|transpose><around*|(|v|)>|)>,A:<math-up|addrow><around*|(|<math-up|Atemp>,<math-up|row>|)>,<math-up|res>:A|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      Q(theta,d,alpha,a):=block([res,tempMat,Qtrasf],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ tempMat:Av([0,0,1],theta,d).Av([1,0,0],alpha,a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtrasf:zeromatrix(4,4),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 4 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 4 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtrasf[i][j]:trigreduce(tempMat[i][j])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:Qtrasf

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>Q<around*|(|\<vartheta\>,d,\<alpha\>,a|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,<math-up|tempMat>,<math-up|Qtrasf>|]>,<math-up|tempMat>:<math-up|Av><around*|(|<around*|[|0,0,1|]>,\<vartheta\>,d|)>\<cdot\><math-up|Av><around*|(|<around*|[|1,0,0|]>,\<alpha\>,a|)>,<math-up|Qtrasf>:<math-up|zeromatrix><around*|(|4,4|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>4<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>4<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Qtrasf><rsub|i>|)><rsub|j>:<math-up|trigreduce><around*|(|<around*|(|<math-up|tempMat><rsub|i>|)><rsub|j>|)>,<math-up|res>:<math-up|Qtrasf>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      Qdirect(DH):=block([res,Q,Qtemp],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:[Q(DH[1][1],DH[1][2],DH[1][3],DH[1][4])],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:2 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtemp:Q(DH[i][1],DH[i][2],DH[i][3],DH[i][4]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:append(Q,[trigsimp(trigreduce(trigexpand(Q[i-1].Qtemp)))])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:Q)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-up|Qdirect><around*|(|<math-up|DH>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,Q,<math-up|Qtemp>|]>,Q:<around*|[|Q<around*|(|<around*|(|<math-up|DH><rsub|1>|)><rsub|1>,<around*|(|<math-up|DH><rsub|1>|)><rsub|2>,<around*|(|<math-up|DH><rsub|1>|)><rsub|3>,<around*|(|<math-up|DH><rsub|1>|)><rsub|4>|)>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|from><space|0.27em>2<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Qtemp>:Q<around*|(|<around*|(|<math-up|DH><rsub|i>|)><rsub|1>,<around*|(|<math-up|DH><rsub|i>|)><rsub|2>,<around*|(|<math-up|DH><rsub|i>|)><rsub|3>,<around*|(|<math-up|DH><rsub|i>|)><rsub|4>|)>,Q:<math-up|append><around*|(|Q,<around*|[|<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|Q<rsub|i-1>\<cdot\><math-up|Qtemp>|)>|)>|)>|]>|)>|)>,<math-up|res>:Q|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      Qbc(Q,bc,dist):=block([traslBC,Qcap],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:[],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ ex:matrix([1],[0],[0]),
      ez:matrix([0],[0],[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru length(Q) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ traslBC:addrow(addcol(ident(3),dist[j]),[0,0,0,1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:append(Qcap,[trigsimp(Q[j].traslBC)])\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-up|Qbc><around*|(|Q,<math-up|bc>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|traslBC>,<math-up|Qcap>|]>,<math-up|Qcap>:<around*|[||]>,<math-up|ex>:<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<math-up|ez>:<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|Q|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|traslBC>:<math-up|addrow><around*|(|<math-up|addcol><around*|(|<math-up|ident><around*|(|3|)>,<math-up|dist><rsub|j>|)>,<around*|[|0,0,0,1|]>|)>,<math-up|Qcap>:<math-up|append><around*|(|<math-up|Qcap>,<around*|[|<math-up|trigsimp><around*|(|Q<rsub|j>\<cdot\><math-up|traslBC>|)>|]>|)>|)>,<math-up|Qcap>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      inerzia(j):=block(

      [II],

      II:matrix([alpha[xx][i],alpha[xy][i],alpha[xz][i]],

      \ \ \ \ \ \ \ \ \ \ [alpha[xy][i],alpha[yy][i],alpha[yz][i]],

      \ \ \ \ \ \ \ \ \ \ [alpha[xz][i],alpha[yz][i],alpha[zz][i]]),

      II:subst(j, i, II),\ 

      return(II)

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><math-up|inerzia><around*|(|j|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|II>|]>,<math-up|II>:<matrix|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|i>>>|<row|<cell|<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|i>>>|<row|<cell|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|i>>|<cell|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|i>>>>>>,<math-up|II>:<math-up|subst><around*|(|j,i,<math-up|II>|)>,<math-up|return><around*|(|<math-up|II>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      massa(k):=M[k];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><math-up|massa><around*|(|k|)>\<assign\>M<rsub|k>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      ek(DH,dist):=block([Q,Qcap,I,wtemp,w,Si,Tatemp,Ta,Tbtemp,Tb,d,dd,Qend,B,Btemp,T,Tot,Btot,res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:[],w:[],Ta:[],Tb:[],B:[],T:[],Ttot:0,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ depends([q],t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:Qdirect(DH),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:Qbc(Q,DH,dist),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(Qcap) do(
      I:append(I,[inerzia(i)]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R:matrix([Qcap[i][1][1],Qcap[i][1][2],Qcap[i][1][3]],[Qcap[i][2][1],Qcap[i][2][2],Qcap[i][2][3]],[Qcap[i][3][1],Qcap[i][3][2],Qcap[i][3][3]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dR:diff(R,t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /* for j:1 thru length(DH)
      do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dR:subst('diff(q[j],t)=omega[j],dR)),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Sw:dR.transpose(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ wtemp:matrix([Sw[3][2]],[Sw[1][3]],[Sw[2][1]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ w:append(w,[trigreduce(expand(wtemp))]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tatemp:(1/2)*transpose(wtemp).R.I[i].transpose(R).wtemp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tatemp:trigsimp(trigreduce(trigexpand(Tatemp))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Ta:append(Ta,[Tatemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ d:matrix([Qcap[i][1][4]],[Qcap[i][2][4]],[Q[i][3][4]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dd:diff(d,t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /* for j:1 thru length(DH)
      do(dd:subst('diff(q[j],t)=omega[j],dd)),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tbtemp:(massa(i)/2)*trigsimp(trigreduce(trigexpand(transpose(dd).dd))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tb:append(Tb,[Tbtemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ T:append(T,[trigreduce(Tatemp+Tbtemp)])),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Ttot:T[i]+Ttot

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Ttot

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><math-up|ek><around*|(|<math-up|DH>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|Q,<math-up|Qcap>,I,<math-up|wtemp>,w,<math-up|Si>,<math-up|Tatemp>,<math-up|Ta>,<math-up|Tbtemp>,<math-up|Tb>,d,<math-up|dd>,<math-up|Qend>,B,<math-up|Btemp>,T,<math-up|Tot>,<math-up|Btot>,<math-up|res>|]>,I:<around*|[||]>,w:<around*|[||]>,<math-up|Ta>:<around*|[||]>,<math-up|Tb>:<around*|[||]>,B:<around*|[||]>,T:<around*|[||]>,<math-up|Ttot>:0,<math-up|depends><around*|(|<around*|[|q|]>,t|)>,Q:<math-up|Qdirect><around*|(|<math-up|DH>|)>,<math-up|Qcap>:<math-up|Qbc><around*|(|Q,<math-up|DH>,<math-up|dist>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|Qcap>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|I:<math-up|append><around*|(|I,<around*|[|<math-up|inerzia><around*|(|i|)>|]>|)>,R:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|3>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|3>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|3>>>>>>,<math-up|dR>:<math-up|diff><around*|(|R,t|)>,<math-up|Sw>:<math-up|dR>\<cdot\><math-up|transpose><around*|(|R|)>,<math-up|wtemp>:<matrix|<tformat|<table|<row|<cell|<around*|(|<math-up|Sw><rsub|3>|)><rsub|2>>>|<row|<cell|<around*|(|<math-up|Sw><rsub|1>|)><rsub|3>>>|<row|<cell|<around*|(|<math-up|Sw><rsub|2>|)><rsub|1>>>>>>,w:<math-up|append><around*|(|w,<around*|[|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|wtemp>|)>|)>|]>|)>,<math-up|Tatemp>:<frac|1|2>*<math-up|transpose><around*|(|<math-up|wtemp>|)>\<cdot\>R\<cdot\>I<rsub|i>\<cdot\><math-up|transpose><around*|(|R|)>\<cdot\><math-up|wtemp>,<math-up|Tatemp>:<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|Tatemp>|)>|)>|)>,<math-up|Ta>:<math-up|append><around*|(|<math-up|Ta>,<around*|[|<math-up|Tatemp>|]>|)>,d:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|Q<rsub|i>|)><rsub|3>|)><rsub|4>>>>>>,<math-up|dd>:<math-up|diff><around*|(|d,t|)>,<math-up|Tbtemp>:<frac|<math-up|massa><around*|(|i|)>|2>*<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|transpose><around*|(|<math-up|dd>|)>\<cdot\><math-up|dd>|)>|)>|)>,<math-up|Tb>:<math-up|append><around*|(|<math-up|Tb>,<around*|[|<math-up|Tbtemp>|]>|)>,T:<math-up|append><around*|(|T,<around*|[|<math-up|trigreduce><around*|(|<math-up|Tatemp>+<math-up|Tbtemp>|)>|]>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><math-up|Ttot>:T<rsub|i>+<math-up|Ttot>,<math-up|Ttot>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      ep(DH,dist):=block([Q,Qcap,g,U,Utemp,dTemp,prev,Utot],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:[],
      Qcap:[],U:[],Utot:zeromatrix(3,3),Utot:0,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ depends([q,omega],t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ g:10*matrix([0],[0],[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prev:ident(4),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:Qdirect(DH),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:Qbc(Q,DH,dist),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(Qcap)
      do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dTemp:matrix([Qcap[i][1][4]],[Qcap[i][2][4]],
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Qcap[i][3][4]]),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utemp:M[i]*transpose(g).dTemp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ U:append(U,[Utemp])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(U) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utot:Utot+U[i]

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ratsimp(trigsimp(trigreduce(trigexpand(Utot))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><math-up|ep><around*|(|<math-up|DH>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|Q,<math-up|Qcap>,g,U,<math-up|Utemp>,<math-up|dTemp>,<math-up|prev>,<math-up|Utot>|]>,Q:<around*|[||]>,<math-up|Qcap>:<around*|[||]>,U:<around*|[||]>,<math-up|Utot>:<math-up|zeromatrix><around*|(|3,3|)>,<math-up|Utot>:0,<math-up|depends><around*|(|<around*|[|q,\<omega\>|]>,t|)>,g:10*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-up|prev>:<math-up|ident><around*|(|4|)>,Q:<math-up|Qdirect><around*|(|<math-up|DH>|)>,<math-up|Qcap>:<math-up|Qbc><around*|(|Q,<math-up|DH>,<math-up|dist>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|Qcap>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|dTemp>:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|4>>>>>>,<math-up|Utemp>:M<rsub|i>*<math-up|transpose><around*|(|g|)>\<cdot\><math-up|dTemp>,U:<math-up|append><around*|(|U,<around*|[|<math-up|Utemp>|]>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|U|)><space|0.27em><math-bf|do><space|0.27em><math-up|Utot>:<math-up|Utot>+U<rsub|i>,<math-up|ratsimp><around*|(|<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|Utot>|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      eel(dh,f,u,dist):=block([T,U,L,dLq,dLqt,dLqp,F,eq,eqi,vel],

      \ \ \ \ \ \ \ \ \ \ print(q[i][i],"Indica la derivata i-esima
      di",q[i]),

      \ \ \ \ \ \ \ \ \ \ T:0,U:0,eq:zeromatrix(length(dh),1),vel:zeromatrix(length(dh),1),

      \ \ \ \ \ \ \ \ \ \ dLq:zeromatrix(length(dh),1),dLqt:zeromatrix(length(dh),1),

      \ \ \ \ \ \ \ \ \ \ dLqp:zeromatrix(length(dh),1),dF:zeromatrix(length(dh),1),
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ eq:zeromatrix(length(dh),1),depends([q],t),

      \ \ \ \ \ \ \ \ \ \ for i:1 thru length(dh) do(vel[i][1]:diff(q[i],t)),

      \ \ \ \ \ \ \ \ \ \ T:ek(dh,dist), U:ep(dh,dist),

      \ \ \ \ \ \ \ \ \ \ if length(dh)=1
      then(F:(1/2)*(transpose(vel).vel)*f)else

      \ \ \ \ \ \ \ \ \ \ (F:(1/2)*expand(transpose(vel).f.vel)),

      \ \ \ \ \ \ \ \ \ \ L:trigsimp(trigreduce(trigexpand(T-U))),

      \ \ \ \ \ \ \ \ \ \ for i:1 thru length(dh) do

      \ \ \ \ \ \ \ \ \ \ \ \ \ (dLq[i][1]:diff(L,'diff(q[i],t)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqt[i][1]:diff(dLq[i][1],t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqp[i][1]:diff(L,q[i]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dF[i][1]:expand(diff(F,'diff(q[i],t))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ eq[i][1]:dLqt[i][1]-dLqp[i][1]+dF[i][1]-u[i]),

      \ \ \ \ \ \ \ \ \ \ for i:1 thru length(dh) do

      \ \ \ \ \ \ \ \ \ \ \ \ \ (T:subst('diff(q[i],t)=q[i][1],T),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ T:subst('diff(diff(q[i],t),t)=q[i][2],T),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ F:subst('diff(q[i],t)=q[i][1],F),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ F:subst('diff(diff(q[i],t),t)=q[i][2],F),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ U:subst('diff(q[i],t)=q[i][1],U),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ U:subst('diff(diff(q[i],t),t)=q[i][2],U),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ L:subst('diff(q[i],t)=q[i][1],L),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ L:subst('diff(diff(q[i],t),t)=q[i][2],L),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLq:subst('diff(q[i],t)=q[i][1],dLq),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLq:subst('diff(diff(q[i],t),t)=q[i][2],dLq),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqt:subst('diff(q[i],t)=q[i][1],dLqt),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqt:subst('diff(diff(q[i],t),t)=q[i][2],dLqt),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqp:subst('diff(q[i],t)=q[i][1],dLqp),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dLqp:subst('diff(diff(q[i],t),t)=q[i][2],dLqp),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dF:subst('diff(q[i],t)=q[i][1],dF),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ dF:subst('diff(diff(q[i],t),t)=q[i][2],dF),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ eq:subst('diff(q[i],t)=q[i][1],eq),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ eq:subst('diff(diff(q[i],t),t)=q[i][2],eq)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia cinetica
      T=",ratsimp(expand(T))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia potenziale
      U=",ratsimp(expand(U))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Forze di attrito F=",F),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Forze esterne u=",u),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Lagrangiana
      L=",ratsimp(trigreduce(expand(L)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("dL/dq' = ",
      ratsimp(trigreduce(expand(dLq)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("d/dt dL/dq' = ",
      ratsimp(trigreduce(expand(dLqt)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("dL/dq =
      ",ratsimp(trigreduce(expand(dLqp)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("dF/dq' = ",ratsimp(dF)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(dh) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Equazione eulero
      lagrange",i),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(ratsimp(eq[i][1][1]),"=0")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ ));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><math-up|eel><around*|(|<math-up|dh>,f,u,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|T,U,L,<math-up|dLq>,<math-up|dLqt>,<math-up|dLqp>,F,<math-up|eq>,<math-up|eqi>,<math-up|vel>|]>,<math-up|print><around*|(|<around*|(|q<rsub|i>|)><rsub|i>,<text|Indica
      la derivata i-esima di >,q<rsub|i>|)>,T:0,U:0,<math-up|eq>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|vel>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|dLq>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|dLqt>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|dLqp>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|dF>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|eq>:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|dh>|)>,1|)>,<math-up|depends><around*|(|<around*|[|q|]>,t|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|dh>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|vel><rsub|i>|)><rsub|1>:<math-up|diff><around*|(|q<rsub|i>,t|)>,T:<math-up|ek><around*|(|<math-up|dh>,<math-up|dist>|)>,U:<math-up|ep><around*|(|<math-up|dh>,<math-up|dist>|)>,<math-bf|if><space|0.27em><math-up|length><around*|(|<math-up|dh>|)>=1<space|0.27em><math-bf|then><space|0.27em>F:<frac|1|2>*<math-up|transpose><around*|(|<math-up|vel>|)>\<cdot\><math-up|vel>*f<space|0.27em><math-bf|else><space|0.27em>F:<frac|1|2>*<math-up|expand><around*|(|<math-up|transpose><around*|(|<math-up|vel>|)>\<cdot\>f\<cdot\><math-up|vel>|)>,L:<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|T-U|)>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|dh>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<around*|(|<math-up|dLq><rsub|i>|)><rsub|1>:<math-up|diff><around*|(|L,<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>|)>,<around*|(|<math-up|dLqt><rsub|i>|)><rsub|1>:<math-up|diff><around*|(|<around*|(|<math-up|dLq><rsub|i>|)><rsub|1>,t|)>,<around*|(|<math-up|dLqp><rsub|i>|)><rsub|1>:<math-up|diff><around*|(|L,q<rsub|i>|)>,<around*|(|<math-up|dF><rsub|i>|)><rsub|1>:<math-up|expand><around*|(|<math-up|diff><around*|(|F,<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>|)>|)>,<around*|(|<math-up|eq><rsub|i>|)><rsub|1>:<around*|(|<math-up|dLqt><rsub|i>|)><rsub|1>-<around*|(|<math-up|dLqp><rsub|i>|)><rsub|1>+<around*|(|<math-up|dF><rsub|i>|)><rsub|1>-u<rsub|i>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|dh>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|T:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,T|)>,T:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,T|)>,F:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,F|)>,F:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,F|)>,U:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,U|)>,U:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,U|)>,L:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,L|)>,L:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,L|)>,<math-up|dLq>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,<math-up|dLq>|)>,<math-up|dLq>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,<math-up|dLq>|)>,<math-up|dLqt>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,<math-up|dLqt>|)>,<math-up|dLqt>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,<math-up|dLqt>|)>,<math-up|dLqp>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,<math-up|dLqp>|)>,<math-up|dLqp>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,<math-up|dLqp>|)>,<math-up|dF>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,<math-up|dF>|)>,<math-up|dF>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,<math-up|dF>|)>,<math-up|eq>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|i>=<around*|(|q<rsub|i>|)><rsub|1>,<math-up|eq>|)>,<math-up|eq>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*<math-up|diff><around*|(|q<rsub|i>,t|)>=<around*|(|q<rsub|i>|)><rsub|2>,<math-up|eq>|)>|)>,<math-up|print><around*|(|<text|Energia
      cinetica T= >,<math-up|ratsimp><around*|(|<math-up|expand><around*|(|T|)>|)>|)>,<math-up|print><around*|(|<text|Energia
      potenziale U= >,<math-up|ratsimp><around*|(|<math-up|expand><around*|(|U|)>|)>|)>,<math-up|print><around*|(|<text|Forze
      di attrito F= >,F|)>,<math-up|print><around*|(|<text|Forze esterne u=
      >,u|)>,<math-up|print><around*|(|<text|Lagrangiana L=
      >,<math-up|ratsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|L|)>|)>|)>|)>,<math-up|print><around*|(|<text|dL/dq'
      = >,<math-up|ratsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|dLq>|)>|)>|)>|)>,<math-up|print><around*|(|<text|d/dt
      dL/dq' = >,<math-up|ratsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|dLqt>|)>|)>|)>|)>,<math-up|print><around*|(|<text|dL/dq
      = >,<math-up|ratsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|dLqp>|)>|)>|)>|)>,<math-up|print><around*|(|<text|dF/dq'
      = >,<math-up|ratsimp><around*|(|<math-up|dF>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|dh>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|print><around*|(|<text|Equazione
      eulero lagrange >,i|)>,<math-up|print><around*|(|<math-up|ratsimp><around*|(|<around*|(|<around*|(|<math-up|eq><rsub|i>|)><rsub|1>|)><rsub|1>|)>,<text|=0
      >|)>|)>|)>>>
    </unfolded-io>

    <\textput>
      2DOF
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      dueDof:[[q[1],0,0,L[1]],[q[2],0,0,L[2]]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<around*|[|q<rsub|1>,0,0,L<rsub|1>|]>,<around*|[|q<rsub|2>,0,0,L<rsub|2>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      u:matrix([u[1]],[u[2]])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      F:matrix([K[11],0],[0,K[22]]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|K<rsub|11>>|<cell|0>>|<row|<cell|0>|<cell|K<rsub|22>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      distance:[matrix([-L[1]/2],[0],[0]),matrix([-L[2]/2],[0],[0])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      eel(dueDof,F,u,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|(|q<rsub|i>|)><rsub|i>*<text|Indica
      la derivata i-esima di >q<rsub|i>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica T=
      ><frac|<around*|(|4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+8*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+2*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*L<rsub|2><rsup|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|1><rsup|2>|)>*M<rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|1><rsup|2>*M<rsub|1>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia potenziale U= >0>>

      <math|<with|math-display|true|<text|Forze di attrito F=
      ><frac|<around*|(|q<rsub|2>|)><rsub|1><rsup|2>*K<rsub|22>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*K<rsub|11>|2>>>

      <math|<with|math-display|true|<text|Forze esterne u=
      ><matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>>>>>>

      <math|<with|math-display|true|<text|Lagrangiana L=
      ><frac|<around*|(|4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+8*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+2*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*L<rsub|2><rsup|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|1><rsup|2>|)>*M<rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|1><rsup|2>*M<rsub|1>|8>>>

      <math|<with|math-display|true|<text|dL/dq' =
      ><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|2*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|4*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|<around*|(|q<rsub|2>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1>|)>*L<rsub|2><rsup|2>+4*<around*|(|q<rsub|1>|)><rsub|1>*L<rsub|1><rsup|2>|)>*M<rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1>*L<rsub|1><rsup|2>*M<rsub|1>|4>>>|<row|<cell|<frac|2*<around*|(|q<rsub|1>|)><rsub|1>*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|4*<around*|(|q<rsub|2>|)><rsub|1>+4*<around*|(|q<rsub|1>|)><rsub|1>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|q<rsub|2>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1>|)>*L<rsub|2><rsup|2>*M<rsub|2>|4>>>>>>>>

      <math|<with|math-display|true|<text|d/dt dL/dq' =
      ><matrix|<tformat|<table|<row|<cell|-<frac|<around*|(|2*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-2*L<rsub|1>*<around*|(|q<rsub|2>|)><rsub|2>-4*L<rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|-4*<around*|(|q<rsub|2>|)><rsub|2>-4*<around*|(|q<rsub|1>|)><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|-<around*|(|q<rsub|2>|)><rsub|2>-<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2><rsup|2>-4*L<rsub|1><rsup|2>*<around*|(|q<rsub|1>|)><rsub|2>|)>*M<rsub|2>+<around*|(|-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>-L<rsub|1><rsup|2>*M<rsub|1>|)>*<around*|(|q<rsub|1>|)><rsub|2>|4>>>|<row|<cell|-<frac|2*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>*L<rsub|1>*L<rsub|2>*M<rsub|2>*sin
      <around*|(|q<rsub|2>|)>-2*L<rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|-4*<around*|(|q<rsub|2>|)><rsub|2>-4*<around*|(|q<rsub|1>|)><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|-<around*|(|q<rsub|2>|)><rsub|2>-<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2><rsup|2>*M<rsub|2>|4>>>>>>>>

      <math|<with|math-display|true|<text|dL/dq =
      ><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|<around*|(|<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*sin
      <around*|(|q<rsub|2>|)>|2>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|dF/dq' =
      ><matrix|<tformat|<table|<row|<cell|<around*|(|q<rsub|1>|)><rsub|1>*K<rsub|11>>>|<row|<cell|<around*|(|q<rsub|2>|)><rsub|1>*K<rsub|22>>>>>>>>

      <math|<with|math-display|true|<text|Equazione eulero lagrange >1>>

      \;

      \ <math|<with|math-display|true|-<frac|<around*|(|2*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>+4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|2>|)><rsub|1>|)>*L<rsub|1>*L<rsub|2>*M<rsub|2>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-2*L<rsub|1>*<around*|(|q<rsub|2>|)><rsub|2>-4*L<rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-4*<around*|(|q<rsub|1>|)><rsub|1>*K<rsub|11>+<around*|(|-4*<around*|(|q<rsub|2>|)><rsub|2>-4*<around*|(|q<rsub|1>|)><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<around*|(|<around*|(|-<around*|(|q<rsub|2>|)><rsub|2>-<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2><rsup|2>-4*L<rsub|1><rsup|2>*<around*|(|q<rsub|1>|)><rsub|2>|)>*M<rsub|2>+<around*|(|-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>-L<rsub|1><rsup|2>*M<rsub|1>|)>*<around*|(|q<rsub|1>|)><rsub|2>+4*u<rsub|1>|4><text|=0
      >>>

      <math|<with|math-display|true|<text|Equazione eulero lagrange >2>>

      \;

      \ <math|<with|math-display|true|<frac|2*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|1>*L<rsub|2>*M<rsub|2>*sin
      <around*|(|q<rsub|2>|)>+2*L<rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+4*<around*|(|q<rsub|2>|)><rsub|1>*K<rsub|22>+<around*|(|4*<around*|(|q<rsub|2>|)><rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-4*u<rsub|2>+<around*|(|<around*|(|q<rsub|2>|)><rsub|2>+<around*|(|q<rsub|1>|)><rsub|2>|)>*L<rsub|2><rsup|2>*M<rsub|2>|4><text|=0
      >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><math-bf|done>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      \;
    </input>
  </session>

  <math|>Robot Cilindrico

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      cilindrico:[[q[1],L[1],0,0],[0,q[2],-%pi/2,0],[0,q[3],0,0]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,0,0|]>,<around*|[|0,q<rsub|2>,-<frac|\<pi\>|2>,0|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      u:matrix([u[1]],[u[2]],[u[3]]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|u<rsub|3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      F:matrix([K[11],0,0],[0,K[22],0],[0,0,K[33]]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|K<rsub|11>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|K<rsub|22>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|K<rsub|33>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      distance:[matrix([0],[0],[-L[1]/2]),matrix([0],[-L[2]/2],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      eel(cilindrico,F,u,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|(|q<rsub|i>|)><rsub|i>*<text|Indica
      la derivata i-esima di >q<rsub|i>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica T=
      ><frac|4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>-4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>+<around*|(|<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3><rsup|2>+4*<around*|(|q<rsub|3>|)><rsub|1><rsup|2>+4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>|)>*M<rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>*M<rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia potenziale U=
      ><around*|(|10*q<rsub|2>+10*L<rsub|1>|)>*M<rsub|3>+10*M<rsub|2>*q<rsub|2>+<around*|(|5*L<rsub|2>+10*L<rsub|1>|)>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>

      \;

      \ <math|<with|math-display|true|<text|Forze di attrito F=
      ><frac|<around*|(|q<rsub|3>|)><rsub|1><rsup|2>*K<rsub|33>+<around*|(|q<rsub|2>|)><rsub|1><rsup|2>*K<rsub|22>+<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*K<rsub|11>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Forze esterne u=
      ><matrix|<tformat|<table|<row|<cell|u<rsub|1>>>|<row|<cell|u<rsub|2>>>|<row|<cell|u<rsub|3>>>>>>>>

      <math|<with|math-display|true|<text|Lagrangiana L=
      ><frac|4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>-4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>+<around*|(|<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3><rsup|2>-80*q<rsub|2>-80*L<rsub|1>+4*<around*|(|q<rsub|3>|)><rsub|1><rsup|2>+4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>|)>*M<rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-80*M<rsub|2>*q<rsub|2>+<around*|(|-40*L<rsub|2>-80*L<rsub|1>+4*<around*|(|q<rsub|2>|)><rsub|1><rsup|2>|)>*M<rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>-40*L<rsub|1>*M<rsub|1>|8>>>

      \;

      \ <math|<with|math-display|true|<text|dL/dq' =
      ><matrix|<tformat|<table|<row|<cell|<frac|4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1>*M<rsub|3>*q<rsub|3><rsup|2>-4*<around*|(|q<rsub|1>|)><rsub|1>*L<rsub|3>*M<rsub|3>*q<rsub|3>+<around*|(|q<rsub|1>|)><rsub|1>*L<rsub|3><rsup|2>*M<rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|4>>>|<row|<cell|<around*|(|q<rsub|2>|)><rsub|1>*M<rsub|3>+<around*|(|q<rsub|2>|)><rsub|1>*M<rsub|2>>>|<row|<cell|<around*|(|q<rsub|3>|)><rsub|1>*M<rsub|3>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|d/dt dL/dq' =
      ><matrix|<tformat|<table|<row|<cell|<frac|4*<around*|(|q<rsub|1>|)><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|2>*M<rsub|3>*q<rsub|3><rsup|2>+<around*|(|8*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|3>|)><rsub|1>-4*<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|3>|)>*M<rsub|3>*q<rsub|3>+<around*|(|<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|3><rsup|2>-4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|3>|)><rsub|1>*L<rsub|3>|)>*M<rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>|4>>>|<row|<cell|<around*|(|q<rsub|2>|)><rsub|2>*M<rsub|3>+<around*|(|q<rsub|2>|)><rsub|2>*M<rsub|2>>>|<row|<cell|<around*|(|q<rsub|3>|)><rsub|2>*M<rsub|3>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|dL/dq =
      ><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-10*M<rsub|3>-10*M<rsub|2>>>|<row|<cell|<frac|2*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3>-<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>|2>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|dF/dq' =
      ><matrix|<tformat|<table|<row|<cell|<around*|(|q<rsub|1>|)><rsub|1>*K<rsub|11>>>|<row|<cell|<around*|(|q<rsub|2>|)><rsub|1>*K<rsub|22>>>|<row|<cell|<around*|(|q<rsub|3>|)><rsub|1>*K<rsub|33>>>>>>>>

      <math|<with|math-display|true|<text|Equazione eulero lagrange >1>>

      \;

      \ <math|<with|math-display|true|<frac|4*<around*|(|q<rsub|1>|)><rsub|1>*K<rsub|11>+4*<around*|(|q<rsub|1>|)><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|2>*M<rsub|3>*q<rsub|3><rsup|2>+<around*|(|8*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|3>|)><rsub|1>-4*<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|3>|)>*M<rsub|3>*q<rsub|3>+<around*|(|<around*|(|q<rsub|1>|)><rsub|2>*L<rsub|3><rsup|2>-4*<around*|(|q<rsub|1>|)><rsub|1>*<around*|(|q<rsub|3>|)><rsub|1>*L<rsub|3>|)>*M<rsub|3>+4*<around*|(|q<rsub|1>|)><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>*<around*|(|q<rsub|1>|)><rsub|2>-4*u<rsub|1>|4><text|=0
      >>>

      <math|<with|math-display|true|<text|Equazione eulero lagrange >2>>

      \;

      \ <math|<with|math-display|true|<around*|(|q<rsub|2>|)><rsub|1>*K<rsub|22>+<around*|(|<around*|(|q<rsub|2>|)><rsub|2>+10|)>*M<rsub|3>-u<rsub|2>+<around*|(|<around*|(|q<rsub|2>|)><rsub|2>+10|)>*M<rsub|2><text|=0
      >>>

      \;

      \ <math|<with|math-display|true|<text|Equazione eulero lagrange >3>>

      <math|<with|math-display|true|<frac|2*<around*|(|q<rsub|3>|)><rsub|1>*K<rsub|33>-2*u<rsub|3>-2*<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3>+<around*|(|<around*|(|q<rsub|1>|)><rsub|1><rsup|2>*L<rsub|3>+2*<around*|(|q<rsub|3>|)><rsub|2>|)>*M<rsub|3>|2><text|=0
      >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><math-bf|done>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>