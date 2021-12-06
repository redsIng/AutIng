<TeXmacs|1.99.17>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|17em><with|font-series|bold|Procedura 26>

  Scrivere una procedura Maxima che, prendendo in ingresso la tabella di
  Denavit-Hartenberg e le informazioni necessarie per individuare i
  baricentri dei link, restituisca: energia cinetica dovuta alla rotazione ed
  energia cinetica dovuta alla traslazione per ogni link e per l'intero
  robot; la matrice delle inerzie generalizzate per ogni link e per l'intero
  robot.

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      <code|kill(all);>
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o0>)
      >><math-bf|done>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|Procedure ausiliarie per il calcolo della
      cinemarica diretta in accordo a Denavit-Hartenberg>
    </textput>

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
      rotLaplace(k,theta):=block([res,S,I,temp],

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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,S,I,<math-up|temp>|]>,S:<math-up|ident><around*|(|3|)>,I:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*k<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,\<vartheta\>|)>|)>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      Av(v,theta,d):=block([res,Trot,row,Atemp,A],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Trot:rotLaplace(v,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row:matrix([0,0,0,1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Atemp:addcol(Trot,d*transpose(v)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ A:addrow(Atemp,row),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:A

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

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
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
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
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-up|Qdirect><around*|(|<math-up|DH>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,Q,<math-up|Qtemp>|]>,Q:<around*|[|Q<around*|(|<around*|(|<math-up|DH><rsub|1>|)><rsub|1>,<around*|(|<math-up|DH><rsub|1>|)><rsub|2>,<around*|(|<math-up|DH><rsub|1>|)><rsub|3>,<around*|(|<math-up|DH><rsub|1>|)><rsub|4>|)>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|from><space|0.27em>2<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Qtemp>:Q<around*|(|<around*|(|<math-up|DH><rsub|i>|)><rsub|1>,<around*|(|<math-up|DH><rsub|i>|)><rsub|2>,<around*|(|<math-up|DH><rsub|i>|)><rsub|3>,<around*|(|<math-up|DH><rsub|i>|)><rsub|4>|)>,Q:<math-up|append><around*|(|Q,<around*|[|<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|Q<rsub|i-1>\<cdot\><math-up|Qtemp>|)>|)>|)>|]>|)>|)>,<math-up|res>:Q|)>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|Qbc(Q,bc):=>prende in ingresso la matrice Q
      della cinematica diretta ed applica la traslazione necessaria a portare
      il sistema di riferimento nel baricentro.
    </textput>

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
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-up|Qbc><around*|(|Q,<math-up|bc>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|traslBC>,<math-up|Qcap>|]>,<math-up|Qcap>:<around*|[||]>,<math-up|ex>:<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<math-up|ez>:<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|Q|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|traslBC>:<math-up|addrow><around*|(|<math-up|addcol><around*|(|<math-up|ident><around*|(|3|)>,<math-up|dist><rsub|j>|)>,<around*|[|0,0,0,1|]>|)>,<math-up|Qcap>:<math-up|append><around*|(|<math-up|Qcap>,<around*|[|<math-up|trigsimp><around*|(|Q<rsub|j>\<cdot\><math-up|traslBC>|)>|]>|)>|)>,<math-up|Qcap>|)>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|inerzia(j):= >funzione che associa al link
      j-esimo la corrispettiva matrice di interzia.
    </textput>

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

    <\textput>
      <with|font-series|bold|ek(DH):=>funzione responsabile del calcolo
      dell'energia cinetica dell'intero robot.

      <\equation*>
        DH=<matrix|<tformat|<table|<row|<cell|\<theta\><space|1em>d<space|1em>\<alpha\><space|1em>a>>|<row|<cell|\<vdots\><space|1em>\<vdots\><space|1em>\<vdots\><space|1em>\<vdots\>>>>>>
      </equation*>

      Calcolo cinematica diretta in accordo all'algoritmo di
      Denavit-Hartenberg:

      <\equation*>
        Q<rsub|0,n>=Q<rsub|01>Q<rsub|12>\<ldots\>Q<rsub|n-1,n><space|1em>con
        n\<equiv\>#DOF
      </equation*>

      Applico traslazioni necessarie per portare il sistema il
      <math|SR<rsub|i-1,i>> con l'origine coincidente con il baricentro del
      link:

      <\equation*>
        <wide|Q|^><rsub|01>=Q<rsub|01><matrix|<tformat|<table|<row|<cell|I<space|1em>d>>|<row|<cell|0<space|1em>1>>>>>,<wide|Q|^><rsub|12>\<ldots\><wide|Q|^><rsub|n-1,n><space|1em>in
        cui d sono le coordinate del baricentro del link-<frac|L<rsub|i>|2>
      </equation*>

      A questo punto, l'energia cinetica del link i-esimo:

      <\equation*>
        T<rsub|i>=T<rsub|i><rsub|a>+T<rsub|i><rsub|b>=<frac|1|2>\<omega\><rsub|i><rsup|T>R<rsub|i>\<bbb-I\><rsub|i>R<rsub|i><rsup|T>\<omega\><rsub|I>+<frac|1|2>M<rsub|i><wide|d|\<dot\>><rsup|T><rsub|i<rsup|>><wide|d|\<dot\>><rsup|><rsub|i<rsup|>>
      </equation*>

      In cui:

      <\equation*>
        \<omega\><rsub|i>\<equiv\><wide|q|\<dot\>><rsub|i>*e<rsub|k><space|2em>con
        k\<in\><around*|{|x,z|}> in base all<rprime|'>asse su cui avviene la
        rotazione
      </equation*>

      In particolare:

      <\equation*>
        \<omega\><rsub|i>=\<omega\>=<matrix|<tformat|<table|<row|<cell|\<omega\><rsub|x>>>|<row|<cell|\<omega\><rsub|y>>>|<row|<cell|\<omega\><rsub|z>>>>>>
        ottenuto da S<around*|(|\<omega\>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>-\<omega\><rsub|z><space|1em>\<omega\><rsub|y>>>|<row|<cell|\<omega\><rsub|z><space|1em>0<space|1em>-\<omega\><rsub|x>>>|<row|<cell|\<omega\><rsub|y><space|1em>\<omega\><rsub|x><space|1em>0>>>>>=<wide|R|\<dot\>>R<rsup|T>
      </equation*>

      <\equation*>
        R<script-assign> matrice di rotazione associata a
        <wide|Q|^><rsub|i-1,i>
      </equation*>

      <\equation*>
        \<bbb-I\><script-assign>matrice di inerzia del link i-esimo
      </equation*>

      <\equation*>
        M<rsub|i><script-assign>massa dell<rprime|'>i-esimo link<rsub|>
      </equation*>

      <\equation*>
        d<rsub|i><script-assign> coordinate di posizione associata a
        <wide|Q|^><rsub|i-1,i>
      </equation*>

      <\equation*>
        T<rsub|a><script-assign> energia cinetica associata alla rotazione
      </equation*>

      <\equation*>
        T<rsub|b><script-assign> energia cinetica associata alla traslazione
      </equation*>

      Inoltre si definisce, la matrice delle inerzie generalizzate
      B<math|<rsub|i>>, nel seguente modo:

      <\equation*>
        T<rsub|i>=T<rsub|i><rsub|a>+T<rsub|i><rsub|b>=<frac|1|2><matrix|<tformat|<table|<row|<cell|<wide|q|\<dot\>><rsub|1>\<ldots\><wide|q|\<dot\>><rsub|n>>>>>>B<rsub|i><matrix|<tformat|<table|<row|<cell|<wide|q|\<dot\>><rsub|1>>>|<row|<cell|\<vdots\>>>|<row|<cell|<wide|q|\<dot\>><rsub|n>>>>>>
      </equation*>

      In altri termini è la forma quadratica corrispondende all'energia
      totale del link i-esimo.

      In particolare, per l'intero robot la matrice delle interzie
      generalizzate:

      <\equation*>
        B=B<rsub|1>+\<cdots\>+B<rsub|n>
      </equation*>

      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      ek(DH,dist):=block([Q,Qcap,I,wtemp,w,Si,Tatemp,Ta,Tbtemp,Tb,d,dd,Qend,B,Btemp,T,Tot,Btot,res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:[],w:[],Ta:[],Tb:[],B:[],T:[],Ttot:0,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ depends([q,omega],t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:Qdirect(DH),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:Qbc(Q,DH,dist),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(Qcap) do(
      I:append(I,[inerzia(i)]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R:matrix([Qcap[i][1][1],Qcap[i][1][2],Qcap[i][1][3]],[Qcap[i][2][1],Qcap[i][2][2],Qcap[i][2][3]],[Qcap[i][3][1],Qcap[i][3][2],Qcap[i][3][3]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dR:diff(R,t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru length(DH)
      do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dR:subst('diff(q[j],t)=omega[j],dR)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Sw:dR.transpose(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ wtemp:matrix([Sw[3][2]],[Sw[1][3]],[Sw[2][1]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ w:append(w,[trigreduce(expand(wtemp))]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tatemp:(1/2)*transpose(wtemp).R.I[i].transpose(R).wtemp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tatemp:trigsimp(trigreduce(trigexpand(Tatemp))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Ta:append(Ta,[Tatemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ d:matrix([Qcap[i][1][4]],[Qcap[i][2][4]],[Q[i][3][4]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dd:diff(d,t),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru length(DH)
      do(dd:subst('diff(q[j],t)=omega[j],dd)),Tbtemp:(massa(i)/2)*trigsimp(trigreduce(trigexpand(transpose(dd).dd))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Tb:append(Tb,[Tbtemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ T:append(T,[trigreduce(Tatemp+Tbtemp)])),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Ttot:T[i]+Ttot

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ B:zeromatrix(length(DH),length(DH)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ B[i][i]:coeff(collectterms(expand(2*Ttot),omega[i]^2),omega[i],2),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i#j then\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ B[i][j]:ratsimp(coeff(coeff(expand(Ttot*(1/2)),omega[i],1),omega[j],1))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if length(DH)#2 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[[Ta[1],Tb[1],T[1]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Ta[2],Tb[2],T[2]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Ta[3],Tb[3],T[3]],[B]])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else (res:[[Ta[1],Tb[1],T[1]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Ta[2],Tb[2],T[2]],[B]])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><math-up|ek><around*|(|<math-up|DH>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|Q,<math-up|Qcap>,I,<math-up|wtemp>,w,<math-up|Si>,<math-up|Tatemp>,<math-up|Ta>,<math-up|Tbtemp>,<math-up|Tb>,d,<math-up|dd>,<math-up|Qend>,B,<math-up|Btemp>,T,<math-up|Tot>,<math-up|Btot>,<math-up|res>|]>,I:<around*|[||]>,w:<around*|[||]>,<math-up|Ta>:<around*|[||]>,<math-up|Tb>:<around*|[||]>,B:<around*|[||]>,T:<around*|[||]>,<math-up|Ttot>:0,<math-up|depends><around*|(|<around*|[|q,\<omega\>|]>,t|)>,Q:<math-up|Qdirect><around*|(|<math-up|DH>|)>,<math-up|Qcap>:<math-up|Qbc><around*|(|Q,<math-up|DH>,<math-up|dist>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|Qcap>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|I:<math-up|append><around*|(|I,<around*|[|<math-up|inerzia><around*|(|i|)>|]>|)>,R:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|3>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|3>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|1>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|2>>|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|3>>>>>>,<math-up|dR>:<math-up|diff><around*|(|R,t|)>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><math-up|dR>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|j>=\<omega\><rsub|j>,<math-up|dR>|)>,<math-up|Sw>:<math-up|dR>\<cdot\><math-up|transpose><around*|(|R|)>,<math-up|wtemp>:<matrix|<tformat|<table|<row|<cell|<around*|(|<math-up|Sw><rsub|3>|)><rsub|2>>>|<row|<cell|<around*|(|<math-up|Sw><rsub|1>|)><rsub|3>>>|<row|<cell|<around*|(|<math-up|Sw><rsub|2>|)><rsub|1>>>>>>,w:<math-up|append><around*|(|w,<around*|[|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|wtemp>|)>|)>|]>|)>,<math-up|Tatemp>:<frac|1|2>*<math-up|transpose><around*|(|<math-up|wtemp>|)>\<cdot\>R\<cdot\>I<rsub|i>\<cdot\><math-up|transpose><around*|(|R|)>\<cdot\><math-up|wtemp>,<math-up|Tatemp>:<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|Tatemp>|)>|)>|)>,<math-up|Ta>:<math-up|append><around*|(|<math-up|Ta>,<around*|[|<math-up|Tatemp>|]>|)>,d:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|Q<rsub|i>|)><rsub|3>|)><rsub|4>>>>>>,<math-up|dd>:<math-up|diff><around*|(|d,t|)>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><math-up|dd>:<math-up|subst><around*|(|<frac|1|<math-up|mtimes><around*|(||)>>*q<rsub|j>=\<omega\><rsub|j>,<math-up|dd>|)>,<math-up|Tbtemp>:<frac|<math-up|massa><around*|(|i|)>|2>*<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|transpose><around*|(|<math-up|dd>|)>\<cdot\><math-up|dd>|)>|)>|)>,<math-up|Tb>:<math-up|append><around*|(|<math-up|Tb>,<around*|[|<math-up|Tbtemp>|]>|)>,T:<math-up|append><around*|(|T,<around*|[|<math-up|trigreduce><around*|(|<math-up|Tatemp>+<math-up|Tbtemp>|)>|]>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><math-up|Ttot>:T<rsub|i>+<math-up|Ttot>,B:<math-up|zeromatrix><around*|(|<math-up|length><around*|(|<math-up|DH>|)>,<math-up|length><around*|(|<math-up|DH>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<around*|(|B<rsub|i>|)><rsub|i>:<math-up|coeff><around*|(|<math-up|collectterms><around*|(|<math-up|expand><around*|(|2*<math-up|Ttot>|)>,\<omega\><rsub|i><rsup|2>|)>,\<omega\><rsub|i>,2|)>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i\<neq\>j<space|0.27em><math-bf|then><space|0.27em><around*|(|B<rsub|i>|)><rsub|j>:<math-up|ratsimp><around*|(|<math-up|coeff><around*|(|<math-up|coeff><around*|(|<math-up|expand><around*|(|<math-up|Ttot>*<around*|(|<frac|1|2>|)>|)>,\<omega\><rsub|i>,1|)>,\<omega\><rsub|j>,1|)>|)>|)>,<math-bf|if><space|0.27em><math-up|length><around*|(|<math-up|DH>|)>\<neq\>2<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<around*|[|<around*|[|<math-up|Ta><rsub|1>,<math-up|Tb><rsub|1>,T<rsub|1>|]>,<around*|[|<math-up|Ta><rsub|2>,<math-up|Tb><rsub|2>,T<rsub|2>|]>,<around*|[|<math-up|Ta><rsub|3>,<math-up|Tb><rsub|3>,T<rsub|3>|]>,<around*|[|B|]>|]><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<around*|[|<around*|[|<math-up|Ta><rsub|1>,<math-up|Tb><rsub|1>,T<rsub|1>|]>,<around*|[|<math-up|Ta><rsub|2>,<math-up|Tb><rsub|2>,T<rsub|2>|]>,<around*|[|B|]>|]>|)>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|ep(DH):=>funzione responsabile del calcolo
      dell'energia potenziale a cui è soggetto il robot.

      <\equation*>
        DH=<matrix|<tformat|<table|<row|<cell|\<theta\><space|1em>d<space|1em>\<alpha\><space|1em>a>>|<row|<cell|\<vdots\><space|1em>\<vdots\><space|1em>\<vdots\><space|1em>\<vdots\>>>>>>
      </equation*>

      Calcolo cinematica diretta in accordo all'algoritmo di
      Denavit-Hartenberg:

      <\equation*>
        Q<rsub|0,n>=Q<rsub|01>Q<rsub|12>\<ldots\>Q<rsub|n-1,n><space|1em>con
        n\<equiv\>#DOF
      </equation*>

      Applico traslazioni necessarie per portare il sistema il
      <math|SR<rsub|i-1,i>> con l'origine coincidente con il baricentro del
      link:

      <\equation*>
        <wide|Q|^><rsub|01>=Q<rsub|01><matrix|<tformat|<table|<row|<cell|I<space|1em>d>>|<row|<cell|0<space|1em>1>>>>>=<matrix|<tformat|<table|<row|<cell|<wide|R|^><space|1em><wide|d|^>>>|<row|<cell|0<space|1em>1>>>>>,<wide|Q|^><rsub|12>\<ldots\><wide|Q|^><rsub|n-1,n><space|1em>in
        cui d sono le coordinate del baricentro del link-<frac|L<rsub|i>|2>
      </equation*>

      L'energia potenziale per il link i-esimo ha la seguente forma:

      <\equation*>
        U<rsub|i>=-M*g<rsup|T>*d<space|1em>con
        g=9,8*e<rsub|z>\<simeq\>10*e<rsub|z>,d=<wide|d|^><script-assign>coordinate
        nel baricentro
      </equation*>

      <\equation*>
        \;
      </equation*>

      Per l'intero robot:

      <\equation*>
        U=<big|sum><rsub|i=1><rsup|n>U<rsub|i>=-<big|sum><rsub|i=1><rsup|n>M<rsub|i>*g<rsup|T>*d<rsub|i>
      </equation*>
    </textput>

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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      gravitazionale link",i),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dTemp:matrix([Qcap[i][1][4]],[Qcap[i][2][4]],
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Qcap[i][3][4]]),

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utemp:M[i]*transpose(g).dTemp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ U:append(U,[Utemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("U[",i,"]=",Utemp)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(U) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utot:Utot+U[i]

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      gravitazionale totale=",ratsimp(trigsimp(trigreduce(trigexpand(Utot)))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><math-up|ep><around*|(|<math-up|DH>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|Q,<math-up|Qcap>,g,U,<math-up|Utemp>,<math-up|dTemp>,<math-up|prev>,<math-up|Utot>|]>,Q:<around*|[||]>,<math-up|Qcap>:<around*|[||]>,U:<around*|[||]>,<math-up|Utot>:<math-up|zeromatrix><around*|(|3,3|)>,<math-up|Utot>:0,<math-up|depends><around*|(|<around*|[|q,\<omega\>|]>,t|)>,g:10*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-up|prev>:<math-up|ident><around*|(|4|)>,Q:<math-up|Qdirect><around*|(|<math-up|DH>|)>,<math-up|Qcap>:<math-up|Qbc><around*|(|Q,<math-up|DH>,<math-up|dist>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|Qcap>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|print><around*|(|<text|Energia
      gravitazionale link >,i|)>,<math-up|dTemp>:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|4>>>>>>,<math-up|Utemp>:M<rsub|i>*<math-up|transpose><around*|(|g|)>\<cdot\><math-up|dTemp>,U:<math-up|append><around*|(|U,<around*|[|<math-up|Utemp>|]>|)>,<math-up|print><around*|(|<text|U[
      >,i,<text|]= >,<math-up|Utemp>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|U|)><space|0.27em><math-bf|do><space|0.27em><math-up|Utot>:<math-up|Utot>+U<rsub|i>,<math-up|print><around*|(|<text|Energia
      gravitazionale totale= >,<math-up|ratsimp><around*|(|<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|Utot>|)>|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      dinamica(DH,dist):=block([T],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ T:ek(DH,dist),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru
      length(T)-1 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      cinetica link", i),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      cinetica rotazione Ta=",T[i][1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      cinetica traslazione Tb=",T[i][2]),print("Energia cinetica totale
      T=",T[i][3])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),print("Matrice
      inerzie generalizzate B=",T[length(T)]),ep(DH,dist));
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><math-up|dinamica><around*|(|<math-up|DH>,<math-up|dist>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|T|]>,T:<math-up|ek><around*|(|<math-up|DH>,<math-up|dist>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|T|)>-1<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|print><around*|(|<text|Energia
      cinetica link >,i|)>,<math-up|print><around*|(|<text|Energia cinetica
      rotazione Ta= >,<around*|(|T<rsub|i>|)><rsub|1>|)>,<math-up|print><around*|(|<text|Energia
      cinetica traslazione Tb= >,<around*|(|T<rsub|i>|)><rsub|2>|)>,<math-up|print><around*|(|<text|Energia
      cinetica totale T= >,<around*|(|T<rsub|i>|)><rsub|3>|)>|)>,<math-up|print><around*|(|<text|Matrice
      inerzie generalizzate B= >,T<rsub|<math-up|length><around*|(|T|)>>|)>,<math-up|ep><around*|(|<math-up|DH>,<math-up|dist>|)>|)>>>
    </unfolded-io>

    <\textput>
      2DOF PLANARE

      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      DH:[[q[1],0,0,L[1]],[q[2],0,0,L[2]]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<around*|[|q<rsub|1>,0,0,L<rsub|1>|]>,<around*|[|q<rsub|2>,0,0,L<rsub|2>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      distance:[matrix([-L[1]/2],[0],[0]),matrix([-L[2]/2],[0],[0])];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      dinamica(DH,distance)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Energia cinetica link >1>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|L<rsub|1><rsup|2>*M<rsub|1>*\<omega\><rsub|1><rsup|2>|8>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>+<frac|L<rsub|1><rsup|2>*M<rsub|1>*\<omega\><rsub|1><rsup|2>|8>>>

      <math|<with|math-display|true|<text|Energia cinetica link >2>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|2>*<around*|(|<around*|(|4*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+4*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+4*L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|4*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*M<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|q<rsub|2>|)>+4*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>+4*L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>*M<rsub|2>|8>+<frac|\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>>>

      <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|4>+L<rsub|1><rsup|2>*M<rsub|2>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>+<frac|L<rsub|1><rsup|2>*M<rsub|1>|4>>|<cell|<frac|2*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+L<rsub|2><rsup|2>*M<rsub|2>|8>>>|<row|<cell|<frac|2*L<rsub|1>*L<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+L<rsub|2><rsup|2>*M<rsub|2>|8>>|<cell|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|4>>>>>>|]>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      <math|<with|math-display|true|<text|U[ >1*<text|]= >0>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      \;

      \ <math|<with|math-display|true|<text|U[ >2*<text|]= >0>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale= >0>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >>0>>
    </unfolded-io>

    <\textput>
      Robot Cartesiano
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      DH:[[0,q[1],-%pi/2,0],[-%pi/2,q[2],-%pi/2,0],[0,q[3],0,0]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|<around*|[|0,q<rsub|1>,-<frac|\<pi\>|2>,0|]>,<around*|[|-<frac|\<pi\>|2>,q<rsub|2>,-<frac|\<pi\>|2>,0|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      distance:[matrix([0],[-L[1]/2],[0]),matrix([0],[-L[2]/2],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta= >0>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|1>*\<omega\><rsub|1><rsup|2>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|M<rsub|1>*\<omega\><rsub|1><rsup|2>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica link >2>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      >0>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|2>*<around*|(|\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>|)>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|M<rsub|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*M<rsub|2>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >3>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta= >0>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|3>*<around*|(|\<omega\><rsub|3><rsup|2>+\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>|)>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|M<rsub|3>*\<omega\><rsub|3><rsup|2>+\<omega\><rsub|2><rsup|2>*M<rsub|3>+\<omega\><rsub|1><rsup|2>*M<rsub|3>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|M<rsub|3>+M<rsub|2>+M<rsub|1>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|M<rsub|3>+M<rsub|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<text|U[ >1*<text|]=
      >5*M<rsub|1>*<around*|(|2*q<rsub|1>+L<rsub|1>|)>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      <math|<with|math-display|true|<text|U[ >2*<text|]=
      >10*q<rsub|1>*M<rsub|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      <math|<with|math-display|true|<text|U[ >3*<text|]=
      >10*q<rsub|1>*M<rsub|3>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale totale=
      >10*q<rsub|1>*M<rsub|3>+10*q<rsub|1>*M<rsub|2>+10*M<rsub|1>*q<rsub|1>+5*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >>10*q<rsub|1>*M<rsub|3>+10*q<rsub|1>*M<rsub|2>+10*M<rsub|1>*q<rsub|1>+5*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    <\textput>
      Robot Cilindrico
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      DH:[[q[1],L[1],0,0],[0,q[2],-%pi/2,0],[0,q[3],0,0]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,0,0|]>,<around*|[|0,q<rsub|2>,-<frac|\<pi\>|2>,0|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      distance:[matrix([0],[0],[-L[1]/2]),matrix([0],[-L[2]/2],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >0>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >2>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|2>*\<omega\><rsub|2><rsup|2>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>|2>+<frac|M<rsub|2>*\<omega\><rsub|2><rsup|2>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica link >3>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|3>*<around*|(|4*\<omega\><rsub|1><rsup|2>*q<rsub|3><rsup|2>-4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*q<rsub|3>+4*\<omega\><rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+4*\<omega\><rsub|2><rsup|2>|)>|8>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>|2>+<frac|4*\<omega\><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>-4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>+4*M<rsub|3>*\<omega\><rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+4*\<omega\><rsub|2><rsup|2>*M<rsub|3>|8>>>

      <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+M<rsub|3>*q<rsub|3><rsup|2>-L<rsub|3>*M<rsub|3>*q<rsub|3>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|4>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|M<rsub|3>+M<rsub|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<text|U[ >1*<text|]=
      >5*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      \;

      \ <math|<with|math-display|true|<text|U[ >2*<text|]=
      >5*M<rsub|2>*<around*|(|2*q<rsub|2>+L<rsub|2>+2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      <math|<with|math-display|true|<text|U[ >3*<text|]=
      >10*<around*|(|q<rsub|2>+L<rsub|1>|)>*M<rsub|3>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      ><around*|(|10*q<rsub|2>+10*L<rsub|1>|)>*M<rsub|3>+10*M<rsub|2>*q<rsub|2>+<around*|(|5*L<rsub|2>+10*L<rsub|1>|)>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><around*|(|10*q<rsub|2>+10*L<rsub|1>|)>*M<rsub|3>+10*M<rsub|2>*q<rsub|2>+<around*|(|5*L<rsub|2>+10*L<rsub|1>|)>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    <\textput>
      Robot SCARA
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      DH:[[q[1],L[1],0,D[1]],[q[2],0,0,0],[0,q[3],0,0]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,0,D<rsub|1>|]>,<around*|[|q<rsub|2>,0,0,0|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      distance:[matrix([-D[1]/2],[0],[0]),matrix([-D[2]/2],[0],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|-<frac|D<rsub|1>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|D<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|D<rsub|1><rsup|2>*M<rsub|1>*\<omega\><rsub|1><rsup|2>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>|2>+<frac|D<rsub|1><rsup|2>*M<rsub|1>*\<omega\><rsub|1><rsup|2>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >2>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >-<frac|M<rsub|2>*<around*|(|<around*|(|4*D<rsub|1>*\<omega\><rsub|1>*D<rsub|2>*\<omega\><rsub|2>+4*D<rsub|1>*\<omega\><rsub|1><rsup|2>*D<rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>-D<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>-2*\<omega\><rsub|1>*D<rsub|2><rsup|2>*\<omega\><rsub|2>-\<omega\><rsub|1><rsup|2>*D<rsub|2><rsup|2>-4*D<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>|8>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>-<frac|4*D<rsub|1>*\<omega\><rsub|1>*D<rsub|2>*M<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|q<rsub|2>|)>+4*D<rsub|1>*\<omega\><rsub|1><rsup|2>*D<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-D<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>-2*\<omega\><rsub|1>*D<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2>-\<omega\><rsub|1><rsup|2>*D<rsub|2><rsup|2>*M<rsub|2>-4*D<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>*M<rsub|2>|8>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >3>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|2>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|3>*<around*|(|\<omega\><rsub|3><rsup|2>+D<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|2>+<frac|M<rsub|3>*\<omega\><rsub|3><rsup|2>+D<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>*M<rsub|3>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|-D<rsub|1>*D<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+D<rsub|1><rsup|2>*M<rsub|3>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<frac|D<rsub|2><rsup|2>*M<rsub|2>|4>+D<rsub|1><rsup|2>*M<rsub|2>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|1>+<frac|D<rsub|1><rsup|2>*M<rsub|1>|4>>|<cell|-<frac|2*D<rsub|1>*D<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-D<rsub|2><rsup|2>*M<rsub|2>|8>>|<cell|0>>|<row|<cell|-<frac|2*D<rsub|1>*D<rsub|2>*M<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-4*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-D<rsub|2><rsup|2>*M<rsub|2>|8>>|<cell|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<frac|D<rsub|2><rsup|2>*M<rsub|2>|4>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<text|U[ >1*<text|]=
      >10*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      \;

      \ <math|<with|math-display|true|<text|U[ >2*<text|]=
      >10*L<rsub|1>*M<rsub|2>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      \;

      \ <math|<with|math-display|true|<text|U[ >3*<text|]=
      >5*M<rsub|3>*<around*|(|2*q<rsub|3>-L<rsub|3>+2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      >10*M<rsub|3>*q<rsub|3>+<around*|(|10*L<rsub|1>-5*L<rsub|3>|)>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+10*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >>10*M<rsub|3>*q<rsub|3>+<around*|(|10*L<rsub|1>-5*L<rsub|3>|)>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+10*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    <\textput>
      Robot Sferico Tipo 1
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      DH:[[q[1],L[1],%pi/2,0],[q[2],0,%pi/2,L[2]],[0,q[3],0,0]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,<frac|\<pi\>|2>,0|]>,<around*|[|q<rsub|2>,0,<frac|\<pi\>|2>,L<rsub|2>|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      distance:[matrix([0],[-L[1]/2],[0]),matrix([-L[2]/2],[0],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      sfericoI:dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >0>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >2>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      >-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|2>*<around*|(|<around*|(|3*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+5*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>|16>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|3*L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+5*L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>|16>-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica link >3>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      >-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|)>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|3>*<around*|(|<around*|(|<around*|(|8*\<omega\><rsub|2>*\<omega\><rsub|3>-8*L<rsub|2>*\<omega\><rsub|2><rsup|2>+8*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*q<rsub|3>-4*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|4*L<rsub|2>*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*L<rsub|3>|)>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|<around*|(|4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*q<rsub|3><rsup|2>+<around*|(|4*\<omega\><rsub|1><rsup|2>-4*\<omega\><rsub|2><rsup|2>|)>*L<rsub|3>*q<rsub|3>-4*\<omega\><rsub|3><rsup|2>+8*L<rsub|2>*\<omega\><rsub|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>-\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>-4*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+<around*|(|16*L<rsub|2>*\<omega\><rsub|2><rsup|2>-16*\<omega\><rsub|2>*\<omega\><rsub|3>|)>*q<rsub|3>*cos
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|2>|)>+<around*|(|-8*\<omega\><rsub|2><rsup|2>*q<rsub|3><rsup|2>+8*\<omega\><rsub|3><rsup|2>-16*L<rsub|2>*\<omega\><rsub|2>*\<omega\><rsub|3>+8*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>|)><rsup|2>+<around*|(|12*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>|)>*q<rsub|3><rsup|2>+<around*|(|-4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>*q<rsub|3>+4*\<omega\><rsub|3><rsup|2>-8*L<rsub|2>*\<omega\><rsub|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+4*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>|16>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|8*\<omega\><rsub|1><rsup|2>*L<rsub|2>*M<rsub|3>*q<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|2>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+4*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|2><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+8*\<omega\><rsub|2><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>+4*\<omega\><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>-4*\<omega\><rsub|2><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>-4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>+8*M<rsub|3>*\<omega\><rsub|3><rsup|2>-16*L<rsub|2>*\<omega\><rsub|2>*M<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+8*L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>*M<rsub|3>+4*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|3>|16>-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>>>

      \;

      \ <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|-<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+L<rsub|2>*M<rsub|3>*q<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-<frac|L<rsub|2>*L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>|2>-<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|M<rsub|3>*q<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<frac|L<rsub|2><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|2>+<frac|M<rsub|3>*q<rsub|3><rsup|2>|2>-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>+<frac|L<rsub|2><rsup|2>*M<rsub|3>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|8>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>>|<cell|<frac|<around*|(|<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>+<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>-<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>|2>>|<cell|0>>|<row|<cell|<frac|<around*|(|<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>+<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>-<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>|2>>|<cell|<frac|L<rsub|2>*L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>|2>-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<frac|3*L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+M<rsub|3>*q<rsub|3><rsup|2>-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>+L<rsub|2><rsup|2>*M<rsub|3>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+<frac|5*L<rsub|2><rsup|2>*M<rsub|2>|8>>|<cell|-<frac|L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+4*L<rsub|2>*M<rsub|3>|8>>>|<row|<cell|0>|<cell|-<frac|L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+4*L<rsub|2>*M<rsub|3>|8>>|<cell|M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<text|U[ >1*<text|]=
      >5*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      \;

      \ <math|<with|math-display|true|<text|U[ >2*<text|]=
      >5*M<rsub|2>*<around*|(|L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>+2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      \;

      \ <math|<with|math-display|true|<text|U[ >3*<text|]=
      >5*M<rsub|3>*<around*|(|2*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|L<rsub|3>-2*q<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      ><around*|(|10*L<rsub|2>*M<rsub|3>+5*L<rsub|2>*M<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|5*L<rsub|3>*M<rsub|3>-10*M<rsub|3>*q<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><around*|(|10*L<rsub|2>*M<rsub|3>+5*L<rsub|2>*M<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|5*L<rsub|3>*M<rsub|3>-10*M<rsub|3>*q<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    \;

    <\textput>
      Robot Sferico II
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      DH:[[q[1],L[1],-%pi/2,0],[q[2],L[2],%pi/2,0],[0,q[3],0,0]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,-<frac|\<pi\>|2>,0|]>,<around*|[|q<rsub|2>,L<rsub|2>,<frac|\<pi\>|2>,0|]>,<around*|[|0,q<rsub|3>,0,0|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      distance:[matrix([0],[-L[1]/2],[0]),matrix([0],[-L[2]/2],[0]),matrix([0],[0],[-L[3]/2])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|3>|2>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >0>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >2>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      >-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>|8>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>|8>-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica link >3>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      >-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|)>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|3>*<around*|(|<around*|(|8*\<omega\><rsub|2>*\<omega\><rsub|3>*q<rsub|3>-4*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>|)>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|<around*|(|4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*q<rsub|3><rsup|2>+<around*|(|4*\<omega\><rsub|1><rsup|2>-4*\<omega\><rsub|2><rsup|2>|)>*L<rsub|3>*q<rsub|3>-4*\<omega\><rsub|3><rsup|2>+<around*|(|\<omega\><rsub|2><rsup|2>-\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+<around*|(|-16*\<omega\><rsub|2>*\<omega\><rsub|3>*q<rsub|3>*cos
      <around*|(|q<rsub|2>|)>-16*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|3>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|8*\<omega\><rsub|3><rsup|2>-8*\<omega\><rsub|2><rsup|2>*q<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>|)><rsup|2>+<around*|(|8*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>-16*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*q<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+<around*|(|12*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>|)>*q<rsub|3><rsup|2>+<around*|(|-4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>*q<rsub|3>+4*\<omega\><rsub|3><rsup|2>+<around*|(|\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+8*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>|16>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|-4*\<omega\><rsub|2>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|2><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-16*\<omega\><rsub|1>*L<rsub|2>*M<rsub|3>*\<omega\><rsub|3>*sin
      <around*|(|q<rsub|2>|)>-16*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|q<rsub|2>|)>+8*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|2>|)>+8*\<omega\><rsub|2><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>+4*\<omega\><rsub|1><rsup|2>*M<rsub|3>*q<rsub|3><rsup|2>-4*\<omega\><rsub|2><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>-4*\<omega\><rsub|1><rsup|2>*L<rsub|3>*M<rsub|3>*q<rsub|3>+8*M<rsub|3>*\<omega\><rsub|3><rsup|2>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+8*\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|3>|16>-<frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|q<rsub|2>|)>-4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>-2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>>>

      <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|-<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>-<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|M<rsub|3>*q<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|2>+<frac|M<rsub|3>*q<rsub|3><rsup|2>|2>-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>+L<rsub|2><rsup|2>*M<rsub|3>+<frac|<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|4>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>>|<cell|-<frac|<around*|(|2*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>+2*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-2*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>+2*L<rsub|2>*M<rsub|3>*q<rsub|3>-L<rsub|2>*L<rsub|3>*M<rsub|3>-2*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>|4>>|<cell|-<frac|L<rsub|2>*M<rsub|3>*sin
      <around*|(|q<rsub|2>|)>|2>>>|<row|<cell|-<frac|<around*|(|2*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>+2*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|-2*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>+2*L<rsub|2>*M<rsub|3>*q<rsub|3>-L<rsub|2>*L<rsub|3>*M<rsub|3>-2*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>|)>*cos
      <around*|(|q<rsub|2>|)>|4>>|<cell|-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+M<rsub|3>*q<rsub|3><rsup|2>-<frac|L<rsub|3>*M<rsub|3>*q<rsub|3>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>>|<cell|-<frac|L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>|8>>>|<row|<cell|-<frac|L<rsub|2>*M<rsub|3>*sin
      <around*|(|q<rsub|2>|)>|2>>|<cell|-<frac|L<rsub|3>*M<rsub|3>*sin
      <around*|(|2*q<rsub|2>|)>|8>>|<cell|M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<text|U[ >1*<text|]=
      >15*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      \;

      \ <math|<with|math-display|true|<text|U[ >2*<text|]=
      >10*L<rsub|1>*M<rsub|2>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      \;

      \ <math|<with|math-display|true|<text|U[ >3*<text|]=
      >5*M<rsub|3>*<around*|(|<around*|(|2*q<rsub|3>-L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      ><around*|(|10*M<rsub|3>*q<rsub|3>-5*L<rsub|3>*M<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+15*L<rsub|1>*M<rsub|1>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><around*|(|10*M<rsub|3>*q<rsub|3>-5*L<rsub|3>*M<rsub|3>|)>*cos
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+15*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    <\textput>
      \;

      \;
    </textput>

    <\textput>
      Robot Antropomorfo
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      DH:[[q[1],L[1],%pi/2,0],[q[2],0,0,D[3]],[q[3],0,0,D[3]]];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><around*|[|<around*|[|q<rsub|1>,L<rsub|1>,<frac|\<pi\>|2>,0|]>,<around*|[|q<rsub|2>,0,0,D<rsub|3>|]>,<around*|[|q<rsub|3>,0,0,D<rsub|3>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      distance:[matrix([0],[-L[1]/2],[0]),matrix([-L[2]/2],[0],[0]),matrix([-L[3]/2],[0],[0])];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|3>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      dinamica(DH,distance);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >1>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >0>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>|2>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica link >2>>

      <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>+2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      ><frac|M<rsub|2>*<around*|(|<around*|(|4*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>+<around*|(|4*L<rsub|2>*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*D<rsub|3>-L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*cos
      <around*|(|2*q<rsub|2>|)>+<around*|(|8*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>+<around*|(|-4*L<rsub|2>*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*D<rsub|3>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>|16>>>

      <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>+2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|4>+<frac|4*\<omega\><rsub|1><rsup|2>*M<rsub|2>*D<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>+4*L<rsub|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>*D<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>*M<rsub|2>*D<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>+8*M<rsub|2>*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>+4*\<omega\><rsub|1><rsup|2>*M<rsub|2>*D<rsub|3><rsup|2>-4*L<rsub|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>*D<rsub|3>-4*\<omega\><rsub|1><rsup|2>*L<rsub|2>*M<rsub|2>*D<rsub|3>+L<rsub|2><rsup|2>*M<rsub|2>*\<omega\><rsub|2><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>*M<rsub|2>|16>>>

      <math|<with|math-display|true|<text|Energia cinetica link >3>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica rotazione Ta=
      ><frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+<around*|(|\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|)>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+<around*|(|4*\<omega\><rsub|1>*\<omega\><rsub|3>+4*\<omega\><rsub|1>*\<omega\><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|4*\<omega\><rsub|1>*\<omega\><rsub|3>+4*\<omega\><rsub|1>*\<omega\><rsub|2>|)>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|2*\<omega\><rsub|3><rsup|2>+4*\<omega\><rsub|2>*\<omega\><rsub|3>+2*\<omega\><rsub|2><rsup|2>|)>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>>>

      <math|<with|math-display|true|<text|Energia cinetica traslazione Tb=
      >-<frac|M<rsub|3>*<around*|(|<around*|(|<around*|(|L<rsub|3><rsup|2>-4*D<rsub|3>*L<rsub|3>+4*D<rsub|3><rsup|2>|)>*\<omega\><rsub|3><rsup|2>+<around*|(|2*\<omega\><rsub|2>*L<rsub|3><rsup|2>-8*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>+8*\<omega\><rsub|2>*D<rsub|3><rsup|2>|)>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>-\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+<around*|(|4*\<omega\><rsub|1><rsup|2>-4*\<omega\><rsub|2><rsup|2>|)>*D<rsub|3>*L<rsub|3>+<around*|(|4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>|)>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+<around*|(|<around*|(|8*\<omega\><rsub|2>*D<rsub|3><rsup|2>-4*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>|)>*\<omega\><rsub|3>+<around*|(|4*\<omega\><rsub|1><rsup|2>-4*\<omega\><rsub|2><rsup|2>|)>*D<rsub|3>*L<rsub|3>+<around*|(|8*\<omega\><rsub|2><rsup|2>-8*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>+<around*|(|-8*D<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>-16*\<omega\><rsub|2>*D<rsub|3><rsup|2>*\<omega\><rsub|3>-8*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)><rsup|2>+<around*|(|-16*\<omega\><rsub|2>*D<rsub|3><rsup|2>*\<omega\><rsub|3>-16*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|<around*|(|4*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>-8*\<omega\><rsub|2>*D<rsub|3><rsup|2>|)>*\<omega\><rsub|3>+<around*|(|4*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3>*L<rsub|3>+<around*|(|-8*\<omega\><rsub|2><rsup|2>-8*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|3>|)>+<around*|(|4*\<omega\><rsub|2><rsup|2>-4*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>+8*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|2>|)><rsup|2>+<around*|(|-L<rsub|3><rsup|2>+4*D<rsub|3>*L<rsub|3>-4*D<rsub|3><rsup|2>|)>*\<omega\><rsub|3><rsup|2>+<around*|(|-2*\<omega\><rsub|2>*L<rsub|3><rsup|2>+8*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>-8*\<omega\><rsub|2>*D<rsub|3><rsup|2>|)>*\<omega\><rsub|3>+<around*|(|-\<omega\><rsub|2><rsup|2>-\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+<around*|(|4*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3>*L<rsub|3>+<around*|(|-16*\<omega\><rsub|2><rsup|2>-8*\<omega\><rsub|1><rsup|2>|)>*D<rsub|3><rsup|2>|)>|16>>>

      \;

      \ <math|<with|math-display|true|<text|Energia cinetica totale T=
      ><frac|2*\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|3>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|3>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+4*\<omega\><rsub|1>*\<omega\><rsub|2>*<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+2*\<omega\><rsub|3><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+4*\<omega\><rsub|2>*\<omega\><rsub|3>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+2*\<omega\><rsub|2><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>+\<omega\><rsub|1><rsup|2>*<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|4>-<frac|L<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-4*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-8*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-4*\<omega\><rsub|2><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+4*\<omega\><rsub|1><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-4*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-4*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>-4*\<omega\><rsub|2><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>+4*\<omega\><rsub|1><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>-8*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>+4*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|q<rsub|3>|)>-16*\<omega\><rsub|2>*D<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|q<rsub|3>|)>+4*\<omega\><rsub|2><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+4*\<omega\><rsub|1><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-16*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-8*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-4*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>-L<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3><rsup|2>+4*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3><rsup|2>-8*D<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3><rsup|2>-2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3>+8*\<omega\><rsub|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>*\<omega\><rsub|3>-16*\<omega\><rsub|2>*D<rsub|3><rsup|2>*M<rsub|3>*\<omega\><rsub|3>-\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>-\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>*M<rsub|3>+4*\<omega\><rsub|2><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>+4*\<omega\><rsub|1><rsup|2>*D<rsub|3>*L<rsub|3>*M<rsub|3>-16*\<omega\><rsub|2><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>-8*\<omega\><rsub|1><rsup|2>*D<rsub|3><rsup|2>*M<rsub|3>|16>>>

      <math|<with|math-display|true|<text|Matrice inerzie generalizzate B=
      ><around*|[|<matrix|<tformat|<table|<row|<cell|<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|3>*sin
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>+<frac|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|8>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>+<frac|D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>|2>+D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>|2>+D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+<around*|(|\<alpha\><rsub|<math-up|xy>>|)><rsub|2>*sin
      <around*|(|2*q<rsub|2>|)>+<frac|D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|M<rsub|2>*D<rsub|3><rsup|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|L<rsub|2>*M<rsub|2>*D<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<frac|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|3>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|3>|2>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>|2>+D<rsub|3><rsup|2>*M<rsub|3>+<frac|M<rsub|2>*D<rsub|3><rsup|2>|2>-<frac|L<rsub|2>*M<rsub|2>*D<rsub|3>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|2>|2>+<frac|<around*|(|\<alpha\><rsub|<math-up|xx>>|)><rsub|2>|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|8>+<around*|(|\<alpha\><rsub|<math-up|yy>>|)><rsub|1>>|<cell|<frac|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>|2>>|<cell|<frac|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>|2>>>|<row|<cell|<frac|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|2>*sin
      <around*|(|q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|2>*cos
      <around*|(|q<rsub|2>|)>|2>>|<cell|-<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|8>+<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>+<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>|2>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>|2>+2*D<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+<frac|L<rsub|2>*M<rsub|2>*D<rsub|3>*cos
      <around*|(|2*q<rsub|2>|)>|2>-<frac|L<rsub|2><rsup|2>*M<rsub|2>*cos
      <around*|(|2*q<rsub|2>|)>|8>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>|2>+2*D<rsub|3><rsup|2>*M<rsub|3>+M<rsub|2>*D<rsub|3><rsup|2>-<frac|L<rsub|2>*M<rsub|2>*D<rsub|3>|2>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|2>+<frac|L<rsub|2><rsup|2>*M<rsub|2>|8>>|<cell|-<frac|<around*|(|L<rsub|3><rsup|2>-4*D<rsub|3>*L<rsub|3>|)>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-2*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>+<around*|(|2*D<rsub|3>*L<rsub|3>-8*D<rsub|3><rsup|2>|)>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-8*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+<around*|(|-L<rsub|3><rsup|2>+4*D<rsub|3>*L<rsub|3>-8*D<rsub|3><rsup|2>|)>*M<rsub|3>|16>>>|<row|<cell|<frac|<around*|(|\<alpha\><rsub|<math-up|xz>>|)><rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|\<alpha\><rsub|<math-up|yz>>|)><rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>|2>>|<cell|-<frac|<around*|(|L<rsub|3><rsup|2>-4*D<rsub|3>*L<rsub|3>|)>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>-2*D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|q<rsub|3>+2*q<rsub|2>|)>+<around*|(|2*D<rsub|3>*L<rsub|3>-8*D<rsub|3><rsup|2>|)>*M<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-8*<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+<around*|(|-L<rsub|3><rsup|2>+4*D<rsub|3>*L<rsub|3>-8*D<rsub|3><rsup|2>|)>*M<rsub|3>|16>>|<cell|-<frac|L<rsub|3><rsup|2>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|8>+<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>*cos
      <around*|(|2*q<rsub|3>+2*q<rsub|2>|)>|2>+<around*|(|\<alpha\><rsub|<math-up|zz>>|)><rsub|3>+<frac|L<rsub|3><rsup|2>*M<rsub|3>|8>-<frac|D<rsub|3>*L<rsub|3>*M<rsub|3>|2>+D<rsub|3><rsup|2>*M<rsub|3>>>>>>|]>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      <math|<with|math-display|true|<text|U[ >1*<text|]=
      >5*L<rsub|1>*M<rsub|1>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      <math|<with|math-display|true|<text|U[ >2*<text|]=
      >5*M<rsub|2>*<around*|(|<around*|(|2*D<rsub|3>-L<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+2*L<rsub|1>|)>>>

      \;

      \ <math|<with|math-display|true|<text|Energia gravitazionale link >3>>

      <math|<with|math-display|true|<text|U[ >3<text|]=
      >-5*M<rsub|3>*<around*|(|<around*|(|L<rsub|3>-2*D<rsub|3>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>-2*D<rsub|3>*sin
      <around*|(|q<rsub|2>|)>-2*L<rsub|1>|)>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      ><around*|(|10*D<rsub|3>-5*L<rsub|3>|)>*M<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|10*D<rsub|3>*M<rsub|3>+10*M<rsub|2>*D<rsub|3>-5*L<rsub|2>*M<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><around*|(|10*D<rsub|3>-5*L<rsub|3>|)>*M<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|10*D<rsub|3>*M<rsub|3>+10*M<rsub|2>*D<rsub|3>-5*L<rsub|2>*M<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>+10*L<rsub|1>*M<rsub|3>+10*L<rsub|1>*M<rsub|2>+5*L<rsub|1>*M<rsub|1>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|input>
      \;
    </input>
  </session>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|prog-scripts|maxima>
  </collection>
</initial>