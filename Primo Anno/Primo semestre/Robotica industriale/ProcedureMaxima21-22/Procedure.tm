<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <center|<strong|Procedure Robotica Industriale>>

  <center|Lorenzo Rossi - 0301285>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Prodotto
    Vettoriale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Proprietà Anticommutativa
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Proprietà Associativa
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Codice + Testing
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc><\with|par-mode|center>
      <with|font-series|bold|math-font-series|bold|Matrice di rotazione>
    </with>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-5><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|3<space|2spc><with|par-mode|center|<with|font-series|bold|math-font-series|bold|Calcolo
    Autovettori>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-6><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|4<space|2spc><with|par-mode|center|<with|font-series|bold|math-font-series|bold|Calcolo
    Energia Cinetica 3 Link Planare>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|5<space|2spc><with|font-series|bold|math-font-series|bold|MATRICI
    DI ROTAZIONE <with|mode|math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>,R<rsub|y><around*|(|\<theta\><rsub|y>|)>,R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9><vspace|0.5fn>

    <with|par-left|1tab|5.1<space|2spc>Matrice di rotazione attorno all'asse
    x <with|mode|math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10>>

    <with|par-left|1tab|5.2<space|2spc>Matrice di rotazione attorno all'asse
    y <with|mode|math|R<rsub|y><around*|(|\<theta\><rsub|y>|)>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|5.3<space|2spc>Matrice di rotazione attorno all'asse
    z <with|mode|math|R<rsub|z><around*|(|\<theta\><rsub|z>|)>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|6<space|2spc>Matrice
    di rotazione asse-angolo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|7<space|2spc>Matrice
    Antismmetrica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-14><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|8<space|2spc>Angoli
    di Eulero> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-15><vspace|0.5fn>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|9<space|2spc><with|font-series|bold|math-font-series|bold|
    Matrice di rotazione tramite trasformata di Laplace>>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-16><vspace|0.5fn>
  </table-of-contents>

  \;

  <section|Prodotto Vettoriale>

  Dati due vettori <math|a,b\<in\>\<bbb-R\><rsup|3>> definiamo il
  <strong|prodotto vettoriale> l'operazione:

  <\equation*>
    a \<times\>b=det <matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|a<rsub|x>>|<cell|a<rsub|y>>|<cell|a<rsub|z>>>|<row|<cell|b<rsub|x>>|<cell|b<rsub|y>>|<cell|b<rsub|z>>>>>>=<around*|(|a<rsub|y>*b<rsub|z>-a<rsub|z>*b<rsub|y>|)>*e<rsub|x>-<around*|(|a<rsub|z>*b<rsub|x>-a<rsub|x>*b<rsub|z>|)>+<around*|(|a<rsub|x>*b<rsub|y>-a<rsub|y>*b<rsub|x>|)>*e<rsub|z>
  </equation*>

  Alternativamente:

  <\equation*>
    a\<times\>b=<matrix|<tformat|<table|<row|<cell|a<rsub|y>*b<rsub|z>-a<rsub|z>*b<rsub|y>>>|<row|<cell|a<rsub|z>*b<rsub|x>-a<rsub|x>*b<rsub|z>>>|<row|<cell|a<rsub|x>*b<rsub|y>-a<rsub|y>*b<rsub|x>>>>>>
  </equation*>

  <subsection|Proprietà Anticommutativa>

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

  <subsection|Proprietà Associativa>

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

  <subsection|Codice + Testing>

  <\session|maxima|default>
    <\output>
      Procedura per il calcolo del prodotto vettoriale
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      exportfun():=stringout("C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo
      Anno/Primo semestre/Robotica industriale/ProcedureMaxima21-22/my_functions.mac",functions)$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|input>
      size(a):=block(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(a) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row:length(a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ col:length(transpose(a)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return([row,col]))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else(return([1,1])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      rational(a):=block([res],res:gfactor(ratexpand(radcan(expand(a)))),return(res))$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|input>
      vect(a,b):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a:rational(a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b:rational(b),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [xA,yA]:size(a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [xB,yB]:size(b),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if xA = 3 and yA=1 and xB = 3 and
      yA=1 and nonscalarp(a) and nonscalarp(b) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ mProd:
      matrix([e[x],e[y],e[z]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [a[1][1],a[2][1],a[3][1]],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [b[1][1],b[2][1],b[3][1]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detM:radcan(expand(determinant(mProd))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if detM = 0 then (detM :
      zerofor(a)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ex:matrix([1],[0],[0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ey:matrix([0],[1],[0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ez:matrix([0],[0],[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:
      psubst([e[x]=ex,e[y]=ey,e[z]=ez],detM)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Incorrect vectors
      dimension"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|input>
      A : matrix([a[x]],[a[y]],[a[z]])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      B : matrix([b[x]],[b[y]],[b[z]])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      vect(A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|a<rsub|y>*b<rsub|z>-b<rsub|y>*a<rsub|z>>>|<row|<cell|b<rsub|x>*a<rsub|z>-a<rsub|x>*b<rsub|z>>>|<row|<cell|a<rsub|x>*b<rsub|y>-b<rsub|x>*a<rsub|y>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      vect(theta,matrix([1],[2],[3]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >Incorrect vectors dimension >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      A:matrix([1.1],[sqrt(2)*%pi/2],[2])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      B:matrix([b[x]],[%i*b[y]],[alpha[i]])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      vect(A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|<frac|5*<sqrt|2>*\<pi\>*\<alpha\><rsub|i>-20*\<mathi\>*b<rsub|y>|10>>>|<row|<cell|<frac|20*b<rsub|x>-11*\<alpha\><rsub|i>|10>>>|<row|<cell|<frac|11*\<mathi\>*b<rsub|y>-5*<sqrt|2>*\<pi\>*b<rsub|x>|10>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      exportfun()$
    </input>

    <\textput>
      <strong|Verifica che il prodotto vettoriale è anticommutativo>

      <math|a\<times\>b=-b\<times\>a>
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|input>
      anticomm(a,b):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (expand(vect(a,b) +
      vect(b,a)))=zerofor(a) then\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il prodotto
      vettoriale è anticommutativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Il prodotto
      vettoriale non è anticommutativo"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|input>
      A : matrix([a[x]],[a[y]],[a[z]])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      B : matrix([b[x]],[b[y]],[b[z]])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      anticomm(A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >Il prodotto vettoriale è anticommutativo >>>
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

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      ex: matrix([1],[0],[0])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      ey: matrix([0],[1],[0])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      print("Prodotto vettoriale (ey x ey)");

      prod1: vect(ey,ey);

      print("Prodotto vettoriale ex x (ey x ey)");

      prod2: vect(ex,prod1);

      print("Prodotto vettoriale (ex x ey)");

      prod3: vect(ex,ey);

      print("Prodotto vettoriale (ex x ey) x ey");

      prod4: vect(prod3,ey);

      print(prod4);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Prodotto vettoriale (ey x ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >Prodotto vettoriale (ey x ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|Prodotto vettoriale ex x (ey x
      ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >Prodotto vettoriale ex x (ey x ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|Prodotto vettoriale (ex x ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >Prodotto vettoriale (ex x ey) >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|Prodotto vettoriale (ex x ey) x
      ey >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >Prodotto vettoriale (ex x ey) x ey >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><matrix|<tformat|<table|<row|<cell|-1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|input>
      \;
    </input>
  </session>

  <new-page*>

  <\section>
    <\center>
      <strong|Matrice di rotazione>
    </center>
  </section>

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
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      checkR(R):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [xR,yR]:size(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(R) and xR=yR and not
      symbolp(R) and not subvarp(R) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R:rational(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRt:
      factor(expand(trigreduce(expand(R.transpose(R))))),/*print(RRt),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detR:
      factor(expand(trigreduce(expand(determinant(R))))),/*print(detR),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if is(equal(trigsimp(RRt),ident(xR)))
      and detR=1\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (/*

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("trasposta=inversa=rotazione(-\\theta)?"),

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
      then(\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Soddisfa la
      proprietà commutativa")),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(true)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else \ return(false)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
    <|input>
      R(theta):=matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      checkR(R(theta))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      trigsimp(expand(R(theta).transpose(R(theta))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>42) >
    <|input>
      R:matrix([1,0,0],[0,0,-1],[0,1,0])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>43) >
    <|unfolded-io>
      checkR(R)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o43>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      \;
    </input>
  </session>

  <\session|maxima|default>
    \;
  </session>

  <section|<center|<strong|Calcolo Autovettori>>>

  <\session|maxima|default>
    \;

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      A:matrix([1,1,0],[0,1,0],[0,0,1])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|input>
      A1:matrix([1,0,2],[1,2,3],[0,0,3])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      A2:matrix([sqrt(2),0,2],[1.2,2,3],[0,0,3])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      eigenvect(A):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ A:rational(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [x,y]:size(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if x=y and nonscalarp(A) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeM: size(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sA : lambda*ident(x)-A,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*disp(sA),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ polA: determinant(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(determinant(sA)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(polA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ autval:solve(polA=0,lambda),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*disp(ratsimp(autval)),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjA: adjoint(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*disp(adjA),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sizeAutx,sizeAuty]: size(autval),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru sizeAuty do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjAaut: subst(autval[i],adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*disp(adjAaut),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ autvect: args(columnspace(adjAaut)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sizeAutvectx,sizeAutvecty]:
      size(autvect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ mg:sizeAutvecty,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if mg=0 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:append(res,[[autval[i],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ args(nullspace(subst(autval[i],sA)))]])/*,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(res)*/)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif mg#0 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*disp(autvect),*/

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:append(res,[[autval[i],autvect[1]]]))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))else print("Insert a Matrix"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(rootscontract(ratsimp(radcan((expand(res))))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      autovalori:eigenvect(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Insert a Matrix >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><around*|[||]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      eigenvect(A1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Insert a Matrix >>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><around*|[||]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      eigenvect(A2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|(|\<lambda\>-3|)>*<around*|(|\<lambda\>-2|)>*<around*|(|\<lambda\>-<sqrt|2>|)>>>

      \;

      <math|<with|math-display|true|<around*|(|\<lambda\>-3|)>*<around*|(|\<lambda\>-2|)>*<around*|(|\<lambda\>-<sqrt|2>|)>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<around*|[|\<lambda\>=<sqrt|2>,<matrix|<tformat|<table|<row|<cell|8-5*<sqrt|2>>>|<row|<cell|<frac|3*2<rsup|<frac|3|2>>-18|5>>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=2,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-<frac|6|5>>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=3,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|-<frac|15*<sqrt|2>-57|5>>>|<row|<cell|3-<sqrt|2>>>>>>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      eigenvect(2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Insert a Matrix >>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><around*|[||]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      A:matrix([0,1,0],[1,0,0],[0,0,-1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      bb:eigenvect(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><around*|[|<around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>,<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      bb[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      bb[2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|input>
      exportfun()$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>44) >
    <|unfolded-io>
      describe(ratsprint)
    <|unfolded-io>
      \ \ No exact match found for topic `ratsprint'.

      \ \ Try `?? ratsprint' (inexact match) instead.

      \;

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o44>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>45) >
    <|unfolded-io>
      ratsprint:true
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>46) >
    <|unfolded-io>
      ratfac
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o46>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>47) >
    <|unfolded-io>
      keepfloat
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
      >><math-bf|false>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>48) >
    <|input>
      \;
    </input>
  </session>

  <new-page*>

  <section|<center|<strong|Calcolo Energia Cinetica 3 Link Planare>>>

  \;

  <center|<\render-small-figure|||<image|<tuple|<#89504E470D0A1A0A0000000D49484452000001780000018D08060000001BC26A0C00000006624B474400FF00FF00FFA0BDA7930000200049444154789CEDDD79B4246599E7F16F15D4450A8A52501637928606452D570414A4E8121770415906101D97565B59141D6807D0963EEAA8AD0CF6348E322EB8A2282D8D8A2D088242890A2A368DA068270225202094085441D59D3FDE374F06492E9191B165E4F773CE3D9137E3CD8C971EE777A39E78E20D28CFA9C015251E4F925492D5C03CF0F8AA272249B3606149C7D90558125F1F50D231254925F827601DE10CFEA715CF459294A3DF13C27D1E588F651A492A5C19259A67038F4BFCBE1E786509C795A4995646C01F04DC9FF87D01706809C79524152C599EB14C23492529FA0C7E171E5C9EE9B04C2349051B16F02B800B811F032B81670C19BB14783FB05BCFFBBDE5990ECB34925491E700DF06362784F1F5C02A60F180F1FF4C28BD9CD1F37EBFF28C651A49AAC852E017C01689F7AE2784F2EE033EF3ABB8FFD8C47BBB3038DCE7810780B7E7397149D270C702C7257EDF8E6E283FA1CFF84727F627CB381F06D63238E0D711CA3F92A4925C056C95F8FD784220FFE780F187C7FD77F0E09A7EE7AC7FD88F651A492AD1BE3DBF5F4D08E3770D18FF99B8FFACC47BA3CA33C932CDDBF29AB82429BD67D03DD36E0D18D38E63DE9A78EFC384EE995101BF0EB82CFF694B9246F92821882F19B07F7BFAD7E7D394672CD34852857E4708E12306EC7F63DC7F53E2BDB4E519CB349254A061373A2D2574D0005C3A60CCDFC4ED8589F706DDDC3488373D4952C99E4BB74EBEF18031B7C431AF4DBC374E792659A6E9B7A4812429A36167F09D7D7F00EEEDB3FFD9C096F175E70C7E17B2D5D35D9B46924AB48470F67E37B0A867DF62C203B4E781DF24DE1F757393DD34925413EF2504707249819D81F3815BE3BE4F26F66529CF58A691A40A2C005E47385BFF39701EE1C6A6ED80D584603E288E7D16D9C3BDD34D737409FF4D92A4213A1760EFA47B01F604260BF879E03BA5FD174852C36D98F1739DE50CCEA07B01F6D3C0AF877CE6B5849BA1062D790061554A4952813E0CDC45B893B5D786841B9BD631FC2120BD4E012E9F7C6A92A4AC9E48B764D26F39DF63E2BEFF39E6F71AF09254B1DD08017E23F0FC9E7D7B102EAE9E99E17B0D7849AAD81CA1277DCFC47B8B8037112EAA1ECF43FBE2D330E025A944FD2EB2AE055E01FC23F0BEF8FB3D8485C79E055C57DAEC2449990DEAA2F90361A54849D2941AB6168D24698A19F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F052FD6C059C0E5C07DC0C5C039C022CAE704ED250A70097573D09A9E6FE015807CCF7F9590B1C56DDD4A4C10C7869B8F7D23FD8933FEB81032B9A9F3490012F0DB61583CFDC7B7FEE0136AC669A9A26D6E0A57AF808E9FFFFE3C6C09105CE450D61C04BF5B0C798E35F56C82CD42806BC540F9B8C397EF34266A14631E0A57AB86BCCF1B716320B358A012FD5C3F7C61C7F4621B39032B28B461A6C33E07ED275D1FCA9A2396ACA78062FD5C36AE02D29C6AD07F62B782E6A08035EAA8F4F01AF06EE1BB0FF2E602F606569339252B24423A533077C95508E590D5C00BCB1D219692A79062FD5CF5AE0AAF8FAF3C00AE0FF55371D4D2B035EAAA76DE3F6FA4A67A1A966C04BF5D48ADB768573D09433E0A57A6AC56DBBC23968CA19F052FD6C003C2EBE6E57380F4D39035EAA9F47133A69FE02FCB1E2B9688A19F052FDB4E2B65DE11CD40006BC543FADB86D5738073580012FD54F2B6EDB15CE410D60C04BF5630FBC7261C04BF5D38ADB768573500318F052FDB4E2B65DE11CD40006BC542FF6C02B3706BC542FF6C02B3706BC542FADB86D5738073584012FD54B2B6EDB15CE410D61C04BF5D28ADB768573504318F052BDD803AFDC18F052BDB4E2B65DE11CD41006BC542FADB86D5738073584012FD5873DF0CA95012FD5873DF0CA95012FD5472B6EDB15CE410D62C04BF5D18ADB768573508318F0527DB4E2B65DE11CD42006BC541FF6C02B5706BC541FADB86D5738073588012FD5472B6EDB15CE410D62C04BF5600FBC7267C04BF5600FBC7267C04BF5D08ADB76857350C318F0523DB4E2B65DE11CD43006BC540FADB86D573807358C012FD5833DF0CA9D012FD5432B6EDB15CE410D63C04BF5D08ADB76857350C318F052F526E981DF083801F80170057019B03CAF8949699D025C5EF524A41A7A1C300FDC3DE6E79601D70067034BE37BAF07EE0376C96D76520A06BCD4DF9E8480BF6A8CCF3C857043D415841BA43A1600770117E4363B4D2D4B3452F55A71DB4E397E2BE07CE061C021C0DAC4BE79E05A602FBA67F59A5106BC54BD56DCB6538EFF3421E43F04FCA6CFFE7B0875FDE513CE4B53CE8097AA374E0FFC6B81FD086BD67C7CC09847C4EDE3279B96A69D012F55AF15B7ED11E3E68093E2EB4F01770C18B775DC3E62C07ECD08035EAA5E2B6EDB23C6BD9970563E4F685AE86729F0A8F8FACE4927A6E966C04BD51AA707FE6D71FB932163772374D280CB0ECF3C035EAA56DA75E09F0B6C1F5F9F3364DC7312AF6F986C6A9A761B563D0169C6B5E2B63D62DCAB13AF57025B0C18F7BCB8BD9FD023AF1966C04BD56AC56D7BC4B87D12AFBF9FE27B7F06DC9B613E6A104B3452B55A71DB1E32666BE0AFE2EB330835F67E3FC93F02DFEDF33D3B03A7C57DDF022E02CE030EC42C6824FF1F554D3247B84D7F0DB01AB80D58157FFE48E82AB98750BEF8604573EC95A6077EB7C4EB4B878CDB37F1FA0B3DFB5600FF029C0CBC107809B03721E4BF067C9170C157CAC4B56854868D0967BCBB030F105A0AE781130967B0DB009B5636BB87FA1E617E070D197324DDFF8EA70F19774D1CB3B2CFBE9F10FE88ECDCF3FE02C21FBE79C20D546A10CFE0D534F70237037FA07B467A25F03EE0EAF8FEB8AB3616A915B7ED21633A7DED7F017E3960CCAEC04EF1F547FBEC7F04A187FE193DEFCF0337C5D74F1D32074D212FB2AAA9F64EBC3EBFB2590C97B6077E4962CCBA01638E8EDB2B817FEDB3FFE584003FABE7FD39BAED973F1E32074D21035E4D950CF8345D275548DB037F7BDCDE3A60FF36744B3CC713CECA7B5D1D7F7A1D417868C8D9B8C470E318F06AAA4EC03F00FCB0CA890CD18ADBF68871ABE276F580FDC7008B80CF02E7A638EE1CA15C7328F04EE07F037F9FE2739A3206BC9A6807E0B1F1F515C09F2B9CCB30ADB86D8F187761DCF65BDF7D77E01DC0EF80B7A738E632C205E78D8027131EF57736A1B3480DE3455635D1349467207DC05F4FE840DBA1E7FD4D09ED907F009ECFE033FCA45F0207136AF2DB13AE4F5C0C7C9ED08194F4B784F28F34926D922ACB97E8B615BEA0E2B90CF329C21C8F4D31761FC205D64E2BE32309E17C25B0E384F33837CEE3D4C47B2F26FCE130E0958A01AFB2AC2204D65A60938AE7324C9A1EF8A49712FAD92F21DCA0742CA1F63EA9A3E23CD613D6B8792C700BE15F05522A06BCCAB013DDB3F761777DD6C1758479EE52F0710E27FCD13B61C0FE57D2FDBFD91E848BD2EF29784E2A81357835CDB4D4DFC759077E52FB114A2D870FD8DF8ADB75C001840BAEEF2F784E2A815D346A9A6909F8B43DF079B89070667EF480FD9DEB14DF030E21DCED3AE8862A4D11035E4DB33C6ED7D27F4D9671ED4C683FDC967066BB69FCEED308778CAECFF8BDADB86D4F36BD543E03EC45B8707A35DDA5091602C711161FFB0121D80F235C5C95C6620D5E457B12DD5AF2C5637EB65F7D7A05E1ECF70989F716D0BD5BF4CB645F81F1D5F13BBE95F1F3E35A4008F86FD0BD487B29F04D4259C6BABB2662C0AB68C95517DF3BC6E7961396CCED55E40A8CEF8E9FFF978C9FCFD387087FC85C2EB861BCC8AA26C95A7F3F02F85C9FF78B5C8131CD3AF0657831F01AE0555877D7043C83579116101EF0314F583278A3949FDB11B891FED7A37626ACD732D7F3FE1C705F3CD68A2C9365FC1EF822D8EFAEDC18F02AD232BAE599B4AB222E245C883D79CC631D138FF38D313F9754560FFC201B62DD5D3932E055A4B7F1E0A737A571621CFFB41463E7086BC1BC9B507F3F99EC77916E4078ACE03CDD877994CDBABB7265C0AB48E7F0E0BB3187594C78EAD13C612D975196016702FF06FC361EEB7999671A6E709AA7BA274BB9CE8C7267C02B6F4B08CF5F3D986E4D7C1ED88ED0AFBE49FC793861E5C41584876DAF4A8C7D4786E376D66EE9B702631A7BC6CF5F95E1B393B2EEAE4218F0CAD307E88674D69F3B802D331EBFDF0A8C6995DD03DF61DD7DC6D826A969753CA17366929FCD19FC18BC51BE13B76F21ACC0388E56DCB6331E3BABF7E33A3333C58097FA1BB50263A70F7E01E3AFC75E450FBCFDEE33C88097FA1B6705C6FF18F3BB3B9F6D8F3BA98C1E0B9C4E280DB9CECC0C31E0A5FE2E24DC00356A05C6D319BF1BA615B7ED712795C186C019846B05DF2BE1789A515E64D534D900F822A1DFFD3189F71702EF225C24FD2EE9EF984D7EBECC1E78FBDD6798CB054BFDAD2394345E445810EC51C003849B9BEE005E019C9DE17B1F4379EBC077EAEEAEEFAEC279062F95D703DFE977DFA7E0E3A8C6ACC14BE56AC56DBBC06374EAEE1F07CE2FF038AA394B3452B95A71FB74E013840E9C4BE336AF32CAFB09E5A4F7E5F47D9A529EC14BE5EAF4C07F07B816D895F0B0913F111E01F8B764BFBB16BA75F7C3B0EEAE1259839706AF03BF0DF006E02C603561198383186FC54AEBEEAA8C012FA55B077E3342D8AF047E4F7830F66623BEB7B3CECC3FE43047696C06BC665D961EF85D094B15DF0A1CCBE0D52B3F44784CA1FDEEAA8401AF5937C93AF04F25946DDAC0CB7BF6B9BEBB2A67C06BD6E5D103BF2FA1CC7336E162AC75770D64178D549E56DCB627F88E738127139E2C7565FCDD7E77F5651FBC549E56DCB627FC9EFB807712963DD80EFBDD3580012F9527CF75E05F0CEC85EBCC6808035E2A4F2B6EDB137E4F677DF7C3717D770D610D5E2A4F2B6EDB137C87EBCC2835035E2AC742429B244C16F0AE33A3D42CD148E5C8631D78D777D7580C78A91CADB86D67FCBC75778DCD128D548E56DCB6337CD6BABB3231E0A572B4E2B69DE1B3D6DD9589251AA91C597BE0ADBB2B33035E2A472B6EDB637CC6BABB266289462A472B6EDB29C75B77D7C40C78A978597AE0ADBB6B629668A4E28DDB036FDD5DB930E0A5E2B5E2B69D62AC7577E5C6128D54BC56DCB6478CB3EEAE5C19F052F15A71DB1E31CEBABB726589462A5E9A1E78EBEECA9D012F15AF15B7ED01FBADBBAB109668A4E2B5E2B6DD679F757715C680978A35AA07DEBABB0A6389462AD6B01E78EBEE2A94012F15AB15B7ED9EF7ADBBAB709668A462B5E2B69D78CFBABB4A61C04BC56AC56D3BF19E757795C2128D54ACDE1E78EBEE2A8D012F15AB15B76DACBBAB649668A462B5E2F606ACBBAB6406BC549C640FFCABB0EEAE9259A2918AD3E981BF0F3810EBEE2A9967F052715A71BB21E1C2AA757795CA80978AB3226E7F87757755C080978AF112E0DDF1F53F563911A90CA70097573D09A9044F04EE04E6818F543C17A91406BC66C116C0758470FF0EB041B5D3D12CB34423E56711F075607BE057C021D835A30A19F0527E4E059603B7032F03EEAA74369A7906BC948F63813702F7030711CA34D2CCB006AFA67A11E12ED579E04D15CF45AA8401AF26B26346C28057F3D831A35AB3062F6563C78C6ACF8097B2B16346B567C04BE3B36346EA610D5E4D60C78CD48701AF6967C78C348001AF6966C78CA68E357869343B6634950C7869343B6634950C7869B864C7CC81D83123F5650D5ED3C68E192925035ED36467BA1D33FF54F15CA4DA33E0352DEC9851235883971ECC8E19358601AFBCCD11BA4CD600AB81DB8055F1E78F84B2C73D848B961FAC688EC3D8312365608966766C0C6C0DEC4EF722E53C7022A1B6BD0DB06965B31BEC58C23CD712425E524A06FCEC69D10DF75F543B9591EC9851E358A25191F64EBC3EBFB2598CB633F015C2C5D48F00A7553B1D291F06BC8A940CF8EF57368BE1B600CE019602FF0EBCABDAE948D3C912CDECB98150F2B81F5852F15CFA5944F8C3330F5C4D0879A9313C83575176001E1B5F5F01FCB9C2B90C62C78C1ACD805751EA5E9E718D19359E01AFA22C4FBCAE5BC0BF08F85FF1F591C045D54D456A066BF0B36515DD9EF24D2A9E4B926BCC480530E067C74E74FBDF2FAD782E49AE31A39962894645A863FDDD356634730C781521CF80DF16F834F073E06642387F1DD863CCEFB163462A90259AD9710BA10CB286B02E4D562F027E04EC032C061600CB804BE2F7A7BDE3D43566A48219F0B3E14974EBEF178FF9D91312AF1F09FC1278449F711B01BF8BC778FB88EF748D19CD2C4B34CA5BD6F2CC72E06989DF57103A5EFE6F9FB16B12EFBF66C877BAC68C669A01AFBC650DF82380CF257E7F142198F71A30FED771BB0CD8B0CF7ED798914A6489A6F916101EF0310FDC4B28A5A4B12370230F0EEAC5C03B81E70CF8CC5BE3716EECB3CF3566A49219F0CDB78C6EFDFD82949F5908AC044E1EF358DF8CC7F9789F7DA7C57DB711D6C419652342FDFF078475732EC38BB1D2580CF8E67B1B0F7E7A531A27C6F14F1B3530E1D9C07A42B7CE963DFBC6ED9859065C039C4DF74CFFF5C07DC02E63CC499A69067CF39D4337E047F5A92F063E1AC75E39C63196123A68EE049ED1B36FDC8E99A7109E137B05E159B21D0B087DF269FF1522CD3C03BE9996109EBF7A30E1ACB713F0DB119EBBBA49FC7938E12ED21584876DAF4A8C7D47CA63CD119618B81E7872CFBE71D798D98A70E3D49F81BFEEB3FF27843F16D6EFA5140CF8E6F900DD90CEFA73070F2DB3F43347A8BB5F4E78687752963566BEC5F052D24571FFCB537C9734F30C7865B508F8B7F8D3BB32E54174C3386DC7CC6BE3F8BB81CD078CB9328E396AECD94A33C88057168B0817403F46FFFB36EE60BC8E99394289679EF0BFC9413ACB2DBC679CC94A75E28D4EAAB345C01984F6C577102E7E6E003C8C50F7FF02612983719ECAF466E0F10C0FF8A5841BAD20D4F5258DE019BCC6B1217016E9EAF8E3AC31D3A9D55F3664CC0B13DF7DE8B81397EAC23378D5D561C02B538CBB80F46BCC3C97D0C903A1A57390E4DDB337A4FC6E69A67906AF3C4CF254A64FD03D335F1EBFABDF4F679983B54CB6DCB134330C784D6AD235667ECB782D9CC3CA3852ED59A2D134493E95E9A58CF754A6AD81BF8AAFCF205CB0EDF7B34FE233DFEDF33D793D614A6A14CFE03589499FCAB43FDD33F323868C3B3931AEB7ED32AF274C498D63C02BAB1733F953998EA41BDC4F1F32EE9A386665CFFB793D614A6A24035E598CBBC6CC2027D1BD7B75D085D95DE9FE1138A067DF7F23FC91F9CA80CF76FE85F1B309E628E5CA1ABCEA2CCFA7322D89DB36B06EC098A3E3F64AE05F7BF64DFA8429A974FE0F5175B58870F1727BC285CC43181CCC69DC1EB7B70ED8BF0D615D1B80E30967E3499F2194627E34E0F38F89DB9B0967FA52E50C78D5D5241D33FDAC8ADBD503F61F43F8A3F259E0DC3EFBEF21AC5F3FC88BE376D80D5452635983575A9376CCF4B36DFCCE7E0F02DF9D70D6FD5B60B30CDF3DEC0953D24C30E095461E1D3383FC94872E3DB029E1CED81B080F2919D7B0274C4933C380D7287975CC0CB20FA18EBF5FFCFD91C0F9848BAA3B66F8BE614F9892668A01AF61926BCC5C4E782847115E4A781CDF258407851C4BA8BD8F6BD813A63A7600F6CCF0DDD2D431E03548EF1A33CF066E02DE52E5A48618F684A983093DF3E7132E101F57EED4A46A18F01AE434BA4F65EA2CE7FB04E046E0AD554D6A80414F98DA81F030F1FB09FF3B7F130F0D7FA9B10C78F533AC63E6898433F9BC2FB666D5E9CD7F07E1A6A78D0967EB1710DA38CF275CC895668E01AF5E693A667622B41FBEA4AC490D90F60953A7563541A94A06BC92C6E998D99350BE5956F4A486783DE9D6903FB2AA094A5532E0D591E5A94C6F00AEA5BBA64C593AB5F59BB1B62E0D64C00B267B2AD3E9C0970B9853AF39C2BA34E7037F023E093CB584E34A53CB8017F4EF98496B3161398197E53DA9C8B3752923035E79AC31F342C29DA39BE63427CFD6A51C18F0B32DCF3566BE027C64C2EFF06C5DCA91013FBBF25E63661B4289E769637ECEB375A9206506FC1CE1C6933584F5BF6F23AC07BE0AF823216CEE21DC75F8C192E634ABB274CCA4F1F6F87D6978B62E15ACEC33F88D81ADE9AEF5DDE9533E917046B90DF9D571D5DF241D33A33C8CF0077BD012BD9EAD4B25AAAA44D3A21BEEBFA8E0F8B36C928E99344E00CEE879CFB375A9025505FCEBE8067C116B8CABBF229ECAD46B2961C5C69DF16C5DAA545501FF79BA01BF6F05C79F45453E95296907E087846B2A9EAD4B15AA2AE06F2004CDFD947F9BFB2C2AFAA94CD6D6A51AAA22E077A07BF67E59C9C79E454575CC40B7B67E0B9EAD4BA96C58F5040AB677E2F5F72B9BC56C5844584E777BE057C02184E79F4E620E783921CC9F059C09BC80F00C55493552C519FC97E89EC1BFA0E463CF9A3C3B663C5B97A64C1501BF8A6E278701519CE398BC63C6DABA34C5CA0EF89DE89EBD5F5AE271674DB263E68D193EEFD9BAD4006507FCDFD10DF8F79578DC5992B563C6B375A961CA0EF8AFD20DF815397CDF42E09984676EDE92C3F74DBB2C1D339EAD4B0D5576C0DF42089F35847569B23A14F82F60257012F097F8BDB36C117011E9D698F16C5D9A016506FC93E89EBD5F3CE6674F18B1FF4F18F0693A663C5B972AD6D43EF8ACFDEFCB197F8DF159731CE162EAFDC0818447E875D8B72ECDA832CFE0CFA27B06BFD7189FFB1AF092116366F90C7E50C78C67EBD28C2B2BE017104A07F3C0BDC046293FB7237023A3FF5533AB01DFDB31636D5DAAB92696689E42E8F0807061744D8ACF2C044E2794141E28665A536D0BE01CC2C5D41F00EB098BB8DD40A8C7EF4FB8F82CA9469A18F059EAEFC7139EFCF4D6FCA733F5B606BE4EB8987A37E12CFD1AACAD4B4A28AB44730EDDFAFB1E23C62E063E1AC7A60DAB5929D13C1BF802E15F409D6508FE0793B59C4A2A5153CEE097102EEA3D8F072F2A7613E1B9AB9D405E442837B4807D80D7109ECD0AF0B932265A737384CE98A3815D13EF5F487842D3CFAA9894A4FA2BEA0CFE0374CFD8B3FEDC016C99F2784D3C83DF12F87BE0F774FF6F721FE16958CB2A9C97A42951D5139DF2D6A4807F26A1FBE51EBAC17E13F05EBA17AA25692403BE1E92ED8DC97FC55C12DF6F4AD94E52890CF86A59869154982604FCE309DD24F384F5E6A781651849859BD6807F26F06BC2DDB177027F046E8DAF6F8FFBF61EF8E96A58869154AA690DF86962194652250CF8E25886915429033E5F966124D586019F0FCB30926AC7809F8C651849B565C08FCF328CA4A960C0A7671946D25431E047B30C23692A19F0FD59869134F50CF8071BB70CB3117002E1917957009701CBCB98A8248D62C00759CA30CB088FC93B9BF05C5480D713FE20EC52E05C252995590EF849CA304F21AC7F7345FC9E8E05C05DC00505CC5792C6328B013F6937CC56C0CDC09F81BFEEB3FF27C00374CFEA25A912B314F07975C37C2B7EF6C401FB2F8AFB5F9E719E92948BA6077CDEDD30AF8D9FBF1BD87CC0982BE398A3C69FAE24E5A7A901DFAF0CB31EF802D96F4A9A03AE8FDF75CA9071B7C431EFC9781C49CA45D3027E5819E6E7C0FE137CF75174FF50B4068C591AF7CF03474F702C499A5813023E6D19E68DC0B72738CE75F17B2F1B32E68589E31F3AC1B1246962D31CF0E376C32C0156C7CF8DEBB989631C3F64DC4989717B64388E24E5661A037E926E98AF016FC970CC4F248EB53C1EA7DFCFF7E398B5C0C6198E2349B9999680CFAB1BE640421BE3B87EDB73DC513FC3CA3892548ABA077CDE4BF42E26B4388ED3F7BE75E2D85F1E32EEF98971270D18B390F02F905309DD36925498BA06FC33286E89DE7F070E1963FCFE89391C3164DCC989713BF4EC3B14F82F602521FCFF12C7495261EA14F0652DD1FB36E073638C3F323197A70F19774D1CB332C577FE09035E52C1EA10F0653F296967E08631C6773A63EE063618306657BA733F20C5771AF0920A5765C01759861966016125C86D538EEF945EAE1A32E64B71CC2FE2F78F62C04B33AAC94F0B9A232CC2F526C245C98E4B818F01DF20ACC458A44E97CB1E84A50746B93D6E6F1DB07F1B420909428FBCC12D69A02606FC96C0EB0817291F17DF5B039C097C04F865C9F3B98CF0508E2FA518BB2A6E570FD87F0CB008F82C70EEE45393A47C145DA2A9AA0C33CA4B800B538EDD9630EFEFF7D9B73BE15F1CBF05361BE3F896682415AE88805F44FD1F58BD2DDDD24B1A3FE5A117663725AC4F7303B0DD98C737E025152ECF802FBB1B66120B082597AD528EDF075807EC177F7F24E10FD895C08E198E6FC04B2A5C1E015FD732CC285712DA1BD37A29E1717C9710963B3896F0AF952C0C78A95EE60877AABF0BD8BEE2B9E4266BC04F43196694B319EF8ED63C19F052BD6C43F7790FF384C68FA90FFB71037E9ACA30A39C42F86FA982012FD54B27E0934F807B20BEBE965091D8A9AAC9659536E0A7B50C33CC098416CD2A18F052BDF4067C23C27E58C037A10C33CC9B81D32B38EEE309EBC5CF3325FF239166C0B0809FDAB0EF17F04D2AC30C7300F0CD928EF54CE0D7C06DC09D84A5126E8DAF6F8FFBF62E692E921E2A6DC0F7867DE764AD96619F0CF826966186D917F85ED59390540B5902BEF661FFCF84BB309B5A86196605F0C3AA2721A916260DF85161FF84CE81D2AC4698978F0147C563AE273C65E87AC2D2B84DB794D002F5B3AA2722A9721B017B16F4DDF3848C5D05EC5266C003FC281EFC1AC2026092346B16038717F0BD9D705F075C01BCA88063489286C8B344B396501159037C1B780DB0A4BCFF144952D2A4017F3F86BA24D552968037D425690AA40D78435D92A6CCB08037D425698AF506FCFD74EFE23F0B3818D8A4B2D94992324B06FC7DC0D709377B2EAE725292A4C96D00BC0F435D922449922449922449922449D3EE30E0C784551B7F49E888E95848E892398FF004B58F0173654F509234BE770117028F89BF1F4158A277FFF8FBC781BF89AFB700AE263CF0489254636F20847BF209740B098F1CBD8AF0BCE3E313FBFE0E584D789A9D24A9A636273CACE8917DF65D40F7D9D29BC5F79600F7C6F77F5FC6047B2DACE2A09234858E033E0BDCD667DF56730A9ECC000000F84944415471FB53C2193BC05F08CF62FE0D7064E1B3932465761EDDB3F3A44D0835F879E055A5CE489254A8FD09E17E0FB069C5739124E5E84C42C07FB5EA894892F293BC90FA8A8AE72249CAD17F2784FB7AE0E17DF66F017CABD41925D8452349A31D00DC025C4C58CFBDE390B8BD0AB8B3CFE78E022E2F766A92A449DC42F74C7D697C6F6BE0D6F8FE797D3EB325706D62BC24A9866E05EE06DE9E78EF54603FE03F813B8005897D8B0867FBAF2E6B8292A46C4E07FE83EED9F8EB802FC6D7BB016B8043E3EF8F26DCD9FACE12E72749CA6853E093C0AF082B48FE1F1EBC1ECD6E8433F6CBE2CF21BD5F2049922449922449929AE3FF03AE91E5267E73901C0000000049454E44AE426082>|Immagine3DOF.png>|376px|397px||>>
    <\math>
      L<rsub|1>,L<rsub|2>,L<rsub|3>:lunghezza dei link
    </math>

    <math|\<theta\><rsub|1>,\<theta\><rsub|2>,\<theta\><rsub|3>>: angoli
  </render-small-figure>>

  Definiamo <math|z<rsub|1>,z<rsub|2>,z<rsub|3>> i punti che si trovano alla
  fine del link:

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|z<rsub|1>>|<cell|=>|<cell|L<rsub|1>*e<rsup|i\<theta\><rsub|1>>>>|<row|<cell|z<rsub|2>>|<cell|=>|<cell|L<rsub|2>*e<rsup|i<around*|(|\<theta\><rsub|1>+\<theta\><rsub|2>|)>>>>|<row|<cell|z<rsub|3>>|<cell|=>|<cell|L<rsub|3>*e<rsup|i<around*|(|\<theta\><rsub|1>+\<theta\><rsub|2>+\<theta\><rsub|3>|)>>>>>>
  </eqnarray*>

  <\session|maxima|default>
    <\textput>
      <strong|Terzo metodo>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      z[1]:L[1]*exp(II*alpha[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      z[2]:L[2]*exp(II*(alpha[1]+alpha[2]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      z[3]:L[3]*exp((II*(alpha[1]+alpha[2]+alpha[3])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      z:z[1]+z[2]+z[3]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      zp:diff(z,alpha[1])*omega[1]+diff(z,alpha[2])*omega[2]+diff(z,alpha[3])*omega[3]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|1>*<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>+\<omega\><rsub|2>*<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|1>*<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>+\<omega\><rsub|2>*<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      zp2: <code*|expand>(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+2*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+2*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      zp2: factor(ratsimp(zp2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*<around*|(|L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2>*L<rsub|3>+\<omega\><rsub|1>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>|)>*<around*|(|\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|1>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|1>*L<rsub|2>+L<rsub|1>*\<omega\><rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      T:(1/2)*M*zp2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><frac|\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*<around*|(|L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2>*L<rsub|3>+\<omega\><rsub|1>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>|)>*<around*|(|\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|1>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*\<omega\><rsub|1>*L<rsub|2>+L<rsub|1>*\<omega\><rsub|1>|)>*M|2>>>
    </unfolded-io>

    <\textput>
      <strong|Secondo Metodo>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      defrule(atanalpha1,atan2(L[1]*sin(alpha[1]),L[1]*cos(alpha[1])),alpha[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><with|math-font-family|rm|atanalpha1>:<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      defrule(atanalpha12,atan2(L[2]*sin (alpha[1]+alpha[2]),L[2]*cos
      (alpha[1]+alpha[2])),alpha[1]+alpha[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><with|math-font-family|rm|atanalpha12>:<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|2>+\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      defrule(atanalpha123,atan2(L[3]*sin
      (alpha[1]+alpha[2]+alpha[3]),L[3]*cos
      (alpha[1]+alpha[2]+alpha[3])),alpha[1]+alpha[2]+alpha[3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><with|math-font-family|rm|atanalpha123>:<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      disprule(all)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t15>)
      >><with|math-font-family|rm|atanalpha1>:<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|1>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t16>)
      >><with|math-font-family|rm|atanalpha12>:<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|2>+\<alpha\><rsub|1>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t17>)
      >><with|math-font-family|rm|atanalpha123>:<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>>>

      \;

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><around*|[|<with|math-font-family|rm|%t15>,<with|math-font-family|rm|%t16>,<with|math-font-family|rm|%t17>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      assume(L[1]\<gtr\>0,L[2]\<gtr\>0,L[3]\<gtr\>0)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><around*|[|L<rsub|1>\<gtr\>0,L<rsub|2>\<gtr\>0,L<rsub|3>\<gtr\>0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      z[1]:trigreduce(polarform(L[1]*cos(alpha[1])+II*L[1]*sin(alpha[1])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>L<rsub|1>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      z[1]:apply1(z[1],atanalpha1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      z[2]:trigreduce(polarform(L[2]*cos(alpha[2]+alpha[1])+

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ II*L[2]*sin(alpha[1]+alpha[2])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >>L<rsub|2>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      z[2]:applyb1(z[2],atanalpha1,atanalpha12)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      z[3]:trigreduce(polarform(L[3]*cos(alpha[3]+alpha[2]+alpha[1])+

      \ \ \ \ \ \ \ \ \ \ \ \ \ II*L[3]*sin(alpha[3]+alpha[1]+alpha[2])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >>L<rsub|3>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      z[3]:apply1(z[3],atanalpha123)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      z:z[1]+z[2]+z[3]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      zp:trigreduce(diff(z,alpha[1])*omega[1]+diff(z,alpha[2])*omega[2]+diff(z,alpha[3])*omega[3])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >>\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*L<rsub|3>*\<omega\><rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|2>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*L<rsub|2>*\<omega\><rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>*\<omega\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|3>*\<omega\><rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|2>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|2>*\<omega\><rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>*\<omega\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      zp2:expand(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >>L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+2*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+2*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      zp2: factor(ratsimp(trigreduce(factor(trigreduce(demoivre(zp2))))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >>2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      T:(1/2)*M*zp2
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><frac|<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+2*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>|)>+2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>*M|2>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|input>
      \;
    </input>
  </session>

  <section|<strong|MATRICI DI ROTAZIONE <math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>,R<rsub|y><around*|(|\<theta\><rsub|y>|)>,R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>>

  \;

  Notazione per esprimere le coordinate di un punto P durante una rotazione
  nel piano:

  <\math>
    P\<assign\>coordinate del punto dopo la rotazione

    <rsup|<rsup|<rsup|<rsup|>>>><wide|P|^>\<assign\>coordinate del punto
    prima della rotazione

    R<rsub|k><around*|(|\<theta\><rsub|k>|)>\<assign\>matrice di rotazione
    rispetto all<rprime|'>asse k \<epsilon\><around*|{|x,y,z|}> di un angolo
    \<theta\><rsub|k>
  </math>

  <subsection|Matrice di rotazione attorno all'asse x
  <math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>>>

  Nella matrice di rotazione attorno all'asse x, i punti lungo l'asse x
  rimangono invariati mentre gli assi y e z rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione nel piano.

  <\session|maxima|default>
    <\textput>
      La prima riga e la prima colonna sono uguali ad
      <matrix|<tformat|<table|<row|<cell|1 0 0>>>>> e
      <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>
      poiché il piano che ruota è yz e la coordinata che rimane invariata è
      la x.

      Sussistono le seguenti relazioni relazioni:

      \;

      <\eqnarray*>
        <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|x=<wide|x|^>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|y>>|<row|<cell|z>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|y|^>>>|<row|<cell|<wide|z|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|y|^>>>|<row|<cell|<wide|z|^>>>>>>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|Da
        cui:>|<cell|>|<cell|>>>>
      </eqnarray*>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|x=<wide|x|^>,>>|<row|<cell|y=c*os<around*|(|\<theta\>|)>*<wide|y|^>-sin<around*|(|\<theta\>|)>*<wide|z|^>*>>|<row|<cell|z=sin<around*|(|\<theta\>|)>*<wide|y|^>+cos<around*|(|\<theta\>|)><wide|z|^>>>>>>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R[x](theta) := matrix([1,0,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta),
      cos(theta)]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R[x](theta[x]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      \;
    </input>

    <\input|Maxima] >
      \;
    </input>
  </session>

  <subsection|Matrice di rotazione attorno all'asse y
  <math|R<rsub|y><around*|(|\<theta\><rsub|y>|)>>>

  Nella matrice di rotazione attorno all'asse y, i punti lungo l'asse y
  rimangono invariati mentre gli assi z e y rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione del piano.

  La seconda riga e la seconda colonna sono rispettivamente uguali a
  <matrix|<tformat|<table|<row|<cell|0 1 0>>>>> e
  <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>
  poiché il piano che ruota è zx e la coordinata che rimane sempre inviariata
  è la y.

  Sussistono le seguenti relazioni:

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|y=<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|z>>|<row|<cell|x>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|z|^>>>|<row|<cell|<wide|x|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|z|^>>>|<row|<cell|<wide|x|^>>>>>>>|<cell|>>|<row|<cell|Dai
    cui:>|<cell|>|<cell|>>|<row|<cell|>|<cell|y=<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|z=cos<around*|(|\<theta\>|)>*<wide|z|^>-sin<around*|(|\<theta\>|)>*<wide|x|^>>|<cell|>>|<row|<cell|>|<cell|x=sin<around*|(|\<theta\>|)><wide|z|^>+cos<around*|(|\<theta\>|)>*<wide|x|^>>|<cell|>>>>
  </eqnarray*>

  <\session|maxima|default>
    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R[y](theta) := matrix([cos(theta),0,sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
      cos(theta)]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R[y](theta[y])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|input>
      \;
    </input>
  </session>

  <subsection|Matrice di rotazione attorno all'asse z
  <math|R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>

  Nella matrice di rotazione attorno all'asse z, i punto lungo l'asse z
  rimangono invariati mentre gli assi x e y rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione del piano.

  La terza riga e la seconda colonna sono rispettivamente uguali a
  <matrix|<tformat|<table|<row|<cell|0 0 1>>>>> e
  <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
  poiché il piano che ruota è xy e la coordinata che rimane sempre inviariata
  è la z.

  Sussistono le seguenti relazioni:

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|z=<wide|z|^>>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|x|^>>>|<row|<cell|<wide|y|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|x|^>>>|<row|<cell|<wide|y|^>>>>>>>|<cell|>>|<row|<cell|Dai
    cui:>|<cell|>|<cell|>>|<row|<cell|>|<cell|z=<wide|z|^>>|<cell|>>|<row|<cell|>|<cell|x=cos<around*|(|\<theta\>|)>*<wide|x|^>-sin<around*|(|\<theta\>|)>*<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|y=sin<around*|(|\<theta\>|)><wide|x|^>+cos<around*|(|\<theta\>|)>*<wide|y|^>>|<cell|>>>>
  </eqnarray*>

  <\session|maxima|default>
    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[z](theta) := matrix([cos(theta),-sin(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[z](theta[z])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      R[y](theta[y]).R[x](theta[x]).R[z](theta[z])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+cos
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>-cos
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>-sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R[x](theta[x]).R[y](theta[y]).R[z](theta[z])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-cos
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>-sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>-cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      R[z](theta[z]).R[y](theta[y]).R[x](theta[x])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>-cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>>|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>+cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*sin
      <around*|(|\<vartheta\><rsub|y>|)>*sin
      <around*|(|\<vartheta\><rsub|z>|)>-sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|z>|)>>>|<row|<cell|-sin
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>*cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>
  </session>

  <strong|<math|R<rsub|y><around*|(|\<theta\><rsub|y>|)>R<rsub|x><around*|(|\<theta\><rsub|x>|)>R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>

  <math|<matrix|<tformat|<table|<row|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>+cos <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>-cos <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
  <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>-sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|y>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>+sin
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>>>>>>>

  <strong|<math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>R<rsub|y><around*|(|\<theta\><rsub|y>|)>R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>

  <math|<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\><rsub|y>|)>*cos <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-cos
  <around*|(|\<vartheta\><rsub|y>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>+sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|z>|)>-sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>-cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>+sin <around*|(|\<vartheta\><rsub|x>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>>>>>>>

  <strong|<math|R<rsub|z><around*|(|\<theta\><rsub|z>|)>><math|R<rsub|y><around*|(|\<theta\><rsub|y>|)>R<rsub|x><around*|(|\<theta\><rsub|x>|)>>>

  <math|<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\><rsub|y>|)>*cos <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>-cos <around*|(|\<vartheta\><rsub|x>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>+cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>>|<row|<cell|cos
  <around*|(|\<vartheta\><rsub|y>|)>*sin <around*|(|\<vartheta\><rsub|z>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>+cos <around*|(|\<vartheta\><rsub|x>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*sin <around*|(|\<vartheta\><rsub|y>|)>*sin
  <around*|(|\<vartheta\><rsub|z>|)>-sin <around*|(|\<vartheta\><rsub|x>|)>*cos
  <around*|(|\<vartheta\><rsub|z>|)>>>|<row|<cell|-sin
  <around*|(|\<vartheta\><rsub|y>|)>>|<cell|sin
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>>|<cell|cos
  <around*|(|\<vartheta\><rsub|x>|)>*cos <around*|(|\<vartheta\><rsub|y>|)>>>>>>>

  <section|Matrice di rotazione asse-angolo>

  <\with|par-mode|left>
    Scrivere una procedura che prenda in input:

    - un asse <math|k\<epsilon\><around*|{|x,y,z|}>>;

    -un angolo \<theta\> simbolico o numerico;

    \ e in output si produca la corrispettiva matrice di rotazione.

    Nel caso in cui venga immesso un asske <math|k\<nin\><around*|{|x,y,z|}>
    >si mostri un messaggio di errore.
  </with>

  Al fine di definire una funzione che può essere richiamata utilizziamo
  l'istruzione block composta da due campi. Il primo, all'interno di [],
  viene utilizzato per salvare il risultato della procedura; il secondo si
  scrive l'implementazione effettiva della procedura che, in questo caso,
  sarà composta da una combinazione di if, elseif e else per verificare la
  corretta immissione dell'asse k.\ 

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      Raxis(k,theta):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if not symbolp(theta) and not
      subvarp(theta) and

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ nonscalarp(theta)then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return("Insert scalar input")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )else(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ theta:rational(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if not symbolp(theta) and not
      subvarp(theta) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if not numperp(theta) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ part: partition(theta,%pi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ pi:%pi,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if not member(pi,part) then
      (theta:rational(theta)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if k = x

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then res:matrix([1,0,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta), cos(theta)])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif k = y

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      res:matrix([cos(theta),0,sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
      cos(theta)])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif k = z

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      res:matrix([cos(theta),-sin(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Incorrect axis of
      rotation"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\textput>
      Immissione in input dei tre assi ed angolo numerico:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      Raxis(x, %pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Raxis(y,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      Raxis(z,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Immissione in input dei tre assi e angolo simbolico
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      Raxis(x,theta[x])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      Raxis(y,theta[y])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      Raxis(z,theta[z])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Caso di immissione di un asse non corretto
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Raxis(q,%pi/2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >Incorrect axis of rotation >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      Raxis(x,matrix([1,0]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >Insert scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      Raxis(x,-gamma)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|sin <around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      Raxis(x,sqrt(2))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|<sqrt|2>|)>>|<cell|-sin <around*|(|<sqrt|2>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|<sqrt|2>|)>>|<cell|cos <around*|(|<sqrt|2>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      Raxis(x,sqrt(2)*a)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|<sqrt|2>*a|)>>|<cell|-sin
      <around*|(|<sqrt|2>*a|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|<sqrt|2>*a|)>>|<cell|cos <around*|(|<sqrt|2>*a|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Raxis(x,%pi)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      Raxis(x,2.345)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|<frac|469|2<rsup|3>*5<rsup|2>>|)>>|<cell|-sin
      <around*|(|<frac|469|2<rsup|3>*5<rsup|2>>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|<frac|469|2<rsup|3>*5<rsup|2>>|)>>|<cell|cos
      <around*|(|<frac|469|2<rsup|3>*5<rsup|2>>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      Raxis(y,(a+b)^2*sqrt(2/%pi)*%i*h)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|cosh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>|<cell|0>|<cell|\<mathi\>*sinh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-\<mathi\>*sinh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>|<cell|0>|<cell|cosh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      Raxis(z,b*sqrt(a))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|<sqrt|a>*b|)>>|<cell|-sin
      <around*|(|<sqrt|a>*b|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|<sqrt|a>*b|)>>|<cell|cos
      <around*|(|<sqrt|a>*b|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      Raxis(x,b[1]*2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|2*b<rsub|1>|)>>|<cell|-sin
      <around*|(|2*b<rsub|1>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|2*b<rsub|1>|)>>|<cell|cos <around*|(|2*b<rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|input>
      \;
    </input>
  </session>

  <section|Matrice Antismmetrica>

  Dato un vettore <math|v\<in\><matrix|<tformat|<table|<row|<cell|v<rsub|x>>>|<row|<cell|v<rsub|y>>>|<row|<cell|v<rsub|z>>>>>>\<in\>\<bbb-R\><rsup|3>>
  matrice <math|S<around*|(|v|)>> è antisimmetrica se è nella forma:

  <\equation*>
    S<around*|(|v|)>=<matrix|<tformat|<table|<row|<cell|0>|<cell|-v<rsub|z>>|<cell|v<rsub|y>>>|<row|<cell|v<rsub|z>>|<cell|0>|<cell|-v<rsub|x>>>|<row|<cell|-v<rsub|y>>|<cell|v<rsub|x>>|<cell|0>>>>>
  </equation*>

  Dato un vettore genera la corrispondente matrice antisimmetrica. Inoltre,
  occorre controllare in maniera opportuna gli input in ingresso.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      skewMatrix(v):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeV:size(v),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(v) and
      sizeV[2]=1 and sizeV[1]\<gtr\>2 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m:sizeV[1],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:zeromatrix(m,m),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru m do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru m do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      S[i][j]:0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*v[m-remainder(i+j,m)][1],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))else return("Insert
      column axis or a non scalar input"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:S

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      test:matrix([1],[2],[3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-3>|<cell|2>>|<row|<cell|3>|<cell|0>|<cell|-1>>|<row|<cell|-2>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      skewMatrix(a)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >Insert column axis or a non scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      skewMatrix(transpose(test))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >Insert column axis or a non scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      skewMatrix(1/2*test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<frac|3|2>>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|0>|<cell|-<frac|1|2>>>|<row|<cell|-1>|<cell|<frac|1|2>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      test:matrix([a],[a[1]],[b+c*sqrt(2)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<sqrt|2>*c-b>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>|<cell|0>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      test:matrix([1],[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >Insert column axis or a non scalar input >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      \;
    </input>
  </session>

  <center|<strong|Vettore da matrice antisimmetrica>>

  Data una matrice qualsiasi, verificare se essa è antisimmetrica e ritornare
  l'effettivo valore.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      checkSkew(M):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeV:size(M),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(M) and
      sizeV[1]=sizeV[2] and sizeV[1]#1 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru sizeV[1] do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:i thru sizeV[1] do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j and M[i][j]#0
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:false

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif i#j and
      M[i][j]#-M[j][i] then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:false

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if res=false then
      \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if res=false then
      \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ), if res=false then
      \ return(res),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:true,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else return("Input non è una
      matrice")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      test:matrix([1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >Input non è una matrice >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      test:matrix([0, -0.14, 1], [0.14, 0, -(1/2)], [-1, (1/2), 0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-0.14>|<cell|1>>|<row|<cell|0.14>|<cell|0>|<cell|-<frac|1|2>>>|<row|<cell|-1>|<cell|<frac|1|2>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      test:matrix([0, -sqrt(2)*c-0.1, a[1]], [sqrt(2)*c+0.1, 0, -a], [-a[1],
      a, 0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<sqrt|2>*c-0.1>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+0.1>|<cell|0>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      test:test+ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|-<sqrt|2>*c-0.1>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+0.1>|<cell|1>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      test:zeromatrix(3,3)+matrix([0,1,0],[0,0,a],[0,0,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|a>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><math-bf|false>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|input>
      \;
    </input>
  </session>

  <section|Angoli di Eulero>

  Tramite la rappresentazione delle rotazioni nello spazio tramite angoli di
  Eulero è possibile ottenere un qualsiasi orientamento arbitrario. In
  particolare le rotazioni tramite angoli di Eulero utilizzano solamente due
  dei tre assi coordinati per ottenere la corrispondente matrice di rotazione
  sull'ultimo asse non utilizzato.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      Reulero(a,b,c,theta):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ axes:[x,y,z],

      \ \ \ \ \ \ \ \ \ \ \ if member(a,axes) and member(b,axes) and
      member(c,axes) and a=c

      \ \ \ \ \ \ \ \ \ \ \ and (symbolp(theta) or subvarp(theta))

      \ \ \ \ \ \ \ \ \ \ \ then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ firstConfig:Raxis(a,%pi/2).Raxis(b,theta).Raxis(c,-%pi/2),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ secondConfig:Raxis(a,-%pi/2).Raxis(b,-theta).Raxis(c,%pi/2),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[firstConfig,secondConfig])

      \ \ \ \ \ \ \ \ \ \ \ else (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Check Arguments"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return([]))

      \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      combination:[[x,z,y,z],[x,y,z,y],[y,z,x,z],[y,x,z,x],[z,y,x,y],[z,x,y,x]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><around*|[|<around*|[|x,z,y,z|]>,<around*|[|x,y,z,y|]>,<around*|[|y,z,x,z|]>,<around*|[|y,x,z,x|]>,<around*|[|z,y,x,y|]>,<around*|[|z,x,y,x|]>|]>>>
    </unfolded-io>

    <\textput>
      Verifica che è possibile esprimere <math|R<rsub|x><around*|(|\<theta\>|)>,R<rsub|y><around*|(|\<theta\>|)>,R<rsub|z><around*|(|\<theta\>|)>>
      secondo le terne di Eulero.
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      checkEulero(list):=block([res],res:[],

      \ \ for i:1 thru 6 do(

      \ \ Rfinal:Raxis(list[i][1],theta),

      \ \ [Reul,Reul2]:Reulero(list[i][2],list[i][3],list[i][4],theta),

      \ \ if Rfinal-Reul = zeromatrix(3,3) \ then (

      \ \ \ \ res:append(res,[[list[i][1],list[i][2],list[i][3],list[i][4],"+"]]))

      \ \ elseif Rfinal-Reul2 = zeromatrix(3,3) then (

      \ \ \ \ res:append(res,[[list[i][1],list[i][2],list[i][3],list[i][4],"-"]]))),

      \ \ return(res))$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      avaiabletriple:checkEulero(combination)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><around*|[|<around*|[|x,y,z,y,<text|+ >|]>,<around*|[|y,z,x,z,<text|+
      >|]>,<around*|[|z,x,y,x,<text|+ >|]>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      \;
    </input>
  </session>

  <new-page*>

  <section|<strong| Matrice di rotazione tramite trasformata di Laplace>>

  Scrivere una procedura che utilizzando la trasformata di Laplace calcoli la
  matrice di

  rotazione intorno all'asse rappresentata dal versore v, di un angolo
  \<theta\>

  <\equation*>
    R<rsub|v><around*|(|\<theta\>|)>=e<rsup|S<around*|(|v|)>*\<theta\>>
  </equation*>

  Per esempio, il calcolo della matrice di rotazione tramite la trasformata
  di Laplace occore seguire i seguenti passi:

  1) Calcolo della matrice <math|S<around*|(|k|)> con k
  \<in\><around*|{|e<rsub|x>,e<rsub|y>,e<rsub|z>|}> con
  e<rsub|x>,e<rsub|y>,e<rsub|z> versori dei rispettivi assi x,y,z>:

  <space|9em><math|S<around*|(|e<rsub|x>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0-1>>|<row|<cell|0<space|1em>1<space|1em>0>>>>>;S<around*|(|e<rsub|y>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>>>>;S<around*|(|e<rsub|z>|)>=<matrix|<tformat|<table|<row|<cell|0-1<space|1em>0>>|<row|<cell|1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>0>>>>>.>

  2)Calcolo della matrice <math|s*I-S<around*|(|k|)>> di Laplace con s
  variabile di Laplace e I matrice identità <math|I><math|\<in\>R<rsup|3x3>>:

  <space|5em><math|s*I-S<around*|(|e<rsub|x>|)>=><math|<matrix|<tformat|<table|<row|<cell|s<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>s-1>>|<row|<cell|0<space|1em>1<space|1em>s>>>>>>;<math|s*I-S<around*|(|e<rsub|y>|)>=><math|<matrix|<tformat|<table|<row|<cell|s<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>s<space|1em>0>>|<row|<cell|-1
  0<space|1em>s>>>>>;s*I-S<around*|(|e<rsub|z>|)>=><math|<matrix|<tformat|<table|<row|<cell|s-1<space|1em>0>>|<row|<cell|1<space|1em>s<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>s>>>>>>.

  3)Invertire le matrici appena ottenute:

  <space|13em><math|<around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|1|s>
  <space|1em>0<space|1em>0>>|<row|<cell|0<space|1em><frac|s|s<rsup|2>+1><space|1em><frac|1|s<rsup|2>+1>>>|<row|<cell|0<space|1em><frac|1|s<rsup|2>+1><space|1em><frac|s|s<rsup|2>+1>>>>>>>;\ 

  <space|13em><math|\<space\><around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|0>|<cell|<frac|s|s<rsup|3>+s>>>|<row|<cell|0>|<cell|<frac|s<rsup|2>+1|s<rsup|3>+s>>|<cell|0>>|<row|<cell|-<frac|s|s<rsup|3>+s>>|<cell|0>|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>>>>>>;\ 

  <space|13em><math|<around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|-<frac|s|s<rsup|3>+s>>|<cell|0>>|<row|<cell|<frac|s|s<rsup|3>+s>>|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|s<rsup|2>+1|s<rsup|3>+s>>>>>>>.

  4)Calcolare l'inversa di Laplace della matrici inverse
  <math|\<cal-L\><around*|{|<around*|(|s*I-S<around*|(|k|)>|)><rsup|-1>|}><rsup|-1>>:

  <math|R<rsub|x><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|-sin <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
  <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>;R<rsub|y><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
  <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
  <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
  <around*|(|\<vartheta\>|)>>>>>>;R<rsub|z><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|-sin <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
  <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>

  \;

  \;

  <math|R<rsub|z><around*|(|\<theta\>|)>=R<rsub|x><around*|(|<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<theta\>|)>*R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>>

  <\math>
    R<rsub|z><around*|(|\<theta\>|)>=R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|-\<theta\>|)>*R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>

    R<rsub|z><around*|(|-\<theta\>|)>=R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<theta\>|)>*R<rsub|x><around*|(|<frac|\<pi\>|2>|)>

    R<rsub|z><around*|(|-\<theta\>|)>=R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|-\<theta\>|)>*R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>
  </math>

  \;

  \;

  <\session|maxima|default>
    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      inverseLaplace(SI,norma):=block([res],\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a:M[i,j],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b:ilt(a,s,theta*norma),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC[i,j]:b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:MC

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|inverseLaplace><around*|(|<math-up|SI>,<math-up|norma>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,M:<math-up|SI>,<math-up|MC>:<math-up|SI>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|a:M<rsub|i,j>,b:<math-up|ilt><around*|(|a,s,\<vartheta\>*<math-up|norma>|)>,<math-up|MC><rsub|i,j>:b|)>,<math-up|res>:<math-up|MC>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotLaplace(k):=block([res,M,MC,SI,I,S],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [row,col]:size(k),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(k) and col=1
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ norm:sqrt(transpose(k).k),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:(1/norm)*skewMatrix(k*(1/norm)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(row),
      res:(trigreduce(expand(inverseLaplace(invert(s*I-S),norm)))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(rational(res)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else(return([])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>,M,<math-up|MC>,<math-up|SI>,I,S|]>,<around*|[|<math-up|row>,<math-up|col>|]>:<math-up|size><around*|(|k|)>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|k|)>\<wedge\><math-up|col>=1<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|norm>:<sqrt|<math-up|transpose><around*|(|k|)>\<cdot\>k>,S:<frac|1|<math-up|norm>>*<math-up|skewMatrix><around*|(|k*<around*|(|<frac|1|<math-up|norm>>|)>|)>,I:<math-up|ident><around*|(|<math-up|row>|)>,<math-up|res>:<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,<math-up|norm>|)>|)>|)>,<math-up|return><around*|(|<math-up|rational><around*|(|<math-up|res>|)>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|return><around*|(|<around*|[||]>|)>|)>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|x><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R(theta):=rotLaplace(matrix([1],[0],[0]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>R<around*|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R(theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|y><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[y](theta):=rotLaplace(matrix([0],[1],[0]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[y](theta);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    <\textput>
      Matrice di rotazione <math|R<rsub|z><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      R[z](theta):=rotLaplace(matrix([0],[0],[1]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      test:rotLaplace(matrix([1],[1],[0]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|<frac|cos
      <around*|(|\<vartheta\>|)>+1|2>>|<cell|-<frac|cos
      <around*|(|\<vartheta\>|)>-1|2>>|<cell|<frac|sin
      <around*|(|\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|-<frac|cos
      <around*|(|\<vartheta\>|)>-1|2>>|<cell|<frac|cos
      <around*|(|\<vartheta\>|)>+1|2>>|<cell|-<frac|sin
      <around*|(|\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|-<frac|sin
      <around*|(|\<vartheta\>|)>|<sqrt|2>>>|<cell|<frac|sin
      <around*|(|\<vartheta\>|)>|<sqrt|2>>>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      checkR(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      test:rotLaplace(matrix([f],[w],[k]))
    </input>

    <\unfolded-io>
      <math|<with|math-display|true|<text|Is
      >w<rsup|2>+k<rsup|2>+f<rsup|2><text|positive or zero? >>>

      \;
    <|unfolded-io>
      positive
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|<frac|cos
      <around*|(|\<vartheta\>|)>*w<rsup|2>+k<rsup|2>*cos
      <around*|(|\<vartheta\>|)>+f<rsup|2>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|-<frac|k*sin
      <around*|(|\<vartheta\>|)>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>+<around*|(|f*cos
      <around*|(|\<vartheta\>|)>-f|)>*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|sin
      <around*|(|\<vartheta\>|)>*w*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>-f*k*cos
      <around*|(|\<vartheta\>|)>+f*k|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>|<row|<cell|<frac|k*sin
      <around*|(|\<vartheta\>|)>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>+<around*|(|f-f*cos
      <around*|(|\<vartheta\>|)>|)>*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|w<rsup|2>+<around*|(|k<rsup|2>+f<rsup|2>|)>*cos
      <around*|(|\<vartheta\>|)>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|-<frac|f*sin
      <around*|(|\<vartheta\>|)>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>+<around*|(|k*cos
      <around*|(|\<vartheta\>|)>-k|)>*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>|<row|<cell|-<frac|sin
      <around*|(|\<vartheta\>|)>*w*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>+f*k*cos
      <around*|(|\<vartheta\>|)>-f*k|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|f*sin
      <around*|(|\<vartheta\>|)>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>+<around*|(|k-k*cos
      <around*|(|\<vartheta\>|)>|)>*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|cos
      <around*|(|\<vartheta\>|)>*w<rsup|2>+f<rsup|2>*cos
      <around*|(|\<vartheta\>|)>+k<rsup|2>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      checkR(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      test:rotLaplace(matrix([1.1],[sqrt(2)],[1]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|<frac|300*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+121|421>>|<cell|-<frac|10*<around*|(|421*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+11*<sqrt|2>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-11*<sqrt|2>*<sqrt|421>|)>|421<rsup|<frac|3|2>>>>|<cell|<frac|5*<sqrt|2>*<around*|(|842*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-11*<sqrt|2>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+11*<sqrt|2>*<sqrt|421>|)>|421<rsup|<frac|3|2>>>>>|<row|<cell|<frac|10*<around*|(|421*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-11*<sqrt|2>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+11*<sqrt|2>*<sqrt|421>|)>|421<rsup|<frac|3|2>>>>|<cell|<frac|221*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+200|421>>|<cell|-<frac|4631*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+25*2<rsup|<frac|5|2>>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-25*2<rsup|<frac|5|2>>*<sqrt|421>|421<rsup|<frac|3|2>>>>>|<row|<cell|-<frac|5*<sqrt|2>*<around*|(|842*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+11*<sqrt|2>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-11*<sqrt|2>*<sqrt|421>|)>|421<rsup|<frac|3|2>>>>|<cell|<frac|4631*sin
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>-25*2<rsup|<frac|5|2>>*<sqrt|421>*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+25*2<rsup|<frac|5|2>>*<sqrt|421>|421<rsup|<frac|3|2>>>>|<cell|<frac|321*cos
      <around*|(|<frac|114122083*\<vartheta\>|5561970*<sqrt|421>>|)>+100|421>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      checkR(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      exportfun()$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|input>
      \;
    </input>
  </session>

  <new-page*>

  <section|Formula di Rodriguez>

  \;

  La formula di Rodriguez consente di esprimere la rotazione di un sistema
  riferimento attorno ad un asse <math|v> attraverso rotazioni intorno ad
  <math|x,y,z> senza utilizzare il metodo di Laplace.\ 

  Quindi, si vuole passare da un sistema di riferimeno <math|R> ad un sistema
  di riferimento <math|<wide|R|^>> attraverso una matrice
  <math|R<rsub|v><around*|(|\<theta\>|)>>:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|R\<rightarrow\><wide|R|^>>|<cell|>>|<row|<cell|<around*|(|1|)>>|<cell|R<rsub|v><around*|(|\<theta\>|)>=R*R<rsub|x><around*|(|\<theta\>|)>*R<rsup|T>>|<cell|>>>>
  </eqnarray*>

  <\strong>
    <\em>
      N.B.:La notazione c,s equivale rispettivamente a cos(\<theta\>),
      sin(\<theta\>).
    </em>
  </strong>

  In particolare, come prima scelta poniamo l'asse x del sistema di
  riferimento R concidente all'asse di rotazione <math|v> ed i restanti assi
  (y,z) formerando un sistema di riferimento destro. A tale scopo, ruotiamo
  il sistema di riferimento <math|x> di \<theta\>:

  <\equation*>
    R<rsub|x><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>c<space|1em>-s>>|<row|<cell|0<space|1em>s<space|1em>c>>>>>=<with|color|orange|<matrix|<tformat|<table|<row|<cell|1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>>+<with|color|blue|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>>*<around*|(|c-1|)>+<with|color|red|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>-1>>|<row|<cell|0<space|1em>1<space|1em>0>>>>>*>s
  </equation*>

  Inoltre, notiamo che:

  <\enumerate-roman>
    <item>La matrice <math|<with|color|green|<with|color|orange|<matrix|<tformat|<table|<row|<cell|1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>>>>
    è la matrice identita <math|<with|color|orange|I>\<in\>\<bbb-R\><rsup|3x3>>

    <item>La matrice <math|<with|color|red|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>-1>>|<row|<cell|0<space|1em>1<space|1em>0>>>>>*>>
    è una matrice antrisimmetrica <math|<with|color|red|\<b-S\><around*|(|e<rsub|x>|)>>>:

    <\equation*>
      \<b-up-S\>=<matrix|<tformat|<table|<row|<cell|0<space|3em>0>>|<row|<cell|0<space|1em>S<rsub|2><around*|(|e<rsub|x>|)>>>>>>
      con S<rsub|2><around*|(|e<rsub|x>|)> matrice antisimmetrica
      \<in\>\<bbb-R\><rsup|2x2>
    </equation*>

    <item>La matrice <math|<with|color|blue|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>>>
    è una matrice antisimmetrica <with|color|blue|<math|\<b-up-S\><rsup|2><around*|(|e<rsub|x>|)><with|color|black|:>>>

    <\equation*>
      \<b-up-S\>=<matrix|<tformat|<table|<row|<cell|0<space|3em>0>>|<row|<cell|0<space|1em>S<rsup|2><rsub|2><around*|(|e<rsub|x>|)>>>>>>
      con S<rsup|2><rsub|2><around*|(|e<rsub|x>|)> matrice antisimmetrica
      \<in\>\<bbb-R\><rsup|2x2>
    </equation*>

    \;
  </enumerate-roman>

  Quindi possiamo scrivere:

  <\equation*>
    R<rsub|x><around*|(|\<theta\>|)>=I+S<rsup|2><around*|(|1-c|)>+S*s
  </equation*>

  Sostituendo nella (1):

  <\equation*>
    R<rsub|v><around*|(|\<theta\>|)>=R*R<rsub|x><around*|(|\<theta\>|)>*R<rsup|T>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s
  </equation*>

  si ottiene la formula di Rodriguez:

  <\equation*>
    R<rsub|v><around*|(|\<theta\>|)>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s.
  </equation*>

  <\session|maxima|default>
    <\output>
      \;
    </output>

    <\textput>
      Funzione per il calcolo della formual di Rodriguez:
      <math|R<rsub|v><around*|(|\<theta\>|)>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s>
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      normalize(vect):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ norm:
      sqrt(transpose(vect).vect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vect:vect/norm,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[vect, norm],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

      )$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|input>
      rodriguez(y):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vect:normalize(y),print(vect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(vect[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:I+S.S*(1-cos(vect[2]*theta))+S*sin(vect[2]*theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\textput>
      Verifica della matrice di rotazione rispetto all'asse x:
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      w:matrix([1],[0],[0])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|input>
      R[x](theta):=rodriguez(w)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[x](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,1|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Verifica della matrice di rotazione rispetto all'asse x:
    </textput>

    <\textput>
      \;
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      t:matrix([0],[1],[0])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|input>
      R[y](theta):=rodriguez(t)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R[y](theta);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>,1|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Verifica della matrice di rotazione rispetto all'asse z:
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      p:matrix([0],[0],[1])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      R[z](theta):=rodriguez(p)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,1|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      R[v](theta):=rodriguez(matrix([a],[b],[c]))$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      RR:R[v](theta)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|<frac|a|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>>|<row|<cell|<frac|b|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>>|<row|<cell|<frac|c|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>>>>>,<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>|]>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|<around*|(|-<frac|c<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|b<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>|)>*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>+1>|<cell|<frac|a*b*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|c*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>|<cell|<frac|b*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>+<frac|a*c*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>|<row|<cell|<frac|c*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>+<frac|a*b*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>>|<cell|<around*|(|-<frac|c<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|a<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>|)>*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>+1>|<cell|<frac|b*c*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|a*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>>|<row|<cell|<frac|a*c*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|b*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>>|<cell|<frac|a*sin
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>>+<frac|b*c*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>|c<rsup|2>+b<rsup|2>+a<rsup|2>>>|<cell|<around*|(|-<frac|b<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>-<frac|a<rsup|2>|c<rsup|2>+b<rsup|2>+a<rsup|2>>|)>*<around*|(|1-cos
      <around*|(|<sqrt|c<rsup|2>+b<rsup|2>+a<rsup|2>>*\<vartheta\>|)>|)>+1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      checkR(RR)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|input>
      v:matrix([1],[1],[0])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      RR:rodriguez(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><matrix|<tformat|<table|<row|<cell|1-<frac|1-cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>|2>>|<cell|<frac|1-cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>|2>>|<cell|<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|<frac|1-cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>|2>>|<cell|1-<frac|1-cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>|2>>|<cell|-<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|-<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>|<cell|<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>|<cell|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      checkR(RR)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      v:matrix([sqrt(2)],[a],[0])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      RR:rodriguez(v)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|<frac|<sqrt|2>|<sqrt|a<rsup|2>+2>>>>|<row|<cell|<frac|a|<sqrt|a<rsup|2>+2>>>>|<row|<cell|0>>>>>,<sqrt|a<rsup|2>+2>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><matrix|<tformat|<table|<row|<cell|1-<frac|a<rsup|2>*<around*|(|1-cos
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|)>|a<rsup|2>+2>>|<cell|<frac|<sqrt|2>*a*<around*|(|1-cos
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|)>|a<rsup|2>+2>>|<cell|<frac|a*sin
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|<sqrt|a<rsup|2>+2>>>>|<row|<cell|<frac|<sqrt|2>*a*<around*|(|1-cos
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|)>|a<rsup|2>+2>>|<cell|1-<frac|2*<around*|(|1-cos
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|)>|a<rsup|2>+2>>|<cell|-<frac|<sqrt|2>*sin
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|<sqrt|a<rsup|2>+2>>>>|<row|<cell|-<frac|a*sin
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|<sqrt|a<rsup|2>+2>>>|<cell|<frac|<sqrt|2>*sin
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|<sqrt|a<rsup|2>+2>>>|<cell|<around*|(|-<frac|a<rsup|2>|a<rsup|2>+2>-<frac|2|a<rsup|2>+2>|)>*<around*|(|1-cos
      <around*|(|<sqrt|a<rsup|2>+2>*\<vartheta\>|)>|)>+1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      checkR(RR)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|input>
      v:matrix([sqrt(2)],[0],[2.3])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      RR:rodriguez(v)
    <|unfolded-io>
      <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|0.3703703703703704*<sqrt|2>>>|<row|<cell|0>>|<row|<cell|0.8518518518518519>>>>>,2.7|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|1-0.7256515775034293*<around*|(|1-cos
      <around*|(|2.7*\<vartheta\>|)>|)>>|<cell|-0.8518518518518519*sin
      <around*|(|2.7*\<vartheta\>|)>>|<cell|0.3155006858710563*<sqrt|2>*<around*|(|1-cos
      <around*|(|2.7*\<vartheta\>|)>|)>>>|<row|<cell|0.8518518518518519*sin
      <around*|(|2.7*\<vartheta\>|)>>|<cell|1-1.0*<around*|(|1-cos
      <around*|(|2.7*\<vartheta\>|)>|)>>|<cell|-0.3703703703703704*<sqrt|2>*sin
      <around*|(|2.7*\<vartheta\>|)>>>|<row|<cell|0.3155006858710563*<sqrt|2>*<around*|(|1-cos
      <around*|(|2.7*\<vartheta\>|)>|)>>|<cell|0.3703703703703704*<sqrt|2>*sin
      <around*|(|2.7*\<vartheta\>|)>>|<cell|1-0.2743484224965707*<around*|(|1-cos
      <around*|(|2.7*\<vartheta\>|)>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      checkR(RR)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      v:matrix([sqrt(2)],[1.1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|<sqrt|2>>>|<row|<cell|1.1>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      RR(theta):=rodriguez(ratsimp(v))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|RR><around*|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|<math-up|ratsimp><around*|(|v|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      ww:RR(theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|1-<frac|121*<around*|(|1-cos
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>|321>>|<cell|<frac|55*2<rsup|<frac|3|2>>*<around*|(|1-cos
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>|321>>|<cell|<frac|11*sin
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>>|<row|<cell|<frac|55*2<rsup|<frac|3|2>>*<around*|(|1-cos
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>|321>>|<cell|1-<frac|200*<around*|(|1-cos
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>|321>>|<cell|-<frac|5*2<rsup|<frac|3|2>>*sin
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>>|<row|<cell|-<frac|11*sin
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>|<cell|cos
      <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      factor(expand(trigreduce(expand(determinant(ww)))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      describe(trigreduce)
    <|unfolded-io>
      \;

      \;

      \ -- Function: trigreduce

      \ \ \ \ \ \ \ \ \ \ trigreduce (\<expr\>, \<x\>)

      \ \ \ \ \ \ \ \ \ \ trigreduce (\<expr\>)

      \;

      \ \ \ \ \ Combines products and powers of trigonometric and hyperbolic
      sin's

      \ \ \ \ \ and cos's of \<x\> into those of multiples of \<x\>. \ It
      also tries to

      \ \ \ \ \ eliminate these functions when they occur in denominators.
      \ If \<x\>

      \ \ \ \ \ is omitted then all variables in \<expr\> are used.

      \;

      \ \ \ \ \ See also 'poissimp'.

      \;

      \ \ \ \ \ \ \ \ \ \ (%i1) trigreduce(-sin(x)^2+3*cos(x)^2+x);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ cos(2 x)
      \ \ \ \ \ cos(2 x) \ \ 1 \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ (%o1) \ \ \ \ \ \ \ \ \ -------- + 3 (-------- + -)
      + x - -

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ 2 \ \ \ \ \ \ \ 2

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|input>
      exa
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>45) >
    <|unfolded-io>
      ww1:trigsimp(radcan(ratexpand(ww)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
      >><matrix|<tformat|<table|<row|<cell|<frac|121*cos
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>+200|321>>|<cell|-<frac|<sqrt|2>*<around*|(|110*cos
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>-110|)>|321>>|<cell|<frac|15346187*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>|24995413>>>|<row|<cell|-<frac|<sqrt|2>*<around*|(|110*cos
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>-110|)>|321>>|<cell|<frac|200*cos
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>+121|321>>|<cell|-<frac|554697*2<rsup|<frac|7|2>>*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>|7950571>>>|<row|<cell|-<frac|15346187*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>|24995413>>|<cell|<frac|554697*2<rsup|<frac|7|2>>*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>|7950571>>|<cell|cos
      <around*|(|<frac|7950571*\<pi\>|13312728>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>54) >
    <|unfolded-io>
      trigsimp((bfloat(((((determinant(ww1))))))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o54>)
      >><frac|17179869185|17179869184>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>52) >
    <|unfolded-io>
      trigsimp(radcan(bfloat(ww.transpose(ww))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|-<frac|1|45812984491>>|<cell|0>>|<row|<cell|-<frac|1|45812984491>>|<cell|1>|<cell|<frac|1|137438953472>>>|<row|<cell|0>|<cell|<frac|1|137438953472>>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>53) >
    <|unfolded-io>
      bfloat(1/9007199254740992)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
      >>1.110223025<rsub|B>\<times\>10<rsup|-16>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      ratsimp(matrix([((5*2^((3/2)))/27)], [0], [(23/27)]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|<frac|5*2<rsup|<frac|3|2>>|27>>>|<row|<cell|0>>|<row|<cell|<frac|23|27>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      fpprec:15
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >>15>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>42) >
    <|unfolded-io>
      p:bfloat((1/10293942005418276))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
      >>9.71445146547012<rsub|B>\<times\>10<rsup|-17>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>47) >
    <|unfolded-io>
      pp:bfloat(1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
      >>1.0<rsub|B>\<times\>10<rsup|0>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>65) >
    <|unfolded-io>
      ratepsilon
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o65>)
      >>2.0\<times\>10<rsup|-15>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>67) >
    <|unfolded-io>
      bftorat
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o67>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      bftorat:true
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      ww2:rat(ratdisrep(ww))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|<frac|121*cos
      <around*|(|0.5972157622389639*\<pi\>|)>+200|321>>|<cell|-<frac|110*<sqrt|2>*cos
      <around*|(|0.5972157622389639*\<pi\>|)>-110*<sqrt|2>|321>>|<cell|<frac|15346187*sin
      <around*|(|0.5972157622389639*\<pi\>|)>|24995413>>>|<row|<cell|-<frac|110*<sqrt|2>*cos
      <around*|(|0.5972157622389639*\<pi\>|)>-110*<sqrt|2>|321>>|<cell|<frac|200*cos
      <around*|(|0.5972157622389639*\<pi\>|)>+121|321>>|<cell|-<frac|4437576*<sqrt|2>*sin
      <around*|(|0.5972157622389639*\<pi\>|)>|7950571>>>|<row|<cell|-<frac|15346187*sin
      <around*|(|0.5972157622389639*\<pi\>|)>|24995413>>|<cell|<frac|4437576*<sqrt|2>*sin
      <around*|(|0.5972157622389639*\<pi\>|)>|7950571>>|<cell|cos
      <around*|(|0.5972157622389639*\<pi\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      (trigsimp(ratexpand(determinant(ww2))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><frac|<around*|(|8*cos <around*|(|<frac|7950571*\<pi\>|13312728>|)>+7644150476883640|)>*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)><rsup|2>+12677169787358660303163454602609|12677169787358660303163454602609>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      radcan(trigsimp(expand(determinant(expand(ev(ww2,algebraic))))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><frac|<around*|(|8*cos <around*|(|<frac|7950571*\<pi\>|13312728>|)>+7644150476883640|)>*sin
      <around*|(|<frac|7950571*\<pi\>|13312728>|)><rsup|2>+12677169787358660303163454602609|12677169787358660303163454602609>>>
    </unfolded-io>

    <\folded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|folded-io>
      load(lapack)
    <|folded-io>
      \;

      WARNING: in ICAMAX in lines 20..71 : variable ZDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in DLALN2 in lines 20..722 : variable CI is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in DLALN2 in lines 20..722 : variable CR is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ILAENV in lines 20..465 : variable N3 is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLADIV in lines 20..35 : variable DBLE$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLADIV in lines 20..35 : variable DIMAG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAHQR in lines 20..725 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAHQR in lines 20..725 : variable DCONJG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZGEHD2 in lines 20..111 : variable DCONJG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZTREXC in lines 20..143 : variable DCONJG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR2 in lines 20..489 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR2 in lines 20..489 : variable DCONJG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR1 in lines 20..215 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR5 in lines 20..1884 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR4 in lines 20..628 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR3 in lines 20..521 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR3 in lines 20..521 : variable DCONJG$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLAQR0 in lines 20..653 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZGEBAL in lines 20..321 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZLATRS in lines 20..861 : variable ZDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZTREVC in lines 20..558 : variable CDUM is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in ZTREVC in lines 20..558 : variable DCMPLX$ is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      WARNING: in #:\|20 134 (LET* (# #) (DECLARE # # ...) ...)-2\| in lines
      20..134 :

      \ \ \ \ \ \ \ \ \ Function ZLANGE

      \ \ \ \ \ \ \ \ \ was already definedin lines 20..134

      WARNING: in $ZHEEV in lines 373..427 : variable INFO is not used.

      \ \ \ \ \ \ \ \ \ Misspelled or missing IGNORE declaration?

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >C:<Maxima><share><maxima><5>.44.0<share><lapack><lapack>.mac >>>
    </folded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      dgeev(ww)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><around*|[|<around*|[|1.000000000000001,0.9537230532665493*\<mathi\>-0.3006864441040361,-0.9537230532665493*\<mathi\>-0.3006864441040361|]>,<math-bf|false>,<math-bf|false>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      ww3:rectform(bfloat(ww))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|5.097100942785407<rsub|B>\<times\>10<rsup|-1>>|<cell|6.303405765144671<rsub|B>\<times\>10<rsup|-1>>|<cell|5.855479291996261<rsub|B>\<times\>10<rsup|-1>>>|<row|<cell|6.303405765144671<rsub|B>\<times\>10<rsup|-1>>|<cell|1.896034616174229<rsub|B>\<times\>10<rsup|-1>>|<cell|-7.528089299032654<rsub|B>\<times\>10<rsup|-1>>>|<row|<cell|-5.855479291996261<rsub|B>\<times\>10<rsup|-1>>|<cell|7.528089299032654<rsub|B>\<times\>10<rsup|-1>>|<cell|-3.006864441040365<rsub|B>\<times\>10<rsup|-1>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      (determinant(ww3))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>9.999999999999998<rsub|B>\<times\>10<rsup|-1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      (ww3.transpose(ww3))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|9.999999999999999<rsub|B>\<times\>10<rsup|-1>>|<cell|9.71445146547012<rsub|B>\<times\>10<rsup|-17>>|<cell|1.040834085586084<rsub|B>\<times\>10<rsup|-17>>>|<row|<cell|9.71445146547012<rsub|B>\<times\>10<rsup|-17>>|<cell|9.999999999999999<rsub|B>\<times\>10<rsup|-1>>|<cell|1.387778780781446<rsub|B>\<times\>10<rsup|-17>>>|<row|<cell|1.040834085586084<rsub|B>\<times\>10<rsup|-17>>|<cell|1.387778780781446<rsub|B>\<times\>10<rsup|-17>>|<cell|9.999999999999998<rsub|B>\<times\>10<rsup|-1>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      \;
    </input>
  </session>

  \;

  <new-page*>

  <section|Calcolo Asse e Angolo>

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
        La funzione sinRotation(skewMat, RRT2) prende in input una matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)> >e la matrice
        <math|<frac|R-R<rsup|T>|2>> ricavata dalla risoluzione del sistema
        della formula di Rodriguez e risolvere l'equazione (a).
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
      <|unfolded-io>
        sinRotation(skewMat,RRT2):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3
        do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a:skewMat[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if a# 0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
        (b:RRT2[i][j],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ value:expand(b/a),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(value))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),return(value)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><math-up|sinRotation><around*|(|<math-up|skewMat>,<with|math-font-family|rm|RRT2>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|a:<around*|(|<math-up|skewMat><rsub|i>|)><rsub|j>,<math-bf|if><space|0.27em>a\<neq\>0<space|0.27em><math-bf|then><space|0.27em><around*|(|b:<around*|(|<with|math-font-family|rm|RRT2><rsub|i>|)><rsub|j>,<math-up|value>:<math-up|expand><around*|(|<frac|b|a>|)>,<math-up|return><around*|(|<math-up|value>|)>|)>|)>,<math-up|return><around*|(|<math-up|value>|)>|)>>>
      </unfolded-io>

      <\textput>
        La funzione corRotation(x,y) prende in input una matrice
        antisimmetrica <math|S<rsub|v><around*|(|\<theta\>|)> >e la
        matrice<space|1em> <math|<frac|R+R<rsup|T>|2>-I> ricavata dalla
        soluzione del sistema della formula di Rodriguez e risolve
        l'equazione (b).
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>2) >
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

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t:expand((c-d)/c),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(t))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(t)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
        >><math-up|cosRotation><around*|(|x,y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|c:<around*|(|x<rsub|i>|)><rsub|j>,<math-bf|if><space|0.27em>c\<neq\>0<space|0.27em><math-bf|then><space|0.27em><around*|(|d:<around*|(|y<rsub|i>|)><rsub|j>,t:<math-up|expand><around*|(|<frac|c-d|c>|)>,<math-up|return><around*|(|t|)>|)>|)>,<math-up|return><around*|(|t|)>|)>>>
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
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|unfolded-io>
        degree(v,M,norm):=block([sinR,cosR,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(v),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRsin:trigsimp((M-transpose(M))*1/2),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRcos:trigsimp(((M+transpose(M))*1/2)-I),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sinR:sinRotation(S,RRsin),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ SS:(trigsimp(trigexpand(S.S))),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ cosR:cosRotation(SS,RRcos),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:atan2(sinR,cosR)/norm,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
        >><math-up|degree><around*|(|v,M,<math-up|norm>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|sinR>,<math-up|cosR>,<math-up|res>|]>,S:<math-up|skewMatrix><around*|(|v|)>,I:<math-up|ident><around*|(|3|)>,<math-up|RRsin>:<math-up|trigsimp><around*|(|<frac|<around*|(|M-<math-up|transpose><around*|(|M|)>|)>*1|2>|)>,<math-up|RRcos>:<math-up|trigsimp><around*|(|<frac|<around*|(|M+<math-up|transpose><around*|(|M|)>|)>*1|2>-I|)>,<math-up|sinR>:<math-up|sinRotation><around*|(|S,<math-up|RRsin>|)>,<math-up|SS>:<math-up|trigsimp><around*|(|<math-up|trigexpand><around*|(|S\<cdot\>S|)>|)>,<math-up|cosR>:<math-up|cosRotation><around*|(|<math-up|SS>,<math-up|RRcos>|)>,<math-up|res>:<frac|<math-up|atan2><around*|(|<math-up|sinR>,<math-up|cosR>|)>|<math-up|norm>>,<math-up|return><around*|(|<math-up|res>|)>|)>>>
      </unfolded-io>

      <\textput>
        La funzione axesDegree(R) prende in input una matrice R, simbolica e
        non, per restituire il corrispondente asse e angolo di rotazione,
        verificando se l'effettiva matrice in input sia di rotazione. In caso
        contrario, restituisce errore.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>11) >
      <|unfolded-io>
        \ axesDegree(R):=block([v,theta,res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dimR:size(R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R:rational(R),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if checkR(R) then (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ eigenVectors:rootscontract(trigsimp(expand(eigenvect(R)))),
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dimV:size(eigenVectors),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ v:zeromatrix(dimR[1],1),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru dimV[2]
        do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
        args(eigenVectors[i][1])[2]=1 then(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ v:rootscontract(radcan(trigsimp(expand(eigenVectors[i][2])))))

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),/*print(v),*/

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
        v=zeromatrix(dimR[1],1) then(return([])),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vNorm:rootscontract(radcan(trigsimp(trigexpand(normalize(v))))),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ /*print(vNorm),*/

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ deg:degree(vNorm[1],R,vNorm[2]),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[["Axe:",factor(trigreduce(trigsimp(expand(vNorm[1]*vNorm[2]))))],["Theta:",factor(trigreduce(trigsimp(expand(deg))))]],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:"R is not rotation
        matrix"

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
        >><math-up|axesDegree><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|v,\<vartheta\>,<math-up|res>|]>,<math-up|dimR>:<math-up|size><around*|(|R|)>,R:<math-up|rational><around*|(|R|)>,<math-bf|if><space|0.27em><math-up|checkR><around*|(|R|)><space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|eigenVectors>:<math-up|rootscontract><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<math-up|eigenvect><around*|(|R|)>|)>|)>|)>,<math-up|dimV>:<math-up|size><around*|(|<math-up|eigenVectors>|)>,v:<math-up|zeromatrix><around*|(|<math-up|dimR><rsub|1>,1|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|dimV><rsub|2><space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em><around*|(|<math-up|args><around*|(|<around*|(|<math-up|eigenVectors><rsub|i>|)><rsub|1>|)>|)><rsub|2>=1<space|0.27em><math-bf|then><space|0.27em>v:<math-up|rootscontract><around*|(|<math-up|radcan><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<around*|(|<math-up|eigenVectors><rsub|i>|)><rsub|2>|)>|)>|)>|)>,<math-bf|if><space|0.27em>v=<math-up|zeromatrix><around*|(|<math-up|dimR><rsub|1>,1|)><space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<around*|[||]>|)>,<math-up|vNorm>:<math-up|rootscontract><around*|(|<math-up|radcan><around*|(|<math-up|trigsimp><around*|(|<math-up|trigexpand><around*|(|<math-up|normalize><around*|(|v|)>|)>|)>|)>|)>,<math-up|deg>:<math-up|degree><around*|(|<math-up|vNorm><rsub|1>,R,<math-up|vNorm><rsub|2>|)>,<math-up|res>:<around*|[|<around*|[|<text|Axe:
        >,<math-up|factor><around*|(|<math-up|trigreduce><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<math-up|vNorm><rsub|1>*<math-up|vNorm><rsub|2>|)>|)>|)>|)>|]>,<around*|[|<text|Theta:
        >,<math-up|factor><around*|(|<math-up|trigreduce><around*|(|<math-up|trigsimp><around*|(|<math-up|expand><around*|(|<math-up|deg>|)>|)>|)>|)>|]>|]>,<math-up|return><around*|(|<math-up|res>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|R
        is not rotation matrix >|)>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione lungo l'asse x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>12) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,-1,0],[0,0,-1])

        \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>13) >
      <|unfolded-io>
        axd:axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|2<rsup|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,<frac|\<pi\>|4>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>14) >
      <|unfolded-io>
        axd
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|2<rsup|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,<frac|\<pi\>|4>|]>|]>>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno asse y:\ 
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>15) >
      <|unfolded-io>
        R:matrix([0,0,1],[0,1,0],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>16) >
      <|unfolded-io>
        axesDegree(RR);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\textput>
        Asse e angolo corrispettivi ad una rotazione attorno l'asse z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>17) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|2>>>>>|]>,<around*|[|<text|Theta:
        >,<frac|\<pi\>|4>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo x:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|unfolded-io>
        R[x](theta) := matrix([1,0,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta),
        cos(theta)]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
        >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>20) >
      <|unfolded-io>
        res:axesDegree(R[x](theta));
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-\<mathi\>*sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos <around*|(|\<vartheta\>|)>*sin
        <around*|(|\<vartheta\>|)>-sin <around*|(|\<vartheta\>|)>,0|)>>>

        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|\<mathi\>*sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos <around*|(|\<vartheta\>|)>*sin
        <around*|(|\<vartheta\>|)>-sin <around*|(|\<vartheta\>|)>,0|)>>>

        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos
        <around*|(|\<vartheta\>|)><rsup|2>-2*cos
        <around*|(|\<vartheta\>|)>+1,0|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>20) >
      <|unfolded-io>
        res
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,-<frac|<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo y:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>22) >
      <|unfolded-io>
        R[y](theta) := matrix([cos(theta),0,sin(theta)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
        cos(theta)]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
        >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
        <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
        <around*|(|\<vartheta\>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>23) >
      <|unfolded-io>
        axd:axesDegree(R[y](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-\<mathi\>*sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos <around*|(|\<vartheta\>|)>*sin
        <around*|(|\<vartheta\>|)>-sin <around*|(|\<vartheta\>|)>,0|)>>>

        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|\<mathi\>*sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos <around*|(|\<vartheta\>|)>*sin
        <around*|(|\<vartheta\>|)>-sin <around*|(|\<vartheta\>|)>,0|)>>>

        \;

        \ <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos
        <around*|(|\<vartheta\>|)><rsup|2>-2*cos
        <around*|(|\<vartheta\>|)>+1,0|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>23) >
      <|unfolded-io>
        axd
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,-<frac|<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>|]>|]>>>
      </unfolded-io>

      <\textput>
        Matrice simbolica lungo z:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>25) >
      <|unfolded-io>
        R[z](theta) := matrix([cos(theta),-sin(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
        >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|-sin
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
        <around*|(|\<vartheta\>|)>>|<cell|cos
        <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>26) >
      <|unfolded-io>
        axd:axesDegree(R[z](theta));
      <|unfolded-io>
        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-sin
        <around*|(|\<vartheta\>|)><rsup|2>-\<mathi\>*cos
        <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>+\<mathi\>*sin
        <around*|(|\<vartheta\>|)>,0|)>>>

        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-sin
        <around*|(|\<vartheta\>|)><rsup|2>+\<mathi\>*cos
        <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>-\<mathi\>*sin
        <around*|(|\<vartheta\>|)>,0|)>>>

        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|sin
        <around*|(|\<vartheta\>|)><rsup|2>+cos
        <around*|(|\<vartheta\>|)><rsup|2>-2*cos
        <around*|(|\<vartheta\>|)>+1,0|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>26) >
      <|unfolded-io>
        axd
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>>>>>|]>,<around*|[|<text|Theta:
        >,-<frac|<math-up|atan2><around*|(|sin <around*|(|\<vartheta\>|)>,cos
        <around*|(|\<vartheta\>|)>|)>|2*<around*|(|cos
        <around*|(|\<vartheta\>|)>-1|)>>|]>|]>>>
      </unfolded-io>

      <\textput>
        \;

        \;

        Matrice non di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>28) >
      <|unfolded-io>
        R:matrix([1,1,0],[0,1,1],[1,1,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>29) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\textput>
        Matrice razionale di rotazione:
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>30) >
      <|unfolded-io>
        R:matrix([1,0,0],[0,sqrt(3)/2,-1/2],[0,1/2,sqrt(3)/2]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
        >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<sqrt|3>|2>>|<cell|-<frac|1|2>>>|<row|<cell|0>|<cell|<frac|1|2>>|<cell|<frac|<sqrt|3>|2>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>31) >
      <|unfolded-io>
        axesDegree(R);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-<around*|(|<sqrt|3>-2|)>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,-<frac|\<pi\>|6*<around*|(|<sqrt|3>-2|)>>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>32) >
      <|unfolded-io>
        R:matrix([0,-1,0],[1,0,0],[0,0,1]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>33) >
      <|unfolded-io>
        axesDegree(R)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|2>>>>>|]>,<around*|[|<text|Theta:
        >,<frac|\<pi\>|4>|]>|]>>>
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
        <with|color|red|(<with|math-font-family|rm|%i>34) >
      <|unfolded-io>
        R[ab]:matrix([0,1,0],[0,0,-1],[-1,0,0]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
        >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>35) >
      <|unfolded-io>
        axesDegree(R[ab])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|-1>>>>>|]>,<around*|[|<text|Theta:
        >,<frac|2*\<pi\>|3<rsup|<frac|3|2>>>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>36) >
      <|unfolded-io>
        v:matrix([1],[1.1],[0])
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
        >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1.1>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>37) >
      <|unfolded-io>
        b(theta):=rodriguez(v)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
        >>b<around*|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|v|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>38) >
      <|unfolded-io>
        bb:b(%pi/3)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o38>)
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
        <with|color|red|(<with|math-font-family|rm|%i>39) >
      <|unfolded-io>
        axd:axesDegree(bb)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>40) >
      <|unfolded-io>
        axd
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
        >R is not rotation matrix >>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>41) >
      <|unfolded-io>
        v:matrix([sqrt(2)],[1.1],[0])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
        >><matrix|<tformat|<table|<row|<cell|<sqrt|2>>>|<row|<cell|1.1>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>42) >
      <|unfolded-io>
        b(theta):=rodriguez(ratsimp(v))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
        >>b<around*|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|<math-up|ratsimp><around*|(|v|)>|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>43) >
      <|unfolded-io>
        bb:b(0.1)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o43>)
        >><matrix|<tformat|<table|<row|<cell|1-<frac|121*<around*|(|1-cos
        <around*|(|0.01*<sqrt|321>|)>|)>|321>>|<cell|<frac|55*2<rsup|<frac|3|2>>*<around*|(|1-cos
        <around*|(|0.01*<sqrt|321>|)>|)>|321>>|<cell|<frac|11*sin
        <around*|(|0.01*<sqrt|321>|)>|<sqrt|321>>>>|<row|<cell|<frac|55*2<rsup|<frac|3|2>>*<around*|(|1-cos
        <around*|(|0.01*<sqrt|321>|)>|)>|321>>|<cell|1-<frac|200*<around*|(|1-cos
        <around*|(|0.01*<sqrt|321>|)>|)>|321>>|<cell|-<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|0.01*<sqrt|321>|)>|<sqrt|321>>>>|<row|<cell|-<frac|11*sin
        <around*|(|0.01*<sqrt|321>|)>|<sqrt|321>>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|0.01*<sqrt|321>|)>|<sqrt|321>>>|<cell|cos
        <around*|(|0.01*<sqrt|321>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>48) >
      <|unfolded-io>
        fullratsimp(factor(trigreduce(expand(axesDegree(fullratsimp(bb))))))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o48>)
        >><around*|[|<around*|[|<text|Axe:
        >,<matrix|<tformat|<table|<row|<cell|-<frac|400*cos
        <around*|(|<frac|<sqrt|321>|100>|)>-400|321>>>|<row|<cell|-<frac|<sqrt|2>*<around*|(|220*cos
        <around*|(|<frac|<sqrt|321>|100>|)>-220|)>|321>>>|<row|<cell|0>>>>>|]>,<around*|[|<text|Theta:
        >,-<frac|<sqrt|321>*arctan <around*|(|<frac|<sqrt|321>*tan
        <around*|(|<frac|<sqrt|3>*<sqrt|107>|100>|)>|<sqrt|3>*<sqrt|107>>|)>|<sqrt|2>*<around*|(|20*cos
        <around*|(|<frac|<sqrt|321>|100>|)>-20|)>>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>38) >
      <|unfolded-io>
        checkR(radcan(bb))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o38>)
        >><math-bf|true>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>40) >
      <|unfolded-io>
        radcan(bb)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
        >><matrix|<tformat|<table|<row|<cell|<frac|cos
        <around*|(|<frac|1|5*<sqrt|2>>|)>+1|2>>|<cell|-<frac|cos
        <around*|(|<frac|1|5*<sqrt|2>>|)>-1|2>>|<cell|<frac|sin
        <around*|(|<frac|1|5*<sqrt|2>>|)>|<sqrt|2>>>>|<row|<cell|-<frac|cos
        <around*|(|<frac|1|5*<sqrt|2>>|)>-1|2>>|<cell|<frac|cos
        <around*|(|<frac|1|5*<sqrt|2>>|)>+1|2>>|<cell|-<frac|sin
        <around*|(|<frac|1|5*<sqrt|2>>|)>|<sqrt|2>>>>|<row|<cell|-<frac|sin
        <around*|(|<frac|1|5*<sqrt|2>>|)>|<sqrt|2>>>|<cell|<frac|sin
        <around*|(|<frac|1|5*<sqrt|2>>|)>|<sqrt|2>>>|<cell|cos
        <around*|(|<frac|1|5*<sqrt|2>>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>45) >
      <|unfolded-io>
        checkR(radcan(bb))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
        >><math-bf|false>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>53) >
      <|unfolded-io>
        expand(rational(normalize(v)))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
        >><around*|[|<matrix|<tformat|<table|<row|<cell|<frac|51540503|54137301>>>|<row|<cell|<frac|36700935*<sqrt|2>|169620271>>>|<row|<cell|0>>>>>,<frac|41853259|36223353>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
      <|unfolded-io>
        v:matrix([sqrt(2)],[1.1],[0])
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><matrix|<tformat|<table|<row|<cell|<sqrt|2>>>|<row|<cell|1.1>>|<row|<cell|0>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        rr: rootscontract(gfactor(rodriguez(ratsimp(v))))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><matrix|<tformat|<table|<row|<cell|<frac|121*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+200|321>>|<cell|-<frac|55*2<rsup|<frac|3|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>>|<row|<cell|-<frac|55*2<rsup|<frac|3|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>|<cell|<frac|200*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+121|321>>|<cell|-<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>>|<row|<cell|-<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>|<cell|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|unfolded-io>
        dd:expand(trigreduce(expand(ratsimp(eigenvect(rr)))))
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-121*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)><rsup|2>-121*\<mathi\>*cos
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>+121*\<mathi\>*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>,0|)>>>

        \;

        \ <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|-121*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)><rsup|2>+121*\<mathi\>*cos
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>-121*\<mathi\>*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>,0|)>>>

        \;

        \ <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|200*sin
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)><rsup|2>+200*cos
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)><rsup|2>-400*cos
        <around*|(|<frac|<sqrt|3>*<sqrt|107>*\<vartheta\>|10>|)>+200,0|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>21) >
      <|unfolded-io>
        gfactor(dd)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
        >><around*|[|<around*|[|\<lambda\>=-\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>,<matrix|<tformat|<table|<row|<cell|-<frac|121*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-\<mathi\>|)>|642>>>|<row|<cell|<frac|55*<sqrt|2>*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-\<mathi\>|)>|321>>>|<row|<cell|-<frac|11*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+\<mathi\>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-1|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>|2*<sqrt|321>>>>>>>|]>,<around*|[|\<lambda\>=\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>,<matrix|<tformat|<table|<row|<cell|<frac|121*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|642>>>|<row|<cell|-<frac|55*<sqrt|2>*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|321>>>|<row|<cell|-<frac|11*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|2*<sqrt|321>>>>>>>|]>,<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|-<frac|400*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>>|<row|<cell|-<frac|55*2<rsup|<frac|5|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>>|<row|<cell|0>>>>>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>11) >
      <|unfolded-io>
        eigenvectors(rr)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
        >><around*|[|<around*|[|<around*|[|1,cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>,\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|]>,<around*|[|1,1,1|]>|]>,<around*|[|<around*|[|<around*|[|1,<frac|11|5*2<rsup|<frac|3|2>>>,0|]>|]>,<around*|[|<around*|[|1,-<frac|5*2<rsup|<frac|3|2>>|11>,-<frac|<sqrt|321>*\<mathi\>|11>|]>|]>,<around*|[|<around*|[|1,-<frac|5*2<rsup|<frac|3|2>>|11>,<frac|<sqrt|321>*\<mathi\>|11>|]>|]>|]>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>5) >
      <|unfolded-io>
        vv:(expand(trigsimp(expand(adjoint((lambda*ident(3)-rr))))))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
        >><matrix|<tformat|<table|<row|<cell|\<lambda\><rsup|2>-<frac|521*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|321>-<frac|121*\<lambda\>|321>+<frac|121*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>+<frac|200|321>>|<cell|-<frac|55*2<rsup|<frac|3|2>>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|321>+<frac|55*2<rsup|<frac|3|2>>*\<lambda\>|321>-<frac|55*2<rsup|<frac|3|2>>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>+<frac|55*2<rsup|<frac|3|2>>|321>>|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|<sqrt|321>>-<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>>|<row|<cell|-<frac|55*2<rsup|<frac|3|2>>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|321>+<frac|55*2<rsup|<frac|3|2>>*\<lambda\>|321>-<frac|55*2<rsup|<frac|3|2>>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>+<frac|55*2<rsup|<frac|3|2>>|321>>|<cell|\<lambda\><rsup|2>-<frac|442*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|321>-<frac|200*\<lambda\>|321>+<frac|200*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>+<frac|121|321>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>-<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|<sqrt|321>>>>|<row|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>-<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|<sqrt|321>>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>|<sqrt|321>>-<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>>|<cell|\<lambda\><rsup|2>-cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*\<lambda\>-\<lambda\>+cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>24) >
      <|unfolded-io>
        columnspace(factor(expand(trigreduce(expand(subst(lambda=1,vv))))))
      <|unfolded-io>
        <math|<with|math-display|true|<text|Proviso:
        ><math-up|notequal><around*|(|400-400*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>,0|)>>>

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
        >><math-up|span><around*|(|<matrix|<tformat|<table|<row|<cell|-<frac|400*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>>|<row|<cell|-<frac|55*2<rsup|<frac|5|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>>|<row|<cell|0>>>>>|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>10) >
      <|unfolded-io>
        trigreduce(trigsimp(polarform(dd[2][1])))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
        >>\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|0,\<lambda\>|)>>*<around*|\||\<lambda\>|\|>=\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>,cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>>>>
      </unfolded-io>

      <\folded-io>
        <with|color|red|(<with|math-font-family|rm|%i>34) >
      <|folded-io>
        cc:matrix([((121*%i*sin (((sqrt(321)*theta)/5)))/642)+((121*cos
        (((sqrt(321)*theta)/5)))/642)-((121*%i*sin
        (((sqrt(321)*theta)/10)))/321)-(121/642)], [-((55*sqrt(2)*%i*sin
        (((sqrt(321)*theta)/5)))/321)-((55*sqrt(2)*cos
        (((sqrt(321)*theta)/5)))/321)+((55*2^((3/2))*%i*sin
        (((sqrt(321)*theta)/10)))/321)+((55*sqrt(2))/321)], [-((11*sin
        (((sqrt(321)*theta)/5)))/(2*sqrt(321)))+((11*%i*cos
        (((sqrt(321)*theta)/5)))/(2*sqrt(321)))+((11*sin
        (((sqrt(321)*theta)/10)))/(sqrt(321)))-((11*%i)/(2*sqrt(321)))])
      <|folded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
        >><matrix|<tformat|<table|<row|<cell|<frac|121*\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|642>+<frac|121*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|642>-<frac|121*\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>-<frac|121|642>>>|<row|<cell|-<frac|55*<sqrt|2>*\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|321>-<frac|55*<sqrt|2>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|321>+<frac|55*2<rsup|<frac|3|2>>*\<mathi\>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|321>+<frac|55*<sqrt|2>|321>>>|<row|<cell|-<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|2*<sqrt|321>>+<frac|11*\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>|2*<sqrt|321>>+<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|<sqrt|321>>-<frac|11*\<mathi\>|2*<sqrt|321>>>>>>>>>
      </folded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>36) >
      <|unfolded-io>
        gfactor(cc)
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
        >><matrix|<tformat|<table|<row|<cell|<frac|121*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|642>>>|<row|<cell|-<frac|55*<sqrt|2>*\<mathi\>*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|321>>>|<row|<cell|-<frac|11*<around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|2*<sqrt|321>>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>44) >
      <|unfolded-io>
        (factor(vv,lambda^2))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o44>)
        >><matrix|<tformat|<table|<row|<cell|-<frac|<around*|(|521*\<lambda\>-121|)>*<around*|(|89559*\<lambda\>+14641*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+24200|)>|4699761>>|<cell|-<frac|55*2<rsup|<frac|3|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>*<around*|(|\<lambda\>+1|)>|321>>|<cell|<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*<around*|(|\<lambda\>-1|)>|<sqrt|321>>>>|<row|<cell|-<frac|55*2<rsup|<frac|3|2>>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>*<around*|(|\<lambda\>+1|)>|321>>|<cell|-<frac|<around*|(|221*\<lambda\>-100|)>*<around*|(|6741*\<lambda\>+20000*cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+12100|)>|3210000>>|<cell|-<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*<around*|(|\<lambda\>-1|)>|<sqrt|321>>>>|<row|<cell|-<frac|11*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*<around*|(|\<lambda\>-1|)>|<sqrt|321>>>|<cell|<frac|5*2<rsup|<frac|3|2>>*sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>*<around*|(|\<lambda\>-1|)>|<sqrt|321>>>|<cell|<around*|(|1-\<lambda\>|)>*<around*|(|cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-\<lambda\>|)>>>>>>>>
      </unfolded-io>

      <\folded-io>
        <with|color|red|(<with|math-font-family|rm|%i>42) >
      <|folded-io>
        describe(factor)
      <|folded-io>
        \;

        \;

        \ -- Function: factor

        \ \ \ \ \ \ \ \ \ \ factor (\<expr\>)

        \ \ \ \ \ \ \ \ \ \ factor (\<expr\>, \<p\>)

        \;

        \ \ \ \ \ Factors the expression \<expr\>, containing any number of
        variables

        \ \ \ \ \ or functions, into factors irreducible over the integers.
        \ 'factor

        \ \ \ \ \ (\<expr\>, \<p\>)' factors \<expr\> over the field of
        rationals with an

        \ \ \ \ \ element adjoined whose minimum polynomial is \<p\>.

        \;

        \ \ \ \ \ 'factor' uses 'ifactors' function for factoring integers.

        \;

        \ \ \ \ \ 'factorflag' if 'false' suppresses the factoring of integer
        factors

        \ \ \ \ \ of rational expressions.

        \;

        \ \ \ \ \ 'dontfactor' may be set to a list of variables with respect
        to

        \ \ \ \ \ which factoring is not to occur. \ (It is initially empty).

        \ \ \ \ \ Factoring also will not take place with respect to any
        variables

        \ \ \ \ \ which are less important (using the variable ordering
        assumed for

        \ \ \ \ \ CRE form) than those on the 'dontfactor' list.

        \;

        \ \ \ \ \ 'savefactors' if 'true' causes the factors of an expression
        which

        \ \ \ \ \ is a product of factors to be saved by certain functions in
        order

        \ \ \ \ \ to speed up later factorizations of expressions containing
        some of

        \ \ \ \ \ the same factors.

        \;

        \ \ \ \ \ 'berlefact' if 'false' then the Kronecker factoring
        algorithm will

        \ \ \ \ \ be used otherwise the Berlekamp algorithm, which is the
        default,

        \ \ \ \ \ will be used.

        \;

        \ \ \ \ \ 'intfaclim' if 'true' maxima will give up factorization of
        integers

        \ \ \ \ \ if no factor is found after trial divisions and Pollard's
        rho

        \ \ \ \ \ method. \ If set to 'false' (this is the case when the user
        calls

        \ \ \ \ \ 'factor' explicitly), complete factorization of the integer
        will be

        \ \ \ \ \ attempted. \ The user's setting of 'intfaclim' is used for
        internal

        \ \ \ \ \ calls to 'factor'. \ Thus, 'intfaclim' may be reset to
        prevent

        \ \ \ \ \ Maxima from taking an inordinately long time factoring
        large

        \ \ \ \ \ integers.

        \;

        \ \ \ \ \ 'factor_max_degree' if set to a positive integer 'n' will
        prevent

        \ \ \ \ \ certain polynomials from being factored if their degree in
        any

        \ \ \ \ \ variable exceeds 'n'.

        \;

        \ \ \ \ \ See also 'collectterms' and 'sqfr'

        \;

        \ \ \ \ \ Examples:

        \;

        \ \ \ \ \ \ \ \ \ \ (%i1) factor (2^63 - 1);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o1) \ \ \ \ \ \ \ \ \ \ \ \ \ 7 \ 73 127 337
        92737 649657

        \ \ \ \ \ \ \ \ \ \ (%i2) factor (-8*y - 4*x + z^2*(2*y + x));

        \ \ \ \ \ \ \ \ \ \ (%o2) \ \ \ \ \ \ \ \ \ \ \ \ \ \ (2 y + x) (z -
        2) (z + 2)

        \ \ \ \ \ \ \ \ \ \ (%i3) -1 - 2*x - x^2 + y^2 + 2*x*y^2 + x^2*y^2;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ 2
        \ \ \ \ \ \ \ 2 \ \ \ 2 \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o3) \ \ \ \ \ \ \ \ \ x \ y \ + 2 x y \ + y \ -
        x \ - 2 x - 1

        \ \ \ \ \ \ \ \ \ \ (%i4) block ([dontfactor: [x]], factor (%/36/(1 +
        2*y + y^2)));

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x \ +
        2 x + 1) (y - 1)

        \ \ \ \ \ \ \ \ \ \ (%o4) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ----------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 36
        (y + 1)

        \ \ \ \ \ \ \ \ \ \ (%i5) factor (1 + %e^(3*x));

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x
        \ \ \ \ \ \ \ \ 2 x \ \ \ \ x

        \ \ \ \ \ \ \ \ \ \ (%o5) \ \ \ \ \ \ \ \ \ \ \ \ \ (%e \ + 1) (%e
        \ \ \ - %e \ + 1)

        \ \ \ \ \ \ \ \ \ \ (%i6) factor (1 + x^4, a^2 - 2);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o6) \ \ \ \ \ \ \ \ \ \ \ \ (x \ - a x + 1) (x
        \ + a x + 1)

        \ \ \ \ \ \ \ \ \ \ (%i7) factor (-y^2*z^2 - x*z^2 + x^2*y^2 + x^3);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o7) \ \ \ \ \ \ \ \ \ \ \ \ \ - (y \ + x) (z -
        x) (z + x)

        \ \ \ \ \ \ \ \ \ \ (%i8) (2 + x)/(3 + x)/(b + x)/(c + x)^2;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x
        + 2

        \ \ \ \ \ \ \ \ \ \ (%o8) \ \ \ \ \ \ \ \ \ \ \ \ \ \ ------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x + 3)
        (x + b) (x + c)

        \ \ \ \ \ \ \ \ \ \ (%i9) ratsimp (%);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ (%o9) (x + 2)/(x \ + (2 c + b + 3) x

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ + (c \ + (2 b + 6) c + 3 b) x \ + ((b + 3) c
        \ + 6 b c) x + 3 b c )

        \ \ \ \ \ \ \ \ \ \ (%i10) partfrac (%, x);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ (%o10) - (c \ - 4 c - b + 6)/((c \ + (- 2 b - 6)
        c

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ + (b \ + 12 b + 9) c \ + (- 6 b \ - 18 b) c + 9
        b ) (x + c))

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c - 2

        \ \ \ \ \ \ \ \ \ \ \ - ---------------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ (c \ + (- b - 3) c + 3 b) (x + c)

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b
        - 2

        \ \ \ \ \ \ \ \ \ \ \ + -------------------------------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ 3 \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ ((b - 3) c \ + (6 b - 2 b ) c + b \ - 3 b )
        (x + b)

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1

        \ \ \ \ \ \ \ \ \ \ \ - ----------------------------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ ((b - 3) c \ + (18 - 6 b) c + 9 b - 27) (x
        + 3)

        \ \ \ \ \ \ \ \ \ \ (%i11) map ('factor, %);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c \ - 4 c - b + 6
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c - 2

        \ \ \ \ \ \ \ \ \ \ (%o11) - ------------------------- -
        ------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (c - 3) \ (c - b) \ (x + c)
        \ \ (c - 3) (c - b) (x + c)

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b -
        2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ +
        ------------------------ - ------------------------

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (b - 3) (c - b) \ (x
        + b) \ \ (b - 3) (c - 3) \ (x + 3)

        \ \ \ \ \ \ \ \ \ \ (%i12) ratsimp ((x^5 - 1)/(x - 1));

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
        \ \ \ 3 \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o12) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x \ + x \ +
        x \ + x + 1

        \ \ \ \ \ \ \ \ \ \ (%i13) subst (a, x, %);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
        \ \ \ 3 \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o13) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a \ + a \ +
        a \ + a + 1

        \ \ \ \ \ \ \ \ \ \ (%i14) factor (%th(2), %);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ 3 \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ (%o14) \ \ (x - a) (x - a ) (x - a ) (x + a \ + a
        \ + a + 1)

        \ \ \ \ \ \ \ \ \ \ (%i15) factor (1 + x^12);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
        \ \ \ \ \ \ \ 8 \ \ \ 4

        \ \ \ \ \ \ \ \ \ \ (%o15) \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x \ + 1) (x
        \ - x \ + 1)

        \ \ \ \ \ \ \ \ \ \ (%i16) factor (1 + x^99);

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
        \ \ \ \ \ \ \ \ \ \ \ 6 \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ (%o16) (x + 1) (x \ - x + 1) (x \ - x \ + 1)

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ 10 \ \ \ 9 \ \ \ 8 \ \ \ 7 \ \ \ 6 \ \ \ 5
        \ \ \ 4 \ \ \ 3 \ \ \ 2

        \ \ \ \ \ \ \ \ \ \ \ (x \ \ - x \ + x \ - x \ + x \ - x \ + x \ - x
        \ + x \ - x + 1)

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ 20 \ \ \ 19 \ \ \ 17 \ \ \ 16 \ \ \ 14
        \ \ \ 13 \ \ \ 11 \ \ \ 10 \ \ \ 9 \ \ \ 7 \ \ \ 6

        \ \ \ \ \ \ \ \ \ \ \ (x \ \ + x \ \ - x \ \ - x \ \ + x \ \ + x
        \ \ - x \ \ - x \ \ - x \ + x \ + x

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4 \ \ \ 3 \ \ \ \ \ \ \ \ \ \ \ 60
        \ \ \ 57 \ \ \ 51 \ \ \ 48 \ \ \ 42 \ \ \ 39 \ \ \ 33

        \ \ \ \ \ \ \ \ \ \ \ - x \ - x \ + x + 1) (x \ \ + x \ \ - x \ \ - x
        \ \ + x \ \ + x \ \ - x

        \;

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ 30 \ \ \ 27 \ \ \ 21 \ \ \ 18 \ \ \ 12
        \ \ \ 9 \ \ \ 3

        \ \ \ \ \ \ \ \ \ \ \ - x \ \ - x \ \ + x \ \ + x \ \ - x \ \ - x \ +
        x \ + 1)

        \;

        \ \ There are also some inexact matches for `factor'.

        \ \ Try `?? factor' to see them.

        \;

        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
        >><math-bf|true>>>
      </folded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>64) >
      <|unfolded-io>
        trigsimp(polarform(%i*sin (((sqrt(321)*theta)/10))+cos
        (((sqrt(321)*theta)/10))))
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o64>)
        >>\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|sin
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>,cos
        <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>|)>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>1) >
      <|unfolded-io>
        describe(proviso)
      <|unfolded-io>
        \ \ No exact match found for topic `proviso'.

        \ \ Try `?? proviso' (inexact match) instead.

        \;

        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
        >><math-bf|false>>>
      </unfolded-io>

      <\input>
        <with|color|red|(<with|math-font-family|rm|%i>2) >
      <|input>
        \;
      </input>
    </session>
  </session>

  <math|<matrix|<tformat|<table|<row|<cell|<frac|121*<around*|(|\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|642>>|<cell|-<frac|55*<sqrt|2>*<around*|(|\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>|<cell|<frac|11*<around*|(|sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|2*<sqrt|321>>>>|<row|<cell|-<frac|55*<sqrt|2>*<around*|(|\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>|<cell|<frac|100*<around*|(|\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|)>|321>>|<cell|-<frac|5*<sqrt|2>*<around*|(|sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|<sqrt|321>>>>|<row|<cell|-<frac|11*<around*|(|sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|2*<sqrt|321>>>|<cell|<frac|5*<sqrt|2>*<around*|(|sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-\<mathi\>*cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>+\<mathi\>|)>|<sqrt|321>>>|<cell|<frac|\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>+cos
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|5>|)>-2*\<mathi\>*sin
  <around*|(|<frac|<sqrt|321>*\<vartheta\>|10>|)>-1|2>>>>>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|5.1|12>>
    <associate|auto-11|<tuple|5.2|12>>
    <associate|auto-12|<tuple|5.3|13>>
    <associate|auto-13|<tuple|6|14>>
    <associate|auto-14|<tuple|7|17>>
    <associate|auto-15|<tuple|8|19>>
    <associate|auto-16|<tuple|9|21>>
    <associate|auto-17|<tuple|10|25>>
    <associate|auto-18|<tuple|11|31>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|2>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-5|<tuple|2|5>>
    <associate|auto-6|<tuple|3|6>>
    <associate|auto-7|<tuple|4|9>>
    <associate|auto-8|<tuple|4|9>>
    <associate|auto-9|<tuple|5|12>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|>
      <\tuple|normal>
        <\with|mode|<quote|math>>
          L<rsub|1>,L<rsub|2>,L<rsub|3>:lunghezza dei link
        </with>

        <with|mode|<quote|math>|\<theta\><rsub|1>,\<theta\><rsub|2>,\<theta\><rsub|3>>:
        angoli
      </tuple|<pageref|auto-8>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Prodotto
      Vettoriale> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Proprietà Anticommutativa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Proprietà Associativa
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Codice + Testing
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc><\with|par-mode|<quote|center>>
        <with|font-series|<quote|bold>|math-font-series|<quote|bold>|Matrice
        di rotazione>
      </with>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc><with|par-mode|<quote|center>|<with|font-series|<quote|bold>|math-font-series|<quote|bold>|Calcolo
      Autovettori>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|4<space|2spc><with|par-mode|<quote|center>|<with|font-series|<quote|bold>|math-font-series|<quote|bold>|Calcolo
      Energia Cinetica 3 Link Planare>>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|5<space|2spc><with|font-series|<quote|bold>|math-font-series|<quote|bold>|MATRICI
      DI ROTAZIONE <with|mode|<quote|math>|R<rsub|x><around*|(|\<theta\><rsub|x>|)>,R<rsub|y><around*|(|\<theta\><rsub|y>|)>,R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9><vspace|0.5fn>

      <with|par-left|<quote|1tab>|5.1<space|2spc>Matrice di rotazione attorno
      all'asse x <with|mode|<quote|math>|R<rsub|x><around*|(|\<theta\><rsub|x>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|5.2<space|2spc>Matrice di rotazione attorno
      all'asse y <with|mode|<quote|math>|R<rsub|y><around*|(|\<theta\><rsub|y>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|5.3<space|2spc>Matrice di rotazione attorno
      all'asse z <with|mode|<quote|math>|R<rsub|z><around*|(|\<theta\><rsub|z>|)>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|6<space|2spc>Matrice
      di rotazione asse-angolo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|7<space|2spc>Matrice
      Antismmetrica> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|8<space|2spc>Angoli
      di Eulero> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|9<space|2spc><with|font-series|<quote|bold>|math-font-series|<quote|bold>|
      Matrice di rotazione tramite trasformata di Laplace>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|10<space|2spc>Formula
      di Rodriguez> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|11<space|2spc>Calcolo
      Asse e Angolo> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>