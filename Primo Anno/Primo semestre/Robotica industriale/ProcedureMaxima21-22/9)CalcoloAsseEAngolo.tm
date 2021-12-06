<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

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
        \;
      </textput>

      <\textput>
        La funzione axes(M) prende in input una matrice
        <math|M=adj<around*|(|I-R|)>> di rotazione e ne calcola il
        corrispondente asse di rotazione e,utilizzando la procedura del punto
        (1), selezione come asse di rotazione una colonna non nulla della
        matrice M.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
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
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><math-up|axes><around*|(|M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|columns>:<math-up|transpose><around*|(|M|)>,<math-up|res>:<math-up|zeromatrix><around*|(|3,1|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|columns>|)><space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em><around*|(|<math-up|columns><rsub|i>|)><rsub|1>\<neq\>0\<vee\><around*|(|<math-up|columns><rsub|i>|)><rsub|2>\<neq\>0\<vee\><around*|(|<math-up|columns><rsub|i>|)><rsub|3>\<neq\>0<space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|m:<math-up|transpose><around*|(|<math-up|columns><rsub|i>|)>|)>,<math-up|res>:m|)>>>
      </unfolded-io>

      <\textput>
        La funzione sinRotation(skewMat, RRT2) prende in input una matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)> >e la matrice
        <math|<frac|R-R<rsup|T>|2>> ricavata dalla risoluzione del sistema
        della formula di Rodriguez e risolvere l'equazione (a).
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>2) >
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

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
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
        <with|color|red|(<with|math-font-family|rm|%i>3) >
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

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
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
        <with|color|red|(<with|math-font-family|rm|%i>4) >
      <|unfolded-io>
        degree(v,M):=block([sinR,cosR,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(v),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRsin:trigsimp((M-transpose(M))*1/2),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRcos:trigsimp(((M+transpose(M))*1/2)-I),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sinR:sinRotation(S,RRsin),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ SS:S.S,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ cosR:cosRotation(SS,RRcos),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:atan2(expand(sinR),expand(cosR)))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
        >><math-up|degree><around*|(|v,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|sinR>,<math-up|cosR>,<math-up|res>|]>,S:<math-up|skewMatrix><around*|(|v|)>,I:<math-up|ident><around*|(|3|)>,<math-up|RRsin>:<math-up|trigsimp><around*|(|<frac|<around*|(|M-<math-up|transpose><around*|(|M|)>|)>*1|2>|)>,<math-up|RRcos>:<math-up|trigsimp><around*|(|<frac|<around*|(|M+<math-up|transpose><around*|(|M|)>|)>*1|2>-I|)>,<math-up|sinR>:<math-up|sinRotation><around*|(|S,<math-up|RRsin>|)>,<math-up|SS>:S\<cdot\>S,<math-up|cosR>:<math-up|cosRotation><around*|(|<math-up|SS>,<math-up|RRcos>|)>,<math-up|res>:<math-up|atan2><around*|(|<math-up|expand><around*|(|<math-up|sinR>|)>,<math-up|expand><around*|(|<math-up|cosR>|)>|)>|)>>>
      </unfolded-io>

      <\textput>
        La funzione axesDegree(R) prende in input una matrice R, simbolica e
        non, per restituire il corrispondente asse e angolo di rotazione,
        verificando se l'effettiva matrice in input sia di rotazione. In caso
        contrario, restituisce errore.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|unfolded-io>
        \ axesDegree(R):=block([v,theta,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(checkR3(R)),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if checkR3(R) then (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjR:adjoint(I-R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ v:axes(adjR),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(sqrt(v.v)),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vNorm:v/sqrt(v.v),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ theta:degree(vNorm,R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[["Axe:",factor(trigreduce(trigsimp(expand(vNorm))))],["Theta=",factor(trigreduce(trigsimp(expand(theta))))]]

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:"R is not rotation
        matrix"

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
        >><math-up|axesDegree><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|v,\<vartheta\>,<math-up|res>|]>,<math-up|print><around*|(|<with|math-font-family|rm|checkR3><around*|(|R|)>|)>,<math-bf|if><space|0.27em><with|math-font-family|rm|checkR3><around*|(|R|)><space|0.27em><math-bf|then><space|0.27em><around*|(|I:<math-up|ident><around*|(|3|)>,<math-up|adjR>:<math-up|adjoint><around*|(|I-R|)>,v:<math-up|axes><around*|(|<math-up|adjR>|)>,<math-up|print><around*|(|<sqrt|v\<cdot\>v>|)>,<math-up|vNorm>:<frac|v|<sqrt|v\<cdot\>v>>,\<vartheta\>:<math-up|degree><around*|(|<math-up|vNorm>,R|)>,<math-up|res>:<around*|[|<around*|[|<text|Axe:
        >,<math-up|factor><around*|(|<math-up|trigreduce><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<math-up|vNorm>|)>|)>|)>|)>|]>,<around*|[|<text|Theta=
        >,<math-up|factor><around*|(|<math-up|trigreduce><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|\<vartheta\>|)>|)>|)>|)>|]>|]>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|R
        is not rotation matrix >|)>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione lungo l'asse x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>6) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,-1,0],[0,0,-1])

        \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>7) >
      <|unfolded-io>
        axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|4>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,\<pi\>|]>|]>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno asse y:\ 
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>8) >
      <|unfolded-io>
        R:matrix([0,0,1],[0,1,0],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>9) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|2>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|\<pi\>|2>|]>|]>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno l'asse z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>11) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|2>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|\<pi\>|2>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>12) >
      <|unfolded-io>
        R[x](theta) := matrix([1,0,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta),
        cos(theta)]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
        >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>13) >
      <|unfolded-io>
        axesDegree(R[x](theta));
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|sin
        <around*|(|\<vartheta\>|)><rsup|2>+<around*|(|1-cos
        <around*|(|\<vartheta\>|)>|)><rsup|2>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo y:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>14) >
      <|unfolded-io>
        R[y](theta) := matrix([cos(theta),0,sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
        cos(theta)]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
        >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>15) >
      <|unfolded-io>
        axesDegree(R[y](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|sin
        <around*|(|\<vartheta\>|)><rsup|2>+<around*|(|1-cos
        <around*|(|\<vartheta\>|)>|)><rsup|2>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>16) >
      <|unfolded-io>
        R[z](theta) := matrix([cos(theta),-sin(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
        >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>17) >
      <|unfolded-io>
        axesDegree(R[z](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|sin
        <around*|(|\<vartheta\>|)><rsup|2>+<around*|(|1-cos
        <around*|(|\<vartheta\>|)>|)><rsup|2>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|]>,<around*|[|<text|Theta=
        >,<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|]>|]>>>
      </unfolded-io>

      <\textput>
        \;

        \;

        Matrice non di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        R:matrix([1,1,0],[0,1,1],[1,1,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|false>>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\textput>
        Matrice razionale di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>20) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,sqrt(3)/2,-1/2],[0,1/2,sqrt(3)/2]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<sqrt|3>|2>>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|<sqrt|3>|2>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>21) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|<around*|(|1-<frac|<sqrt|3>|2>|)><rsup|2>+<frac|1|4>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|\<pi\>|6>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>22) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>23) >
      <|unfolded-io>
        axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|2>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|\<pi\>|2>|]>|]>>>
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
        <with|color|red|(<with|math-font-family|rm|%i>24) >
      <|unfolded-io>
        R[ab]:matrix([0,1,0],[0,0,-1],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>25) >
      <|unfolded-io>
        axesDegree(R[ab])
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|<sqrt|3>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|-<frac|1|<sqrt|3>>>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|2*\<pi\>|3>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>26) >
      <|unfolded-io>
        R:trigreduce(Raxis(x,1/2).Raxis(z,%pi/2).Raxis(y,sqrt(2)))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|cos
        <around*|(|<sqrt|2>-<frac|1|2>|)>>|<cell|0>|<cell|sin
        <around*|(|<sqrt|2>-<frac|1|2>|)>>>|<row|<cell|-sin
        <around*|(|<sqrt|2>-<frac|1|2>|)>>|<cell|0>|<cell|cos
        <around*|(|<sqrt|2>-<frac|1|2>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>27) >
      <|unfolded-io>
        u:axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        <math|<with|math-display|true|<sqrt|<around*|(|<around*|(|1-cos
        <around*|(|<sqrt|2>-<frac|1|2>|)>|)>*cos
        <around*|(|<sqrt|2>-<frac|1|2>|)>-sin
        <around*|(|<sqrt|2>-<frac|1|2>|)><rsup|2>|)><rsup|2>+sin
        <around*|(|<sqrt|2>-<frac|1|2>|)><rsup|2>+<around*|(|1-cos
        <around*|(|<sqrt|2>-<frac|1|2>|)>|)><rsup|2>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>27) >
      <|unfolded-io>
        stringout("asseangolo.mac",functions)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-<frac|<sqrt|2>*<around*|(|cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>-1|)>|<sqrt|cos
        <around*|(|2<rsup|<frac|3|2>>-1|)>-8*cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>+7>>>>|<row|<cell|<frac|<sqrt|2>*<around*|(|cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>-1|)>|<sqrt|cos
        <around*|(|2<rsup|<frac|3|2>>-1|)>-8*cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>+7>>>>|<row|<cell|-<frac|<sqrt|2>*sin
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>|<sqrt|cos
        <around*|(|2<rsup|<frac|3|2>>-1|)>-8*cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>+7>>>>>>>|]>,<around*|[|<text|Theta=
        >,arctan <around*|(|<frac|<sqrt|2>*sin
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>*<sqrt|cos
        <around*|(|2<rsup|<frac|3|2>>-1|)>-8*cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>+7>|cos
        <around*|(|2<rsup|<frac|3|2>>-1|)>-4*cos
        <around*|(|<frac|2<rsup|<frac|3|2>>-1|2>|)>+3>|)>-\<pi\>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
      <|unfolded-io>
        v:matrix([1],[1.1],[0])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1.1>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>2) >
      <|unfolded-io>
        b(theta):=rodriguez(v)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
        >>b<around*|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|v|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>3) >
      <|unfolded-io>
        bb:b(%pi/3)
      <|unfolded-io>
        <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|<frac|11|10>>>|<row|<cell|0>>>>>>>

        <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|<frac|10|<sqrt|221>>>>|<row|<cell|<frac|11|<sqrt|221>>>>|<row|<cell|0>>>>>,<frac|<sqrt|221>*\<pi\>|30>|]>>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
        >><matrix|<tformat|<table|<row|<cell|<frac|<sqrt|221><rsup|2>+121*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-121|<sqrt|221><rsup|2>>>|<cell|-<frac|110*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-110|<sqrt|221><rsup|2>>>|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>>|<row|<cell|-<frac|110*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-110|<sqrt|221><rsup|2>>>|<cell|<frac|<sqrt|221><rsup|2>+100*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-100|<sqrt|221><rsup|2>>>|<cell|-<frac|10*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>>|<row|<cell|-<frac|11*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>|<cell|<frac|10*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>|<cell|<frac|<sqrt|221><rsup|2>+221*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-221|<sqrt|221><rsup|2>>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>4) >
      <|unfolded-io>
        axesDegree(bb)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-<frac|20*<around*|(|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-1|)>|<sqrt|442>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>>>>|<row|<cell|-<frac|22*<around*|(|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-1|)>|<sqrt|442>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>>>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,-arctan <around*|(|<frac|<sqrt|442>*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>|<sqrt|221>*<around*|(|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-2*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+1|)>>|)>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>32) >
      <|unfolded-io>
        keepfloat:true
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<math-bf|false>>>

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>33) >
      <|unfolded-io>
        keeploat
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
        >><math-bf|true>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>34) >
      <|unfolded-io>
        float(1.1)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
        >><math-up|keeploat>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>35) >
      <|unfolded-io>
        RR:matrix([1-0.5475113122171945*(1-cos (0.4955356249106169*%pi)),
        0.4977375565610859*(1-cos (0.4955356249106169*%pi)),
        0.7399400733959437*sin (0.4955356249106169*%pi)],
        [0.4977375565610859*(1-cos (0.4955356249106169*%pi)),
        1-0.4524886877828054*(1-cos (0.4955356249106169*%pi)),
        -0.6726727939963124*sin (0.4955356249106169*%pi)],
        [-0.7399400733959437*sin (0.4955356249106169*%pi),
        0.6726727939963124*sin (0.4955356249106169*%pi),
        1-0.9999999999999999*(1-cos (0.4955356249106169*%pi))])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
        >>1.1>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>36) >
      <|unfolded-io>
        determinant(trigreduce(trigsimp(trigexpand(factor(fullratsimp((RR))))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
        >><matrix|<tformat|<table|<row|<cell|1-0.5475113122171945*<around*|(|1-cos
        <around*|(|0.4955356249106169*\<pi\>|)>|)>>|<cell|0.4977375565610859*<around*|(|1-cos
        <around*|(|0.4955356249106169*\<pi\>|)>|)>>|<cell|0.7399400733959437*sin
        <around*|(|0.4955356249106169*\<pi\>|)>>>|<row|<cell|0.4977375565610859*<around*|(|1-cos
        <around*|(|0.4955356249106169*\<pi\>|)>|)>>|<cell|1-0.4524886877828054*<around*|(|1-cos
        <around*|(|0.4955356249106169*\<pi\>|)>|)>>|<cell|-0.6726727939963124*sin
        <around*|(|0.4955356249106169*\<pi\>|)>>>|<row|<cell|-0.7399400733959437*sin
        <around*|(|0.4955356249106169*\<pi\>|)>>|<cell|0.6726727939963124*sin
        <around*|(|0.4955356249106169*\<pi\>|)>>|<cell|1-0.9999999999999999*<around*|(|1-cos
        <around*|(|0.4955356249106169*\<pi\>|)>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>37) >
      <|unfolded-io>
        ff:1.1
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
        >><frac|<around*|(|121*cos <around*|(|<frac|11039393*\<pi\>|22277698>|)>+100|)>*<around*|(|<frac|496295828179204*sin
        <around*|(|<frac|11039393*\<pi\>|22277698>|)><rsup|2>|1096813780276041>+<frac|<around*|(|100*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>+121|)>*<around*|(|9007199254740992*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>+1|)>|1990591035297759232>|)>|221>+<frac|<around*|(|110*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>-110|)>*<around*|(|-<frac|281382675073922*sin
        <around*|(|<frac|11039393*\<pi\>|22277698>|)><rsup|2>|565323374466699>-<frac|<around*|(|110*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>-110|)>*<around*|(|9007199254740992*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>+1|)>|1990591035297759232>|)>|221>+<frac|12630689*sin
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>*<around*|(|<frac|12630689*<around*|(|100*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>+121|)>*sin
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>|3772443701>-<frac|22277698*<around*|(|110*cos
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>-110|)>*sin
        <around*|(|<frac|11039393*\<pi\>|22277698>|)>|7319117559>|)>|17069881>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>38) >
      <|unfolded-io>
        <code|rat(bfloat(1.5))>
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o38>)
        >>1.1>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>39) >
      <|unfolded-io>
        v:matrix([1],[0],[0])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
        >><frac|3|2>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>40) >
      <|unfolded-io>
        RRR: Raxis(x,%pi/2)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
        >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>41) >
      <|unfolded-io>
        axesDegree(RRR)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
      </unfolded-io>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>103) >
      <|input>
        \;
      </input>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>42) >
      <|unfolded-io>
        ww:matrix([((sqrt(221)^2+121*cos (((sqrt(221)*%pi)/30))-121)/(sqrt(221)^2)),
        -((110*cos (((sqrt(221)*%pi)/30))-110)/(sqrt(221)^2)), ((11*sin
        (((sqrt(221)*%pi)/30)))/(sqrt(221)))], [-((110*cos
        (((sqrt(221)*%pi)/30))-110)/(sqrt(221)^2)), ((sqrt(221)^2+100*cos
        (((sqrt(221)*%pi)/30))-100)/(sqrt(221)^2)), -((10*sin
        (((sqrt(221)*%pi)/30)))/(sqrt(221)))], [-((11*sin
        (((sqrt(221)*%pi)/30)))/(sqrt(221))), ((10*sin
        (((sqrt(221)*%pi)/30)))/(sqrt(221))), ((sqrt(221)^2+221*cos
        (((sqrt(221)*%pi)/30))-221)/(sqrt(221)^2))])
      <|unfolded-io>
        <math|<with|math-display|true|<math-bf|true>>>

        \;

        \ <math|<with|math-display|true|2>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta=
        >,<frac|\<pi\>|2>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>43) >
      <|unfolded-io>
        trigsimp(bb.transpose(bb))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o43>)
        >><matrix|<tformat|<table|<row|<cell|<frac|121*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+100|221>>|<cell|-<frac|110*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-110|221>>|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>>|<row|<cell|-<frac|110*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-110|221>>|<cell|<frac|100*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+121|221>>|<cell|-<frac|10*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>>|<row|<cell|-<frac|11*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>|<cell|<frac|10*sin
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>|<sqrt|221>>>|<cell|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>44) >
      <|unfolded-io>
        trigsimp(ratsimp(determinant(bb)))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o44>)
        >><matrix|<tformat|<table|<row|<cell|<frac|8516795507940210476495690880934314952686304|8516795507940196933721453952895426050875625>>|<cell|-<frac|41008369323230254048|203571477388238311673421754895314425>>|<cell|-<frac|3832796284129210511402|3103274803880341922476519699505952975>>>|<row|<cell|-<frac|41008369323230254048|203571477388238311673421754895314425>>|<cell|<frac|487133416856446160097638082106429924332648184|487133416856447121422612784892908438943265025>>|<cell|-<frac|2923214138215885497517|2405121938430190347067650238397859783>>>|<row|<cell|-<frac|3832796284129210511402|3103274803880341922476519699505952975>>|<cell|-<frac|2923214138215885497517|2405121938430190347067650238397859783>>|<cell|<frac|519093075779923591977539081643937543710390289|519093075779923500883403512717711000086324900>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>45) >
      <|unfolded-io>
        bb
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
        >><frac|81529012875644309465353159538517499425900752280768848744681772736|81529012875644317937031402254709576816175503704039697029109170625>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>46) >
      <|unfolded-io>
        rat(bfloat(bb))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o46>)
        >><matrix|<tformat|<table|<row|<cell|<frac|9904632|21523975>>|<cell|<frac|31055716|63281263>>|<cell|<frac|17437612|23568567>>>|<row|<cell|<frac|31055716|63281263>>|<cell|<frac|9239262|16681663>>|<cell|-<frac|14062762|20907855>>>|<row|<cell|-<frac|17437612|23568567>>|<cell|<frac|14062762|20907855>>|<cell|<frac|1945349|138707906>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>47) >
      <|unfolded-io>
        checkR3(bb)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
        >><matrix|<tformat|<table|<row|<cell|<frac|9904632|21523975>>|<cell|<frac|31055716|63281263>>|<cell|<frac|17437612|23568567>>>|<row|<cell|<frac|31055716|63281263>>|<cell|<frac|9239262|16681663>>|<cell|-<frac|14062762|20907855>>>|<row|<cell|-<frac|17437612|23568567>>|<cell|<frac|14062762|20907855>>|<cell|<frac|1945349|138707906>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>48) >
      <|unfolded-io>
        bb
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o48>)
        >><math-bf|false>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>49) >
      <|unfolded-io>
        bb.t
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o49>)
        >><matrix|<tformat|<table|<row|<cell|<frac|9904632|21523975>>|<cell|<frac|31055716|63281263>>|<cell|<frac|17437612|23568567>>>|<row|<cell|<frac|31055716|63281263>>|<cell|<frac|9239262|16681663>>|<cell|-<frac|14062762|20907855>>>|<row|<cell|-<frac|17437612|23568567>>|<cell|<frac|14062762|20907855>>|<cell|<frac|1945349|138707906>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|unfolded-io>
        dd:matrix([-((20*(cos (((sqrt(221)*%pi)/30))-1))/(sqrt(442)*sqrt(cos
        (((sqrt(221)*%pi)/15))-4*cos (((sqrt(221)*%pi)/30))+3)))],
        [-((22*(cos (((sqrt(221)*%pi)/30))-1))/(sqrt(442)*sqrt(cos
        (((sqrt(221)*%pi)/15))-4*cos (((sqrt(221)*%pi)/30))+3)))], [0])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
        >><matrix|<tformat|<table|<row|<cell|-<frac|20*<around*|(|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-1|)>|<sqrt|442>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>>>>|<row|<cell|-<frac|22*<around*|(|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-1|)>|<sqrt|442>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>>>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>13) >
      <|unfolded-io>
        trigsimp(trigreduce(trigexpand(dd)))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
        >><matrix|<tformat|<table|<row|<cell|-<frac|<around*|(|10*<sqrt|442>*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-10*<sqrt|442>|)>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>|221*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-884*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+663>>>|<row|<cell|-<frac|<around*|(|11*<sqrt|442>*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-11*<sqrt|442>|)>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>|221*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-884*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+663>>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>15) >
      <|unfolded-io>
        rat(bfloat(1.1))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
        >><frac|11|10>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        rat(0.1)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><frac|1|10>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|unfolded-io>
        pp:((20*(cos (((sqrt(221)*%pi)/30))-1))/(sqrt(442)*sqrt(cos
        (((sqrt(221)*%pi)/15))-4*cos (((sqrt(221)*%pi)/30))+3)))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
        >><frac|20*<around*|(|cos <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-1|)>|<sqrt|442>*<sqrt|cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-4*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+3>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>6) >
      <|unfolded-io>
        \;
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
        >><frac|<around*|(|5*<sqrt|442>*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-5*<sqrt|442>|)>*<sqrt|2*cos
        <around*|(|<frac|2*<sqrt|221>*\<pi\>|15>|)>-16*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|10>|)>+56*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-112*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+70>*<sqrt|<sqrt|2*cos
        <around*|(|<frac|2*<sqrt|221>*\<pi\>|15>|)>-16*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|10>|)>+56*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-112*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+70>+2*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-8*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+6>+<around*|(|5*<sqrt|442>*\<mathi\>*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-5*<sqrt|442>*\<mathi\>|)>*<sqrt|2*cos
        <around*|(|<frac|2*<sqrt|221>*\<pi\>|15>|)>-16*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|10>|)>+56*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-112*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+70>*<sqrt|<sqrt|2*cos
        <around*|(|<frac|2*<sqrt|221>*\<pi\>|15>|)>-16*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|10>|)>+56*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-112*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+70>-2*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>+8*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>-6>|221*cos
        <around*|(|<frac|2*<sqrt|221>*\<pi\>|15>|)>-1768*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|10>|)>+6188*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|15>|)>-12376*cos
        <around*|(|<frac|<sqrt|221>*\<pi\>|30>|)>+7735>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>35) >
      <|unfolded-io>
        ((sqrt(221)*%pi)/30)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
        >><frac|<sqrt|221>*\<pi\>|30>>>
      </unfolded-io>
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