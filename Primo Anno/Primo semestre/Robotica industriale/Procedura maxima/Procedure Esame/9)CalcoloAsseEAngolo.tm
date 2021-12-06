<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <strong|<space|5em>Calcolare asse ed angolo tramite la formula di
  Rodriguez>

  Il problema è quello di determinare l'asse e l'angolo di rotazione data una
  matrice di rotazione R attraverso la formula di Rodriguez.

  <em|<strong|N.B.:La notazione c,s equivale rispettivamente a
  cos(\<theta\>), sin(\<theta\>).<em|>>>

  Questo problema è detto problema orientamento inverso che consiste nel
  determinare, data una matrice di rotazione, asse e angolo:

  <\equation*>
    v,\<theta\>\<longleftarrow\>R
  </equation*>

  Inizialmente occorre verificare se la matrice data è una matrice di
  rotazione. Le condizioni che devono essere soddisfatte affinché R sia di
  rotazione sono:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|R*R<rsup|T>=I
    >|<cell|>>|<row|<cell|>|<cell|det<around*|(|R|)>=1>|<cell|>>>>
  </eqnarray*>

  O in maniera equivalente:

  <\eqnarray*>
    <tformat|<table|<row|<cell|R<rsup|T>R=I>|<cell|>|<cell|>>|<row|<cell|det<around*|(|R|)>=1>|<cell|>|<cell|>>>>
  </eqnarray*>

  (1)Se la matrice R è di rotazione, l'asse di rotazione viene determinato
  dall'autovettore relativo all'autovalore 1. In particolare, occorre
  imporre:

  <\equation*>
    <around*|(|\<lambda\>I-R|)>*v=R*<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>
    con \<lambda\>=1
  </equation*>

  e trovare i coefficienti <math|a,b,c> di <math|v> affinché il prodotto
  <math|<around*|(|I-R|)>*v=\<b-0\>> e <math|v\<neq\><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>.\ 

  Il vettore <math|v> normalizzato risultante è l'asse di rotazione.

  (2)In aggiunta, per calcolare l'angolo di rotazione, occorre risolvere il
  seguente sistema:

  <space|14em><math|\<space\><around*|{|<tabular|<tformat|<table|<row|<cell|R=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s>>|<row|<cell|R<rsup|T>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>-S<around*|(|v|)>*s>>>>>|\<nobracket\>>>

  <\equation*>
    <around*|(|a|)><frac|R-R<rsup|T>|2>=S<around*|(|v|)>*s
  </equation*>

  <\equation*>
    <around*|(|b|)><frac|R+R<rsup|T>|2>-I=S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>
  </equation*>

  L'angolo \<theta\> viene determinata dalla seguente formula:

  <\equation*>
    <around*|(|c|)>\<theta\>=atan2<around*|(|s,c|)>
  </equation*>

  In cui <math|s> viene calcolato prendendo un qualsiasi elemento
  <math|a<rsub|i,j>\<neq\>0 >con <math|a<rsub|i,j>\<in\>S<around*|(|v|)>> con
  il corrispettivo elemento <math|b<rsub|i,j> >nella matrice
  <math|<around*|(|a|)><frac|R-R<rsup|T>|2>> e risolvendo l'equazione:

  <\equation*>
    b<rsub|i,j>=a<rsub|i,j>*sin<around*|(|\<theta\>|)>
  </equation*>

  Invece c, viene calcolato prendendo un qualsiasi elemento
  <math|c<rsub|i,j>\<neq\>0> con <math|c<rsub|i,j>\<in\>S<rsup|2><around*|(|v|)>>
  con il corrispettivo elemento <math|d<rsub|i,j>> nella matrice
  <math|<around*|(|b|)><frac|R+R<rsup|T>|2>-I >e risolvendo l'equazione:

  <\equation*>
    c<rsub|i,j><around*|(|1-cos<around*|(|\<theta\>|)>|)>=d<rsub|i,j>
  </equation*>

  <\session|maxima|default>
    <\session|maxima|default>
      <\textput>
        La funzione isRotation(M) prende in input una matrice M e verifica se
        la matrice data è di rotazione. In particolare, verifica se
        <math|M*M<rsup|T>=I>(i) e <math|det<around*|(|M|)>=1>(ii).

        Inoltre, se la matrice è simbolica cioè dipendente dalla variabile
        theta, restituisce le condizioni per cui la matrice M è di rotazione;
        altrimenti, la matrice non è di rotazione.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
      <|unfolded-io>
        isRotation(M):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MMT:trigsimp(expand(M.transpose(M))),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detM:trigsimp(expand(determinant(M))),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if MMT=I \ and detM=1\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res:1)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res: "R is not
        rotation matrix"

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><math-up|isRotation><around*|(|M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,I:<math-up|ident><around*|(|3|)>,<math-up|MMT>:<math-up|trigsimp><around*|(|<math-up|expand><around*|(|M\<cdot\><math-up|transpose><around*|(|M|)>|)>|)>,<math-up|detM>:<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<math-up|determinant><around*|(|M|)>|)>|)>,<math-bf|if><space|0.27em><math-up|MMT>=I\<wedge\><math-up|detM>=1<space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<math-up|res>:1|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|R
        is not rotation matrix >|)>>>
      </unfolded-io>

      <\textput>
        La funzione axes(M) prende in input una matrice
        <math|M=adj<around*|(|I-R|)>> di rotazione e ne calcola il
        corrispondente asse di rotazione e,utilizzando la procedura del punto
        (1), selezione come asse di rotazione una colonna non nulla della
        matrice M.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>2) >
      <|unfolded-io>
        axes(M):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ columns:transpose(M),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:zeromatrix(3,1),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(columns) do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if(columns[i][1]# 0 or
        columns[i][2]#0 or columns[i][3]#0)\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (<nbsp>return(m:
        transpose(columns[i])))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),res:m

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
        >><math-up|axes><around*|(|M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|columns>:<math-up|transpose><around*|(|M|)>,<math-up|res>:<math-up|zeromatrix><around*|(|3,1|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|columns>|)><space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em><around*|(|<math-up|columns><rsub|i>|)><rsub|1>\<neq\>0\<vee\><around*|(|<math-up|columns><rsub|i>|)><rsub|2>\<neq\>0\<vee\><around*|(|<math-up|columns><rsub|i>|)><rsub|3>\<neq\>0<space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|m:<math-up|transpose><around*|(|<math-up|columns><rsub|i>|)>|)>,<math-up|res>:m|)>>>
      </unfolded-io>

      <\textput>
        La funzione skewMatrix(x) prende in input un asse <math|x> di
        rotazione normalizzato e ne calcola la corrispettiva matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)>>.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>3) >
      <|unfolded-io>
        skewMatrix(x):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
        S[i][j]:0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*x[3-remainder(i+j,3)][1],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:S

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
        >><math-up|skewMatrix><around*|(|x|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*<around*|(|x<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>|)><rsub|1>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:S|)>>>
      </unfolded-io>

      <\textput>
        La funzione sinRotation(skewMat, RRT2) prende in input una matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)> >e la matrice
        <math|<frac|R-R<rsup|T>|2>> ricavata dalla risoluzione del sistema
        della formula di Rodriguez e risolvere l'equazione (a).
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>4) >
      <|unfolded-io>
        sinRotation(skewMat,RRT2):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3
        do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a:skewMat[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if a# 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
        (b:RRT2[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ value:b/a

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),res:value

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
        >><math-up|sinRotation><around*|(|<math-up|skewMat>,<with|math-font-family|rm|RRT2>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|a:<around*|(|<math-up|skewMat><rsub|i>|)><rsub|j>,<math-bf|if><space|0.27em>a\<neq\>0<space|0.27em><math-bf|then><space|0.27em><around*|(|b:<around*|(|<with|math-font-family|rm|RRT2><rsub|i>|)><rsub|j>,<math-up|return><around*|(|<math-up|value>:<frac|b|a>|)>|)>|)>,<math-up|res>:<math-up|value>|)>>>
      </unfolded-io>

      <\textput>
        La funzione corRotation(x,y) prende in input una matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)> >e la
        matrice<space|1em> <math|<frac|R+R<rsup|T>|2>-I> ricavata dalla
        soluzione del sistema della formula di Rodriguez e risolve
        l'equazione (b).
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|unfolded-io>
        cosRotation(x,y):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3
        do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c:x[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if(c#0)
        then(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ d:y[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(t:(c-d)/c))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:t

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
        >><math-up|cosRotation><around*|(|x,y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|c:<around*|(|x<rsub|i>|)><rsub|j>,<math-bf|if><space|0.27em>c\<neq\>0<space|0.27em><math-bf|then><space|0.27em><around*|(|d:<around*|(|y<rsub|i>|)><rsub|j>,<math-up|return><around*|(|t:<frac|c-d|c>|)>|)>|)>,<math-up|res>:t|)>>>
      </unfolded-io>

      <\textput>
        La funzione degree(v,M) prende in input un asse di rotazione <math|v>
        e una matrice <math|M>. Invoca le funzioni sinRotation e cosRotation
        per salvare nelle variabili sinR e cosR i valori rispettivamente di
        <math|sin<around*|(|\<theta\>|)>> e
        <math|cos<around*|(|\<theta\>|)>>. Infine applica (c) per restituire
        il valore di \<theta\>.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>6) >
      <|unfolded-io>
        degree(v,M):=block([sinR,cosR,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(v),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRsin:trigsimp((M-transpose(M))*1/2),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRcos:trigsimp(((M+transpose(M))*1/2)-I),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sinR:sinRotation(S,RRsin),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ SS:S.S,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ cosR:cosRotation(SS,RRcos),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:atan2(expand(sinR),expand(cosR))

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
        >><math-up|degree><around*|(|v,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|sinR>,<math-up|cosR>,<math-up|res>|]>,S:<math-up|skewMatrix><around*|(|v|)>,I:<math-up|ident><around*|(|3|)>,<math-up|RRsin>:<math-up|trigsimp><around*|(|<frac|<around*|(|M-<math-up|transpose><around*|(|M|)>|)>*1|2>|)>,<math-up|RRcos>:<math-up|trigsimp><around*|(|<frac|<around*|(|M+<math-up|transpose><around*|(|M|)>|)>*1|2>-I|)>,<math-up|sinR>:<math-up|sinRotation><around*|(|S,<math-up|RRsin>|)>,<math-up|SS>:S\<cdot\>S,<math-up|cosR>:<math-up|cosRotation><around*|(|<math-up|SS>,<math-up|RRcos>|)>,<math-up|res>:<math-up|atan2><around*|(|<math-up|expand><around*|(|<math-up|sinR>|)>,<math-up|expand><around*|(|<math-up|cosR>|)>|)>|)>>>
      </unfolded-io>

      <\textput>
        La funzione axesDegree(R) prende in input una matrice R, simbolica e
        non, per restituire il corrispondente asse e angolo di rotazione,
        verificando se l'effettiva matrice in input sia di rotazione. In caso
        contrario, restituisce errore.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>7) >
      <|unfolded-io>
        \ axesDegree(R):=block([v,theta,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ isRot:isRotation(R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if isRot=1 then (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjR:adjoint(I-R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ v:axes(adjR),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vNorm:v/sqrt(v.v),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ theta:degree(vNorm,R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Axe, degree"),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[vNorm,theta]

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:"R is not rotation
        matrix"

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
        >><math-up|axesDegree><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|v,\<vartheta\>,<math-up|res>|]>,<math-up|isRot>:<math-up|isRotation><around*|(|R|)>,<math-bf|if><space|0.27em><math-up|isRot>=1<space|0.27em><math-bf|then><space|0.27em><around*|(|I:<math-up|ident><around*|(|3|)>,<math-up|adjR>:<math-up|adjoint><around*|(|I-R|)>,v:<math-up|axes><around*|(|<math-up|adjR>|)>,<math-up|vNorm>:<frac|v|<sqrt|v\<cdot\>v>>,\<vartheta\>:<math-up|degree><around*|(|<math-up|vNorm>,R|)>,<math-up|print><around*|(|<text|Axe,
        degree >|)>,<math-up|res>:<around*|[|<math-up|vNorm>,\<vartheta\>|]>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|R
        is not rotation matrix >|)>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione lungo l'asse x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>8) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,-1,0],[0,0,-1])

        \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>9) >
      <|unfolded-io>
        axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,\<pi\>|]>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno asse y:\ 
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|unfolded-io>
        R:matrix([0,0,1],[0,1,0],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>11) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<frac|\<pi\>|2>|]>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno l'asse z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>12) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>13) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<frac|\<pi\>|2>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>14) >
      <|unfolded-io>
        R[x](theta) := matrix([1,0,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta),
        cos(theta)]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
        >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>15) >
      <|unfolded-io>
        axesDegree(R[x](theta));
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|Axe, degree >>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<math-up|atan2><around*|(|sin
        <around*|(|\<vartheta\>|)>,cos <around*|(|\<vartheta\>|)>|)>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo y:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>16) >
      <|unfolded-io>
        R[y](theta) := matrix([cos(theta),0,sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
        cos(theta)]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
        >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>17) >
      <|unfolded-io>
        axesDegree(R[y](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<math-up|atan2><around*|(|sin
        <around*|(|\<vartheta\>|)>,cos <around*|(|\<vartheta\>|)>|)>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        R[z](theta) := matrix([cos(theta),-sin(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|unfolded-io>
        axesDegree(R[z](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-up|atan2><around*|(|sin
        <around*|(|\<vartheta\>|)>,cos <around*|(|\<vartheta\>|)>|)>|]>>>
      </unfolded-io>

      <\textput>
        \;

        \;

        Matrice non di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>20) >
      <|unfolded-io>
        R:matrix([1,1,0],[0,1,1],[1,1,1]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>21) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\textput>
        Matrice razionale di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>22) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,sqrt(3)/2,-1/2],[0,1/2,sqrt(3)/2]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<sqrt|3>|2>>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|<sqrt|3>|2>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>23) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<frac|\<pi\>|6>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>24) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>25) >
      <|unfolded-io>
        axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<frac|\<pi\>|2>|]>>>
      </unfolded-io>

      <\textput>
        Matrice di rotazione risultante dalla rotazione Ra sull'asse y e Rb
        sull'asse z;

        <\equation*>
          R<rsub|a>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>>>>;R<rsub|b>=<matrix|<tformat|<table|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>
        </equation*>

        <\equation*>
          R<rsub|a>*R<rsub|b>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>>>>*<matrix|<tformat|<table|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>1>>|<row|<cell|-1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>-1<space|1em>0>>>>>
        </equation*>
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>26) >
      <|unfolded-io>
        R[ab]:matrix([0,1,0],[0,0,-1],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>27) >
      <|unfolded-io>
        axesDegree(R[ab])
      <|unfolded-io>
        <math|<with|math-display|true|<text|Axe, degree >>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|-<frac|1|<sqrt|3>>>>>>>,<frac|2*\<pi\>|3>|]>>>
      </unfolded-io>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>28) >
      <|input>
        \;
      </input>
    </session>
  </session>

  \;

  \ 

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>