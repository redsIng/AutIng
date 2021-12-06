<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <center|<strong|Procedure Robotica Industriale>>

  <center|Lorenzo Rossi - 0301285>

  <strong|Prodotto Vettoriale>

  Dati due vettori <math|a,b\<in\>\<bbb-R\><rsup|3>> definiamo il
  <strong|prodotto vettoriale> l'operazione:

  <\equation*>
    a \<times\>b=det <matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|a<rsub|x>>|<cell|a<rsub|y>>|<cell|a<rsub|z>>>|<row|<cell|b<rsub|x>>|<cell|b<rsub|y>>|<cell|b<rsub|z>>>>>>=<around*|(|a<rsub|y>*b<rsub|z>-a<rsub|z>*b<rsub|y>|)>*e<rsub|x>-<around*|(|a<rsub|z>*b<rsub|x>-a<rsub|x>*b<rsub|z>|)>+<around*|(|a<rsub|x>*b<rsub|y>-a<rsub|y>*b<rsub|x>|)>*e<rsub|z>
  </equation*>

  Alternativamente:

  <\equation*>
    a\<times\>b=<matrix|<tformat|<table|<row|<cell|a<rsub|y>*b<rsub|z>-a<rsub|z>*b<rsub|y>>>|<row|<cell|a<rsub|z>*b<rsub|x>-a<rsub|x>*b<rsub|z>>>|<row|<cell|a<rsub|x>*b<rsub|y>-a<rsub|y>*b<rsub|x>>>>>>
  </equation*>

  <\theorem*>
    <underline|Anticommutativo>

    Il prodotto vettoriale è anticommutativo:

    <\equation*>
      a\<times\>b=*-b\<times\>a
    </equation*>
  </theorem*>

  <\proof>
    \;

    Nel calcolo del determinante, l'operazione commutativa corrisponde ad un
    cambio di righe nel determinante che è esattamente uguale al prodotto
    vettoriale <math|-b\<times\>a>.
  </proof>

  <\theorem*>
    <underline|Associatività>

    Il prodotto vettoriale non è associativo.
  </theorem*>

  <\proof>
    \;

    Per dimostrare la proprietà non associatività del prodotto vettoriale
    verifichiamo che:

    <\equation*>
      e<rsub|x>\<times\><around*|(|e<rsub|y>\<times\>e<rsub|y>|)>=+e<rsub|z>
    </equation*>

    <\equation*>
      <around*|(|e<rsub|x>*\<times\>e<rsub|y>|)>\<times\>e<rsub|y>=-e<rsub|x>
    </equation*>

    Quindi <math|-e<rsub|x>\<neq\>e<rsub|z>\<longrightarrow\>>Il prodotto
    vettoriale non è associativo.

    \;
  </proof>

  <\session|maxima|default>
    <\output>
      Procedura per il calcolo del prodotto vettoriale
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      vect(a,b):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if length(a) = 3 and length(b) = 3
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ mProd:
      matrix([e[x],e[y],e[z]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [a[1][1],a[2][1],a[3][1]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [b[1][1],b[2][1],b[3][1]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detM: determinant(mProd),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if detM = 0 then detM :
      zerofor(a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Determinant:",detM),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ex:matrix([1],[0],[0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ey:matrix([0],[1],[0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ez:matrix([0],[0],[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:
      psubst([e[x]=ex,e[y]=ey,e[z]=ez],detM)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Incorrect vectors
      dimension"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|vect><around*|(|a,b|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em><math-up|length><around*|(|a|)>=3\<wedge\><math-up|length><around*|(|b|)>=3<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|mProd>:<matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|<around*|(|a<rsub|1>|)><rsub|1>>|<cell|<around*|(|a<rsub|2>|)><rsub|1>>|<cell|<around*|(|a<rsub|3>|)><rsub|1>>>|<row|<cell|<around*|(|b<rsub|1>|)><rsub|1>>|<cell|<around*|(|b<rsub|2>|)><rsub|1>>|<cell|<around*|(|b<rsub|3>|)><rsub|1>>>>>>,<math-up|detM>:<math-up|determinant><around*|(|<math-up|mProd>|)>,<math-bf|if><space|0.27em><math-up|detM>=0<space|0.27em><math-bf|then><space|0.27em><math-up|detM>:<math-up|zerofor><around*|(|a|)>,<math-up|print><around*|(|<text|Determinant:
      >,<math-up|detM>|)>,<math-up|ex>:<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<math-up|ey>:<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,<math-up|ez>:<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-up|res>:<math-up|psubst><around*|(|<around*|[|e<rsub|x>=<math-up|ex>,e<rsub|y>=<math-up|ey>,e<rsub|z>=<math-up|ez>|]>,<math-up|detM>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Incorrect
      vectors dimension >|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      A : matrix([a[x]],[a[y]],[a[z]])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|a<rsub|x>>>|<row|<cell|a<rsub|y>>>|<row|<cell|a<rsub|z>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      B : matrix([b[x]],[b[y]],[b[z]])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|b<rsub|x>>>|<row|<cell|b<rsub|y>>>|<row|<cell|b<rsub|z>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      vect(A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Determinant:
      ><around*|(|a<rsub|x>*b<rsub|y>-b<rsub|x>*a<rsub|y>|)>*e<rsub|z>+e<rsub|x>*<around*|(|a<rsub|y>*b<rsub|z>-b<rsub|y>*a<rsub|z>|)>-e<rsub|y>*<around*|(|a<rsub|x>*b<rsub|z>-b<rsub|x>*a<rsub|z>|)>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|a<rsub|y>*b<rsub|z>-b<rsub|y>*a<rsub|z>>>|<row|<cell|b<rsub|x>*a<rsub|z>-a<rsub|x>*b<rsub|z>>>|<row|<cell|a<rsub|x>*b<rsub|y>-b<rsub|x>*a<rsub|y>>>>>>>>
    </unfolded-io>

    <\textput>
      <strong|Verifica che il prodotto vettoriale è anticommutativo>

      <math|a\<times\>b=-b\<times\>a>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      anticomm(a,b):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (expand(vect(a,b) +
      vect(b,a)))=zerofor(a) then\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il prodotto
      vettoriale è anticommutativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il prodotto
      vettoriale non è anticommutativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-up|anticomm><around*|(|a,b|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em><math-up|expand><around*|(|<math-up|vect><around*|(|a,b|)>+<math-up|vect><around*|(|b,a|)>|)>=<math-up|zerofor><around*|(|a|)><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<text|Il
      prodotto vettoriale è anticommutativo
      ><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Il
      prodotto vettoriale non è anticommutativo >|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      anticomm(A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Determinant:
      ><around*|(|a<rsub|x>*b<rsub|y>-b<rsub|x>*a<rsub|y>|)>*e<rsub|z>+e<rsub|x>*<around*|(|a<rsub|y>*b<rsub|z>-b<rsub|y>*a<rsub|z>|)>-e<rsub|y>*<around*|(|a<rsub|x>*b<rsub|z>-b<rsub|x>*a<rsub|z>|)>>>

      <math|<with|math-display|true|<text|Determinant:
      ><around*|(|b<rsub|x>*a<rsub|y>-a<rsub|x>*b<rsub|y>|)>*e<rsub|z>+e<rsub|x>*<around*|(|b<rsub|y>*a<rsub|z>-a<rsub|y>*b<rsub|z>|)>-e<rsub|y>*<around*|(|b<rsub|x>*a<rsub|z>-a<rsub|x>*b<rsub|z>|)>>>
    </unfolded-io>

    <\textput>
      <strong|Verifica che il prodotto vettoriale non è associativo>

      <\equation*>
        e<rsub|x>\<times\><around*|(|e<rsub|y>\<times\>e<rsub|y>|)>=+e<rsub|z>
      </equation*>

      <\equation*>
        <around*|(|e<rsub|x>*\<times\>e<rsub|y>|)>\<times\>e<rsub|y>=-e<rsub|x>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      noassociative(a,b):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Prodotto
      vettoriale (ey x ey)"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prod1: vect(b,b),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Prodotto
      vettoriale ex x (ey x ey)"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prod2:
      vect(a,prod1),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Prodotto
      vettoriale (ex x ey)"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prod3: vect(a,b),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Prodotto
      vettoriale (ex x ey) x ey"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prod4:
      vect(prod3,b),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(prod4),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
      is(equal(prod2, prod4)) then

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il
      prodotto vettoriale è associativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il
      prodotto vettoriale non è associativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >Il prodotto vettoriale è anticommutativo >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      ex: matrix([1],[0],[0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      ey: matrix([0],[1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      noassociative(ex,ey)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Prodotto vettoriale (ey x ey) >>>

      <math|<with|math-display|true|<text|Determinant:
      ><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|Prodotto vettoriale ex x (ey x ey)
      >>>

      \;

      \ <math|<with|math-display|true|<text|Determinant:
      ><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|Prodotto vettoriale (ex x ey) >>>

      \;

      \ <math|<with|math-display|true|<text|Determinant: >e<rsub|z>>>

      <math|<with|math-display|true|<text|Prodotto vettoriale (ex x ey) x ey
      >>>

      <math|<with|math-display|true|<text|Determinant: >-e<rsub|x>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >Il prodotto vettoriale non è associativo >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      \;
    </input>
  </session>

  <\center>
    <strong|Matrice di rotazione>
  </center>

  Supponiamo che lo spazio di lavoro sia in <math|\<bbb-R\><rsup|2>>, allora
  è possibile definire la matrice di rotazione:

  <\equation*>
    R<around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)>>|<cell|-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)>>|<cell|cos<around*|(|\<theta\>|)>>>>>>
  </equation*>

  <\proposition*>
    <\itemize>
      La matrice di rotazione è una matrice:

      <item>Isometrica:

      <\equation*>
        R<around*|(|\<theta\>|)><rsup|-1>=R<around*|(|\<theta\>|)><rsup|T>
      </equation*>

      <\equation*>
        det<around*|(|R<around*|(|\<theta\>|)>|)>\<neq\>0
      </equation*>

      <\equation*>
        det<around*|(|R<around*|(|\<theta\>|)>|)>=\<pm\>1\<longrightarrow\><choice|<tformat|<table|<row|<cell|1
        matrice di rotazione>>|<row|<cell|-1 matrice speculare di
        rotazione>>>>>
      </equation*>

      <\equation*>
        <around*|\||\<lambda\><rsub|i>|\|>=1<space|1em>\<forall\>\<lambda\><rsub|i>\<in\>\<sigma\><around*|(|R<around*|(|\<theta\>|)>|)>
      </equation*>

      Per dimostrare l'isometria dobbiamo verificare che
      <math|<choice|<tformat|<table|<row|<cell|R<around*|(|\<theta\>|)><rsup|T>R<around*|(|\<theta\>|)>=I>>|<row|<cell|R<around*|(|\<theta\>|)>*R<around*|(|\<theta\>|)><rsup|T>=I>>>>>>;

      <item><math|det<around*|(|R<around*|(|\<theta\>|)>|)>=1>;

      <item><math|R<rsup|-1><around*|(|\<theta\>|)>=R<around*|(|\<theta\>|)><rsup|T>=R<around*|(|-\<theta\>|)>>;

      <item><math|R<around*|(|\<theta\><rsub|1>+\<theta\><rsub|2>|)>=R<around*|(|\<theta\><rsub|1>|)>*R<around*|(|\<theta\><rsub|2>|)>>;

      <item><math|R<around*|(|\<theta\><rsub|1>|)>*R<around*|(|\<theta\><rsub|2>|)>=R<around*|(|\<theta\><rsub|2>|)>*R<around*|(|\<theta\><rsub|1>|)>>;
      Proprietà commutativa <underline|<strong|SOLO>> in
      <math|\<bbb-R\><rsup|2>>

      \;
    </itemize>
  </proposition*>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      checkR(R):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRt: trigsimp(R.transpose(R)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(RRt),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if is(equal(trigsimp(RRt),ident(2)))
      then print("La matrice è isometrica"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detR:
      trigsimp(determinant(R)),print(detR),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if detR=1 then print("La matrice è di
      rotazione")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else if equal(detR,1)#1 then

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return("La matrice non è di
      rotazione"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("trasposta=inversa=rotazione(-\\theta)?"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rt: transpose(R),print("R
      trasposta:",Rt),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rinv: trigsimp(invert(R)),print("R
      inversa:",Rinv),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rmin: R(-theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("R(-theta):",Rmin),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if is(equal(Rt,Rinv)) and
      is(equal(Rinv,Rmin)) then\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Proprietà è soddisfatta"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rth12:
      trigreduce(R(theta[1]+theta[2])),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rth1: R(theta[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Rth2: R(theta[2]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ pRth12: trigreduce(Rth1.Rth2),
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("R(theta[1]+theta[2])", Rth12),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("R(theta[1])R(theta[2])",pRth12),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if is(equal(Rth12,pRth12)) then
      print("La proprietà della somma degli angoli è soddisfatta"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if is(equal(Rth1.Rth2,Rth2.Rth1))
      then res:"Soddisfa la proprietà commutativa")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|checkR><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|RRt>:<math-up|trigsimp><around*|(|R\<cdot\><math-up|transpose><around*|(|R|)>|)>,<math-up|print><around*|(|<math-up|RRt>|)>,<math-bf|if><space|0.27em><math-up|is><around*|(|<math-up|equal><around*|(|<math-up|trigsimp><around*|(|<math-up|RRt>|)>,<math-up|ident><around*|(|2|)>|)>|)><space|0.27em><math-bf|then><space|0.27em><math-up|print><around*|(|<text|La
      matrice è isometrica >|)>,<math-up|detR>:<math-up|trigsimp><around*|(|<math-up|determinant><around*|(|R|)>|)>,<math-up|print><around*|(|<math-up|detR>|)>,<math-bf|if><space|0.27em><math-up|detR>=1<space|0.27em><math-bf|then><space|0.27em><math-up|print><around*|(|<text|La
      matrice è di rotazione >|)><space|0.27em><math-bf|else><space|0.27em><around*|(|<math-bf|if><space|0.27em><math-up|equal><around*|(|<math-up|detR>,1|)>\<neq\>1<space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<text|La
      matrice non è di rotazione >|)>|)>,<math-up|print><around*|(|<text|trasposta=inversa=rotazione(-theta)?
      >|)>,<math-up|Rt>:<math-up|transpose><around*|(|R|)>,<math-up|print><around*|(|<text|R
      trasposta: >,<math-up|Rt>|)>,<math-up|Rinv>:<math-up|trigsimp><around*|(|<math-up|invert><around*|(|R|)>|)>,<math-up|print><around*|(|<text|R
      inversa: >,<math-up|Rinv>|)>,<math-up|Rmin>:R*<around*|(|-\<vartheta\>|)>,<math-up|print><around*|(|<text|R(-theta):
      >,<math-up|Rmin>|)>,<math-bf|if><space|0.27em><math-up|is><around*|(|<math-up|equal><around*|(|<math-up|Rt>,<math-up|Rinv>|)>|)>\<wedge\><math-up|is><around*|(|<math-up|equal><around*|(|<math-up|Rinv>,<math-up|Rmin>|)>|)><space|0.27em><math-bf|then><space|0.27em><math-up|print><around*|(|<text|Proprietà
      è soddisfatta >|)>,<with|math-font-family|rm|Rth12>:<math-up|trigreduce><around*|(|R*<around*|(|\<vartheta\><rsub|1>+\<vartheta\><rsub|2>|)>|)>,<with|math-font-family|rm|Rth1>:R<around*|(|\<vartheta\><rsub|1>|)>,<with|math-font-family|rm|Rth2>:R<around*|(|\<vartheta\><rsub|2>|)>,<with|math-font-family|rm|pRth12>:<math-up|trigreduce><around*|(|<with|math-font-family|rm|Rth1>\<cdot\><with|math-font-family|rm|Rth2>|)>,<math-up|print><around*|(|<text|R(theta[1]+theta[2])
      >,<with|math-font-family|rm|Rth12>|)>,<math-up|print><around*|(|<text|R(theta[1])R(theta[2])
      >,<with|math-font-family|rm|pRth12>|)>,<math-bf|if><space|0.27em><math-up|is><around*|(|<math-up|equal><around*|(|<with|math-font-family|rm|Rth12>,<with|math-font-family|rm|pRth12>|)>|)><space|0.27em><math-bf|then><space|0.27em><math-up|print><around*|(|<text|La
      proprietà della somma degli angoli è soddisfatta
      >|)>,<math-bf|if><space|0.27em><math-up|is><around*|(|<math-up|equal><around*|(|<with|math-font-family|rm|Rth1>\<cdot\><with|math-font-family|rm|Rth2>,<with|math-font-family|rm|Rth2>\<cdot\><with|math-font-family|rm|Rth1>|)>|)><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<text|Soddisfa
      la proprietà commutativa >|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R(theta):=matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>R<around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      checkR(R(theta))
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<text|La matrice è isometrica >>>

      <math|<with|math-display|true|1>>

      \;

      \ <math|<with|math-display|true|<text|La matrice è di rotazione >>>

      <math|<with|math-display|true|<text|trasposta=inversa=rotazione(-theta)?
      >>>

      \;

      \ <math|<with|math-display|true|<text|R trasposta:
      ><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|R inversa:
      ><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|R(-theta):
      ><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|Proprietà è soddisfatta >>>

      <math|<with|math-display|true|<text|R(theta[1]+theta[2])
      ><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>>>>>>>

      <math|<with|math-display|true|<text|R(theta[1])R(theta[2])
      ><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|2>+\<vartheta\><rsub|1>|)>>>>>>>>

      <math|<with|math-display|true|<text|La proprietà della somma degli
      angoli è soddisfatta >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >Soddisfa la proprietà commutativa >>>
    </unfolded-io>
  </session>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>