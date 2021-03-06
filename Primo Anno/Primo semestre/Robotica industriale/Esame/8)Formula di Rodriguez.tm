<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|15em><strong|Formula di Rodriguez>

  La formula di Rodriguez consente di esprimere la rotazione di un sistema
  riferimento attorno ad un asse <math|v> attraverso rotazioni intorno ad
  <math|x,y,z> senza utilizzare il metodo di Laplace o il calcolo degli
  autovalori e autovettori.\ 

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
    ? la matrice identita <math|<with|color|orange|I>\<in\>\<bbb-R\><rsup|3x3>>

    <item>La matrice <math|<with|color|red|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>-1>>|<row|<cell|0<space|1em>1<space|1em>0>>>>>*>>
    ? una matrice antrisimmetrica <math|<with|color|red|\<b-S\><around*|(|<frac|\<pi\>|2>|)>>>:

    <\equation*>
      \<b-up-S\>=<matrix|<tformat|<table|<row|<cell|0<space|3em>0>>|<row|<cell|0<space|1em>S<rsub|2><around*|(|<frac|\<pi\>|2>|)>>>>>>
      con S<rsub|2><around*|(|<frac|\<pi\>|2>|)> matrice antisimmetrica
      \<in\>\<bbb-R\><rsup|2x2>
    </equation*>

    <item>La matrice <math|<with|color|blue|<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>1<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>1>>>>>>>
    ? una matrice antisimmetrica <with|color|blue|<math|\<b-up-S\><rsup|2><around*|(|<frac|\<pi\>|2>|)><with|color|black|:>>>

    <\equation*>
      \<b-up-S\>=<matrix|<tformat|<table|<row|<cell|0<space|3em>0>>|<row|<cell|0<space|1em>S<rsup|2><rsub|2><around*|(|<frac|\<pi\>|2>|)>>>>>>
      con S<rsup|2><rsub|2><around*|(|<frac|\<pi\>|2>|)> matrice
      antisimmetrica \<in\>\<bbb-R\><rsup|2x2>
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

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\textput>
      Funzione per la costruzione di una matrice antisimmetrica
      <math|S<rsub|v><around*|(|\<theta\>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*x[3-remainder(i+j,3)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:S

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|skewMatrix><around*|(|x|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*x<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:S|)>>>
    </unfolded-io>

    <\textput>
      Funzione per il calcolo della formual di Rodriguez:
      <math|R<rsub|v><around*|(|\<theta\>|)>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rodriguez(y):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(y),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:I+S.S*(1-cos(theta))+S*sin(theta)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rodriguez><around*|(|y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,I:<math-up|ident><around*|(|3|)>,S:<math-up|skewMatrix><around*|(|y|)>,<math-up|res>:I+S\<cdot\>S*<around*|(|1-cos
      <around*|(|\<vartheta\>|)>|)>+S*sin <around*|(|\<vartheta\>|)>|)>>>
    </unfolded-io>

    <\textput>
      Verifica della matrice di rotazione rispetto all'asse x:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      w:[1,0,0];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><around*|[|1,0,0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R[x](theta):=rodriguez(w);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|w|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[x](theta);
    <|unfolded-io>
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

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      t:[0,1,0]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|0,1,0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      R[y](theta):=rodriguez(t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|t|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R[y](theta);
    <|unfolded-io>
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

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      p:[0,0,1];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><around*|[|0,0,1|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      R[z](theta):=rodriguez(p);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|p|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
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