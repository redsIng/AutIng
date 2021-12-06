<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\session|maxima|default>
    <\output>
      \;

      <\with|font-series|bold>
        <\with|par-mode|center>
          Dimostrazione proprietà commutativa matrici di rotazione
        </with>
      </with>

      Dimostrare tramite una procedura maxima che le matrici di rotazione non
      commutano.In generale:

      \;

      <space|13em><math|R<rsub|x><around*|(|\<alpha\>|)>*R<rsub|y><around*|(|\<beta\>|)>\<neq\>R<rsub|y><around*|(|\<beta\>|)>*R<rsub|x><around*|(|\<alpha\>|)>>

      Quindi, verifichiamo che:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ <math|R<rsub|x><around*|(|\<alpha\>|)>*R<rsub|y><around*|(|\<beta\>|)>-R<rsub|y><around*|(|\<beta\>|)>*R<rsub|x><around*|(|\<alpha\>|)>>\<equiv\>0
    </output>

    Se <math|R<rsub|x><around*|(|\<alpha\>|)>*R<rsub|y><around*|(|\<beta\>|)>-R<rsub|y><around*|(|\<beta\>|)>*R<rsub|x><around*|(|\<alpha\>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>0>>>>>>
    <math|\<rightarrow\>la matrici di rorazione non commutano
    \<rightarrow\>OK>\ 

    Altrimenti <math|\<rightarrow\>le matrici di rotazioni commutano
    \<rightarrow\>ERRORE>
  </session>

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      prop(alpha,beta):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R[y](beta) :=
      matrix([cos(beta),0,sin(beta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(beta),0, cos(beta)]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R[x](alpha) :=
      matrix([1,0,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(alpha),-sin(alpha)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(alpha),
      cos(alpha)]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:R[x](alpha).R[y](beta)-R[y](beta).R[x](alpha),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ nullMat:matrix([0,0,0],[0,0,0],[0,0,0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if z=nullMat

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then res:"Ok,le
      matrici non commutano"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Errore, la
      proprietà commutativa fra le matrici di rotazione non è valida"

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|prop><around*|(|\<alpha\>,\<beta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,R<rsub|y><around|(|\<beta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<beta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<beta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<beta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<beta\>|)>>>>>>,R<rsub|x><around|(|\<alpha\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>>>>>,z:R<rsub|x><around|(|\<alpha\>|)>\<cdot\>R<rsub|y><around|(|\<beta\>|)>-R<rsub|y><around|(|\<beta\>|)>\<cdot\>R<rsub|x><around|(|\<alpha\>|)>,<math-up|nullMat>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,<math-bf|if><space|0.27em>z=<math-up|nullMat><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<text|Ok,le
      matrici non commutano ><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Errore,
      la proprietà commutativa fra le matrici di rotazione non è valida
      >|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      prop(alpha,beta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >Ok,le matrici non commutano >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
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