<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <space|15em><strong|Formula di Rodriguez>

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

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\textput>
      Funzione per il calcolo della formual di Rodriguez:
      <math|R<rsub|v><around*|(|\<theta\>|)>=I+S<rsup|2><around*|(|v|)>*<around*|(|1-c|)>+S<around*|(|v|)>*s>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      normalize(vect,angle):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ norm:
      sqrt(transpose(vect).vect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vect:vect/norm,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[vect, norm*angle],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|normalize><around*|(|<math-up|vect>,<math-up|angle>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|norm>:<sqrt|<math-up|transpose><around*|(|<math-up|vect>|)>\<cdot\><math-up|vect>>,<math-up|vect>:<frac|<math-up|vect>|<math-up|norm>>,<math-up|res>:<around*|[|<math-up|vect>,<math-up|norm>*<math-up|angle>|]>,<math-up|return><around*|(|<math-up|res>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rodriguez(y):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ val:normalize(y,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(val[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:I+S.S*(1-cos(val[2]))+S*sin(val[2])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rodriguez><around*|(|y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|val>:<math-up|normalize><around*|(|y,\<vartheta\>|)>,I:<math-up|ident><around*|(|3|)>,S:<math-up|skewMatrix><around*|(|<math-up|val><rsub|1>|)>,<math-up|res>:I+S\<cdot\>S*<around*|(|1-cos
      <around*|(|<math-up|val><rsub|2>|)>|)>+S*sin
      <around*|(|<math-up|val><rsub|2>|)>|)>>>
    </unfolded-io>

    <\textput>
      Verifica della matrice di rotazione rispetto all'asse x:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      w:matrix([1],[0],[0]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      rodriguez(w);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[x](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
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
      t:matrix([0],[1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>>>
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
      p:matrix([0],[0],[1]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>>>
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
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      R[v](theta):=rodriguez(matrix([a],[b],[c]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>R<rsub|v><around|(|\<vartheta\>|)>\<assign\><math-up|rodriguez><around*|(|<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      R[v](theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
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
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      v:matrix([1],[1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      rodriguez(v)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
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

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
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