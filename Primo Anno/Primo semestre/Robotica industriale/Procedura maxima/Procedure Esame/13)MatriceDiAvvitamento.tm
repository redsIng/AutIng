<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|7em><strong|Asse, angolo, spostamento - Matrice di avvitamento>

  Scrivere una procedura che, dati asse, angolo, spostamento, generi la
  corrispondente matrice di avvitamento

  Una matrice di avvitamento è una matrice ottenuta dalla rotazione e
  traslazione lungo uno stesso asse. Questa matrice ha la seguente struttura:

  <\equation*>
    A<rsub|v><around*|(|\<theta\>,d|)>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>
  </equation*>

  In particolare:

  <\itemize-minus>
    <item>\<theta\> = 0 <math|\<Longrightarrow\>traslazione;>

    <item><math|d=0\<Longrightarrow\>rotazione;>
  </itemize-minus>

  Poiché la traslazione e la rotazione sono effettuate lungo lo stesso asse,
  commutano. Quindi, una roto-traslazione è equivalente ad una
  trasla-rotazione.

  <\equation*>
    T<rsub|R>*T<rsub|T>\<equiv\>T<rsub|T>*T<rsub|R>
  </equation*>

  <\equation*>
    T<rsub|R>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>0>>|<row|<cell|0<space|2em>1>>>>>,T<rsub|T>=<matrix|<tformat|<table|<row|<cell|I<space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>,
  </equation*>

  <\equation*>
    <around*|(|1|)>T<rsub|R>*T<rsub|T>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>0>>|<row|<cell|0<space|2em>1>>>>>*<matrix|<tformat|<table|<row|<cell|I<space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>d*e<rsup|S<around*|(|v|)>*\<theta\>>v>>|<row|<cell|0<space|2em>1>>>>>
  </equation*>

  <\equation*>
    <around*|(|2|)>T<rsub|T>*T<rsub|R>=<matrix|<tformat|<table|<row|<cell|I<space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>*<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>0>>|<row|<cell|0<space|2em>1>>>>>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>
  </equation*>

  I prodotti matriciali (1) e (2) sono identici tenendo conto che <math|v> è
  l'asse di rotazione corrispondente alla rotazione effettuata:

  <\equation*>
    e<rsup|S<around*|(|v|)>*\<theta\>>*v=v\ 
  </equation*>

  poiché <math|v >è l'asse di rotazione.

  <\session|maxima|default>
    <\output>
      \;
    </output>

    <\textput>
      La funzione inverseLaplace(SI) calcola e restituisce in output
      l'antitrasformata di Laplace scorrendo tutti gli elementi della matrice
      data in input.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      inverseLaplace(SI,theta):=block([res],\ 

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
      >><math-up|inverseLaplace><around*|(|<math-up|SI>,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,M:<math-up|SI>,<math-up|MC>:<math-up|SI>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|aC>:M<rsub|i,j>,b:<math-up|ilt><around*|(|<math-up|aC>,s,\<vartheta\>|)>,<math-up|MC><rsub|i,j>:b|)>,<math-up|res>:<math-up|MC>|)>>>
    </unfolded-io>

    <\textput>
      <\session|maxima|default>
        <\textput>
          La funzione rotLaplace(k,\<theta\>) riceve in input un vettore
          <math|v> e \<theta\> per calcolare la matrice di rotazione relativa
          all'asse di rotazione v e angolo \<theta\>. In seguito, invoca la
          funzione inverseLaplace per effettuare l'inversa di laplace e,
          quindi, restituire in output l'effettiva matrice di rotazione.\ 
        </textput>
      </session>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotLaplace(k,theta):=block([res],

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
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,I:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*k<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,\<vartheta\>|)>|)>>>
    </unfolded-io>

    <\textput>
      La funzione <math|A<rsub|v><around*|(|v,\<theta\>,d|)>> riceve in input
      l'asse di rotazione <math|v>, l'angolo \<theta\> e la traslazione
      <math|d> e restituisce la corrispondente matrice di avvitamento
      <math|A<rsub|v>>:

      <\equation*>
        A<rsub|v><around*|(|\<theta\>,d|)>=<matrix|<tformat|<table|<row|<cell|e<rsup|S<around*|(|v|)>*\<theta\>><space|1em>d*v>>|<row|<cell|0<space|2em>1>>>>>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Av(v,theta,d):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Trot:rotLaplace(v,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row:matrix([0,0,0,1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Atemp:addcol(Trot,d*transpose(v)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ A:addrow(Atemp,row),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:trigsimp(trigrat(trigreduce(trigexpand(A))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|Av><around*|(|v,\<vartheta\>,d|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|Trot>:<math-up|rotLaplace><around*|(|v,\<vartheta\>|)>,<math-up|row>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<math-up|Atemp>:<math-up|addcol><around*|(|<math-up|Trot>,d*<math-up|transpose><around*|(|v|)>|)>,A:<math-up|addrow><around*|(|<math-up|Atemp>,<math-up|row>|)>,<math-up|res>:<math-up|trigsimp><around*|(|<math-up|trigrat><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|A|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      A[z](theta,d):=Av([0,0,1],theta,d);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>A<rsub|z><around|(|\<vartheta\>,d|)>\<assign\><math-up|Av><around*|(|<around*|[|0,0,1|]>,\<vartheta\>,d|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      A[z](theta,d)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|d>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      A[x](alpha,a):=Av([1,0,0],alpha,a);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>A<rsub|x><around|(|\<alpha\>,a|)>\<assign\><math-up|Av><around*|(|<around*|[|1,0,0|]>,\<alpha\>,a|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      A[x](alpha,a)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|a>>|<row|<cell|0>|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|input>
      \;
    </input>
  </session>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>