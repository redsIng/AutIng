<TeXmacs|2.1.1>

<style|<tuple|article|italian|maxima>>

<\body>
  \;

  <with|font|TeX Gyre Cursor|<\session|maxima|default>
    <\textput>
      <\with|par-mode|center>
        <with|font-series|bold|Assignment 7>
      </with>

      Considera il modello del pendolo inverso su un cart descritto dalle
      equazioni:

      <\with|par-mode|center>
        <math|M*<wide|s|\<ddot\>>+F*<wide|s|\<dot\>>-\<mu\>=d<rsub|1><space|1em><wide|\<phi\>|\<ddot\>>=<frac|g|L>*sin<around*|(|\<phi\>|)>+<frac|1|L>*<wide|s|\<ddot\>>*cos<around*|(|\<phi\>|)>=0>
      </with>

      con <math|M=1 kg,L=1 m,F=1 kg*s<rsup|-1>,g=9.81*m*s<rsup|-1>>.

      <with|font-series|bold|A1)>Calcolare <with|prog-scripts|maxima|>tutte i
      punti di equilibrio del sistema per
      <math|\<mu\>=d<rsub|1><around*|(|t|)>=0,>

      <with|prog-scripts|maxima|>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      dx[1]:x[2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>x<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      dx[2]:(1/M)*(-F*x[2]+u[1]+u[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><frac|-x<rsub|2>*F+u<rsub|2>+u<rsub|1>|M>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      dx[3]:x[4]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>x<rsub|4>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      dx[4]:expand((1/L)*(g*sin(x[3])-dx[2]*cos(x[3])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><frac|sin <around*|(|x<rsub|3>|)>*g|L>+<frac|x<rsub|2>*cos
      <around*|(|x<rsub|3>|)>*F|L*M>-<frac|u<rsub|2>*cos
      <around*|(|x<rsub|3>|)>|L*M>-<frac|u<rsub|1>*cos
      <around*|(|x<rsub|3>|)>|L*M>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A2)> Scrivere le equazioni del sistema
      linearizzato attorno al punto di equilibro
      <math|\<phi\>=s=<wide|\<phi\>|\<dot\>>=0>
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|input>
      diffx(dx):=block(<next-line>[res:zeromatrix(4,4)],<next-line>for i:1
      thru 4 do (<next-line>for j:1 thru 4 do
      (<next-line>res[i,j]:diff(dx[i],x[j])<next-line>)<next-line>),<next-line>return(res)<next-line>)$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      diffu(dx):=block(<next-line>[res:zeromatrix(4,2)],<next-line>for i:1
      thru 4 do (<next-line>for j:1 thru 2 do
      (<next-line>res[i,j]:diff(dx[i],u[j])<next-line>)<next-line>),<next-line>return(res)<next-line>)$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|input>
      dx:[dx[1],dx[2],dx[3],dx[4]]$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      nablax:diffx(dx)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|<frac|cos
      <around*|(|x<rsub|3>|)>*F|L*M>>|<cell|<frac|cos
      <around*|(|x<rsub|3>|)>*g|L>-<frac|x<rsub|2>*sin
      <around*|(|x<rsub|3>|)>*F|L*M>+<frac|u<rsub|2>*sin
      <around*|(|x<rsub|3>|)>|L*M>+<frac|u<rsub|1>*sin
      <around*|(|x<rsub|3>|)>|L*M>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      nablau:diffu(dx)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|<frac|1|M>>|<cell|<frac|1|M>>>|<row|<cell|0>|<cell|0>>|<row|<cell|-<frac|cos
      <around*|(|x<rsub|3>|)>|L*M>>|<cell|-<frac|cos
      <around*|(|x<rsub|3>|)>|L*M>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      sub:[x[1]=0,x[2]=0,x[3]=0,x[4]=0,u[1]=0,u[2]=0]$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      A:subst(sub,nablax)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      B:subst(sub,nablau)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>>|<row|<cell|<frac|1|M>>|<cell|<frac|1|M>>>|<row|<cell|0>|<cell|0>>|<row|<cell|-<frac|1|L*M>>|<cell|-<frac|1|L*M>>>>>>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A3)> Mostra che la coppia
      <math|<around*|(|A,B|)>> è controllabile
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      P:addcol(col(B,2),matrix([0],[0],[0],[0]),matrix([0],[0],[0],[0]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      B:col(B,1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|<frac|1|M>>>|<row|<cell|0>>|<row|<cell|-<frac|1|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      C:matrix([1,0,0,0],[0,0,1,0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A4)>Mostra che la coppia
      <math|<around*|(|A,B|)>> è controllabile.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      A1B:A.B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><matrix|<tformat|<table|<row|<cell|<frac|1|M>>>|<row|<cell|-<frac|F|M<rsup|2>>>>|<row|<cell|-<frac|1|L*M>>>|<row|<cell|<frac|F|L*M<rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      A2B:A.A1B
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|-<frac|F|M<rsup|2>>>>|<row|<cell|<frac|F<rsup|2>|M<rsup|3>>>>|<row|<cell|<frac|F|L*M<rsup|2>>>>|<row|<cell|-<frac|g|L<rsup|2>*M>-<frac|F<rsup|2>|L*M<rsup|3>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      A3B:A.A2B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><matrix|<tformat|<table|<row|<cell|<frac|F<rsup|2>|M<rsup|3>>>>|<row|<cell|-<frac|F<rsup|3>|M<rsup|4>>>>|<row|<cell|-<frac|g|L<rsup|2>*M>-<frac|F<rsup|2>|L*M<rsup|3>>>>|<row|<cell|<frac|F*g|L<rsup|2>*M<rsup|2>>+<frac|F<rsup|3>|L*M<rsup|4>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      R:addcol(B,A1B,A2B,A3B)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|<frac|1|M>>|<cell|-<frac|F|M<rsup|2>>>|<cell|<frac|F<rsup|2>|M<rsup|3>>>>|<row|<cell|<frac|1|M>>|<cell|-<frac|F|M<rsup|2>>>|<cell|<frac|F<rsup|2>|M<rsup|3>>>|<cell|-<frac|F<rsup|3>|M<rsup|4>>>>|<row|<cell|0>|<cell|-<frac|1|L*M>>|<cell|<frac|F|L*M<rsup|2>>>|<cell|-<frac|g|L<rsup|2>*M>-<frac|F<rsup|2>|L*M<rsup|3>>>>|<row|<cell|-<frac|1|L*M>>|<cell|<frac|F|L*M<rsup|2>>>|<cell|-<frac|g|L<rsup|2>*M>-<frac|F<rsup|2>|L*M<rsup|3>>>|<cell|<frac|F*g|L<rsup|2>*M<rsup|2>>+<frac|F<rsup|3>|L*M<rsup|4>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      rank(R)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>4>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A5)>Considera il sistema lineare A3). Supponi
      che <math|d<rsub|1>> non sia nota. La legge di controllo deve essere
      tale che l'effetto del disturbo <math|d<rsub|1>> sia asintoticamente
      respindo e la prima uscita <math|s<around*|(|t|)>> insegua
      asintoticamente il segnale di riferimento
      <math|d<rsub|2>=\<alpha\>*sin<around*|(|\<omega\>t|)>>. Struttura il
      problema come un problema di regolazione.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      S:matrix([0,0,0],[0,0,omega],[0,-omega,0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|-\<omega\>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      Q:matrix([0,-1,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      Ce:row(C,1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A6)>Considera il problema di regolazione
      determinato in A5) e mostra che il problema è
      risolubile<space|1em>tramite la legge di controllo a full information
    </textput>

    <\textput>
      Lemma di Hautus:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      H:addcol(s*ident(4)-A,B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|s>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|s+<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>>|<row|<cell|0>|<cell|0>|<cell|s>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|L*M>>|<cell|-<frac|g|L>>|<cell|s>|<cell|-<frac|1|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      H:addrow(H,addcol(row(C,1),matrix([0])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|s>|<cell|-1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|s+<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>>|<row|<cell|0>|<cell|0>|<cell|s>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|L*M>>|<cell|-<frac|g|L>>|<cell|s>|<cell|-<frac|1|L*M>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      rank(H)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >>5>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      rank(subst(s=0,H))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >>5>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      rank(subst(s=%i*omega,H))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >>5>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      rank(subst(s=-%i*omega,H))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >>5>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|A7)>Considera il problema di regolazione
      determinato in A5). Mostra che il problema è risolubile tramite una
      legge di controllo in feedback dall'errore.

      <\equation*>
        <bmatrix|<tformat|<table|<row|<cell|<wide|x|\<dot\>>>>|<row|<cell|<wide|d|\<dot\>>>>>>>=<bmatrix|<tformat|<table|<row|<cell|A>|<cell|P>>|<row|<cell|0>|<cell|S>>>>><bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|d>>>>><space|2em>e=<bmatrix|<tformat|<table|<row|<cell|C>|<cell|Q>>>>><bmatrix|<tformat|<table|<row|<cell|x>>|<row|<cell|d>>>>>
      </equation*>

      deve essere osservabile.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      Ao:addcol(A,P)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      Ao:addrow(Ao,addcol(zeromatrix(3,4),S))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      Co:addcol(C,addrow(Q,zeromatrix(1,3)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      O:Co;
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>34) >
    <|unfolded-io>
      rank(O)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
      >>2>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>35) >
    <|input>
      CA1:Co.Ao$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      O:addrow(O,CA1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      rank(O)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >>4>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>38) >
    <|unfolded-io>
      CA2:CA1.Ao$<next-line>O:addrow(O,CA2);<next-line>rank(O);<next-line>
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >>6>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      CA3:CA2.Ao$<next-line>O:addrow(O,CA3);<next-line>rank(O);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|2>>>|<cell|0>|<cell|0>|<cell|-<frac|F|M<rsup|2>>>|<cell|0>|<cell|\<omega\><rsup|3>>>|<row|<cell|0>|<cell|-<frac|F<rsup|2>|L*M<rsup|2>>>|<cell|0>|<cell|<frac|g|L>>|<cell|<frac|F|L*M<rsup|2>>>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o43>)
      >>7>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>44) >
    <|unfolded-io>
      Ao2:Ao
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o44>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|F|L*M>>|<cell|<frac|g|L>>|<cell|0>|<cell|-<frac|1|L*M>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>45) >
    <|unfolded-io>
      Co2:addcol(Ce,Q)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>46) >
    <|unfolded-io>
      O2:Co2;<next-line>rank(O2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o46>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
      >>1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>48) >
    <|unfolded-io>
      CA1_2:Co2.Ao2$<next-line>O2:addrow(O2,CA1_2);<next-line>rank(O2);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o49>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o50>)
      >>2>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>51) >
    <|unfolded-io>
      CA2_2:CA1_2.Ao2$<next-line>O2:addrow(O2,CA2_2);<next-line>rank(O2);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
      >>3>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>54) >
    <|unfolded-io>
      CA3_2:CA2_2.Ao2$<next-line>O2:addrow(O2,CA3_2);<next-line>rank(O2);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o55>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|2>>>|<cell|0>|<cell|0>|<cell|-<frac|F|M<rsup|2>>>|<cell|0>|<cell|\<omega\><rsup|3>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o56>)
      >>4>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>57) >
    <|unfolded-io>
      CA4_2:CA3_2.Ao2$<next-line>O2:addrow(O2,CA4_2);<next-line>rank(O2);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o58>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|2>>>|<cell|0>|<cell|0>|<cell|-<frac|F|M<rsup|2>>>|<cell|0>|<cell|\<omega\><rsup|3>>>|<row|<cell|0>|<cell|-<frac|F<rsup|3>|M<rsup|3>>>|<cell|0>|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|3>>>|<cell|-\<omega\><rsup|4>>|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o59>)
      >>5>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>60) >
    <|unfolded-io>
      CA5_2:CA4_2.Ao2$<next-line>O2:addrow(O2,CA5_2);<next-line>rank(O2);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o61>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|2>>>|<cell|0>|<cell|0>|<cell|-<frac|F|M<rsup|2>>>|<cell|0>|<cell|\<omega\><rsup|3>>>|<row|<cell|0>|<cell|-<frac|F<rsup|3>|M<rsup|3>>>|<cell|0>|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|3>>>|<cell|-\<omega\><rsup|4>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|4>|M<rsup|4>>>|<cell|0>|<cell|0>|<cell|-<frac|F<rsup|3>|M<rsup|4>>>|<cell|0>|<cell|-\<omega\><rsup|5>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o62>)
      >>5>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>63) >
    <|unfolded-io>
      CA6_2:CA5_2.Ao2$<next-line>O2:addrow(O2,CA6_2);<next-line>rank(O2);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o64>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|-\<omega\>>>|<row|<cell|0>|<cell|-<frac|F|M>>|<cell|0>|<cell|0>|<cell|<frac|1|M>>|<cell|\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|2>>>|<cell|0>|<cell|0>|<cell|-<frac|F|M<rsup|2>>>|<cell|0>|<cell|\<omega\><rsup|3>>>|<row|<cell|0>|<cell|-<frac|F<rsup|3>|M<rsup|3>>>|<cell|0>|<cell|0>|<cell|<frac|F<rsup|2>|M<rsup|3>>>|<cell|-\<omega\><rsup|4>>|<cell|0>>|<row|<cell|0>|<cell|<frac|F<rsup|4>|M<rsup|4>>>|<cell|0>|<cell|0>|<cell|-<frac|F<rsup|3>|M<rsup|4>>>|<cell|0>|<cell|-\<omega\><rsup|5>>>|<row|<cell|0>|<cell|-<frac|F<rsup|5>|M<rsup|5>>>|<cell|0>|<cell|0>|<cell|<frac|F<rsup|4>|M<rsup|5>>>|<cell|\<omega\><rsup|6>>|<cell|0>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o65>)
      >>5>>
    </unfolded-io>

    <\textput>
      <\with|font|TeX Gyre Cursor>
        <with|font-series|bold|B1)>Sia <math|d<rsub|1><around*|(|t|)>>
        un'onda quadra di ampiezza 0.5 e periodo
        50s,<math|\<alpha\>=1,\<omega\>=0.1>. Progetta una legge di controllo
        a full information che risolve A5).

        <\equation*>
          \<Pi\>S=A*\<Pi\>+B*\<Gamma\>+P<space|1em>0=C*\<Pi\>+Q
        </equation*>
      </with>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>66) >
    <|unfolded-io>
      Pi:matrix([p[1,1],p[1,2],p[1,3]],<next-line>[p[2,1],p[2,2],p[2,3]],<next-line>[p[3,1],p[3,2],p[3,3]],<next-line>[p[4,1],p[4,2],p[4,3]])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o66>)
      >><matrix|<tformat|<table|<row|<cell|p<rsub|1,1>>|<cell|p<rsub|1,2>>|<cell|p<rsub|1,3>>>|<row|<cell|p<rsub|2,1>>|<cell|p<rsub|2,2>>|<cell|p<rsub|2,3>>>|<row|<cell|p<rsub|3,1>>|<cell|p<rsub|3,2>>|<cell|p<rsub|3,3>>>|<row|<cell|p<rsub|4,1>>|<cell|p<rsub|4,2>>|<cell|p<rsub|4,3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>67) >
    <|unfolded-io>
      Gamma:matrix([g[1,1],g[1,2],g[1,3]])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o67>)
      >><matrix|<tformat|<table|<row|<cell|g<rsub|1,1>>|<cell|g<rsub|1,2>>|<cell|g<rsub|1,3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>68) >
    <|unfolded-io>
      expr1:Pi.S-A.Pi-B.Gamma-P
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o68>)
      >><matrix|<tformat|<table|<row|<cell|-p<rsub|2,1>>|<cell|-p<rsub|1,3>*\<omega\>-p<rsub|2,2>>|<cell|p<rsub|1,2>*\<omega\>-p<rsub|2,3>>>|<row|<cell|<frac|p<rsub|2,1>*F|M>-<frac|g<rsub|1,1>|M>-<frac|1|M>>|<cell|-p<rsub|2,3>*\<omega\>+<frac|p<rsub|2,2>*F|M>-<frac|g<rsub|1,2>|M>>|<cell|p<rsub|2,2>*\<omega\>+<frac|p<rsub|2,3>*F|M>-<frac|g<rsub|1,3>|M>>>|<row|<cell|-p<rsub|4,1>>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>-<frac|p<rsub|2,1>*F|L*M>+<frac|g<rsub|1,1>|L*M>+<frac|1|L*M>>|<cell|-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>-<frac|p<rsub|2,2>*F|L*M>+<frac|g<rsub|1,2>|L*M>>|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>-<frac|p<rsub|2,3>*F|L*M>+<frac|g<rsub|1,3>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>69) >
    <|unfolded-io>
      expr2:Ce.Pi+Q
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o69>)
      >><matrix|<tformat|<table|<row|<cell|p<rsub|1,1>>|<cell|p<rsub|1,2>-1>|<cell|p<rsub|1,3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>70) >
    <|unfolded-io>
      expr1
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o70>)
      >><matrix|<tformat|<table|<row|<cell|-p<rsub|2,1>>|<cell|-p<rsub|1,3>*\<omega\>-p<rsub|2,2>>|<cell|p<rsub|1,2>*\<omega\>-p<rsub|2,3>>>|<row|<cell|<frac|p<rsub|2,1>*F|M>-<frac|g<rsub|1,1>|M>-<frac|1|M>>|<cell|-p<rsub|2,3>*\<omega\>+<frac|p<rsub|2,2>*F|M>-<frac|g<rsub|1,2>|M>>|<cell|p<rsub|2,2>*\<omega\>+<frac|p<rsub|2,3>*F|M>-<frac|g<rsub|1,3>|M>>>|<row|<cell|-p<rsub|4,1>>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>-<frac|p<rsub|2,1>*F|L*M>+<frac|g<rsub|1,1>|L*M>+<frac|1|L*M>>|<cell|-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>-<frac|p<rsub|2,2>*F|L*M>+<frac|g<rsub|1,2>|L*M>>|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>-<frac|p<rsub|2,3>*F|L*M>+<frac|g<rsub|1,3>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>71) >
    <|unfolded-io>
      transpose(flatten(args(expr1)=0))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o71>)
      >><math-up|transpose><around*|(|<around*|[|<around*|[|-p<rsub|2,1>,-p<rsub|1,3>*\<omega\>-p<rsub|2,2>,p<rsub|1,2>*\<omega\>-p<rsub|2,3>|]>,<around*|[|<frac|p<rsub|2,1>*F|M>-<frac|g<rsub|1,1>|M>-<frac|1|M>,-p<rsub|2,3>*\<omega\>+<frac|p<rsub|2,2>*F|M>-<frac|g<rsub|1,2>|M>,p<rsub|2,2>*\<omega\>+<frac|p<rsub|2,3>*F|M>-<frac|g<rsub|1,3>|M>|]>,<around*|[|-p<rsub|4,1>,-p<rsub|3,3>*\<omega\>-p<rsub|4,2>,p<rsub|3,2>*\<omega\>-p<rsub|4,3>|]>,<around*|[|-<frac|p<rsub|3,1>*g|L>-<frac|p<rsub|2,1>*F|L*M>+<frac|g<rsub|1,1>|L*M>+<frac|1|L*M>,-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>-<frac|p<rsub|2,2>*F|L*M>+<frac|g<rsub|1,2>|L*M>,p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>-<frac|p<rsub|2,3>*F|L*M>+<frac|g<rsub|1,3>|L*M>|]>|]>=0|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>72) >
    <|unfolded-io>
      transpose(flatten(args(expr2)))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o72>)
      >><matrix|<tformat|<table|<row|<cell|p<rsub|1,1>>>|<row|<cell|p<rsub|1,2>-1>>|<row|<cell|p<rsub|1,3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>73) >
    <|unfolded-io>
      toSubst:[p[1,1]=0,p[1,3]=0,p[1,2]=1,p[4,1]=0,p[2,1]=0]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o73>)
      >><around*|[|p<rsub|1,1>=0,p<rsub|1,3>=0,p<rsub|1,2>=1,p<rsub|4,1>=0,p<rsub|2,1>=0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>74) >
    <|unfolded-io>
      expr1:subst(toSubst,expr1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o74>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-p<rsub|2,2>>|<cell|\<omega\>-p<rsub|2,3>>>|<row|<cell|-<frac|g<rsub|1,1>|M>-<frac|1|M>>|<cell|-p<rsub|2,3>*\<omega\>+<frac|p<rsub|2,2>*F|M>-<frac|g<rsub|1,2>|M>>|<cell|p<rsub|2,2>*\<omega\>+<frac|p<rsub|2,3>*F|M>-<frac|g<rsub|1,3>|M>>>|<row|<cell|0>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>+<frac|g<rsub|1,1>|L*M>+<frac|1|L*M>>|<cell|-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>-<frac|p<rsub|2,2>*F|L*M>+<frac|g<rsub|1,2>|L*M>>|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>-<frac|p<rsub|2,3>*F|L*M>+<frac|g<rsub|1,3>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>75) >
    <|unfolded-io>
      expr2:subst(toSubst,expr2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o75>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>76) >
    <|unfolded-io>
      transpose(flatten(args(expr1)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o76>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|-p<rsub|2,2>>>|<row|<cell|\<omega\>-p<rsub|2,3>>>|<row|<cell|-<frac|g<rsub|1,1>|M>-<frac|1|M>>>|<row|<cell|-p<rsub|2,3>*\<omega\>+<frac|p<rsub|2,2>*F|M>-<frac|g<rsub|1,2>|M>>>|<row|<cell|p<rsub|2,2>*\<omega\>+<frac|p<rsub|2,3>*F|M>-<frac|g<rsub|1,3>|M>>>|<row|<cell|0>>|<row|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>>|<row|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>+<frac|g<rsub|1,1>|L*M>+<frac|1|L*M>>>|<row|<cell|-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>-<frac|p<rsub|2,2>*F|L*M>+<frac|g<rsub|1,2>|L*M>>>|<row|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>-<frac|p<rsub|2,3>*F|L*M>+<frac|g<rsub|1,3>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>77) >
    <|unfolded-io>
      toSubst:append(toSubst,[p[2,2]=0,p[2,3]=omega,g[1,1]=-1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o77>)
      >><around*|[|p<rsub|1,1>=0,p<rsub|1,3>=0,p<rsub|1,2>=1,p<rsub|4,1>=0,p<rsub|2,1>=0,p<rsub|2,2>=0,p<rsub|2,3>=\<omega\>,g<rsub|1,1>=-1|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>78) >
    <|unfolded-io>
      expr1:subst(toSubst,expr1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o78>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-\<omega\><rsup|2>-<frac|g<rsub|1,2>|M>>|<cell|<frac|F*\<omega\>|M>-<frac|g<rsub|1,3>|M>>>|<row|<cell|0>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>>|<cell|-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>+<frac|g<rsub|1,2>|L*M>>|<cell|-<frac|F*\<omega\>|L*M>+p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>+<frac|g<rsub|1,3>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>79) >
    <|unfolded-io>
      toSubst:append(toSubst,[g[1,2]=-M*omega^2,g[1,3]=F*omega])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o79>)
      >><around*|[|p<rsub|1,1>=0,p<rsub|1,3>=0,p<rsub|1,2>=1,p<rsub|4,1>=0,p<rsub|2,1>=0,p<rsub|2,2>=0,p<rsub|2,3>=\<omega\>,g<rsub|1,1>=-1,g<rsub|1,2>=-M*\<omega\><rsup|2>,g<rsub|1,3>=F*\<omega\>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>80) >
    <|unfolded-io>
      expr1:subst(toSubst,expr1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o80>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|-<frac|p<rsub|3,1>*g|L>>|<cell|-<frac|\<omega\><rsup|2>|L>-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>>|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>81) >
    <|unfolded-io>
      toSubst:append(toSubst,[p[3,1]=0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o81>)
      >><around*|[|p<rsub|1,1>=0,p<rsub|1,3>=0,p<rsub|1,2>=1,p<rsub|4,1>=0,p<rsub|2,1>=0,p<rsub|2,2>=0,p<rsub|2,3>=\<omega\>,g<rsub|1,1>=-1,g<rsub|1,2>=-M*\<omega\><rsup|2>,g<rsub|1,3>=F*\<omega\>,p<rsub|3,1>=0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>82) >
    <|unfolded-io>
      expr1:subst(toSubst,expr1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o82>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|0>|<cell|-<frac|\<omega\><rsup|2>|L>-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>>|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>83) >
    <|unfolded-io>
      linsol:transpose(flatten(args(expr1)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o83>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|-p<rsub|3,3>*\<omega\>-p<rsub|4,2>>>|<row|<cell|p<rsub|3,2>*\<omega\>-p<rsub|4,3>>>|<row|<cell|0>>|<row|<cell|-<frac|\<omega\><rsup|2>|L>-p<rsub|4,3>*\<omega\>-<frac|p<rsub|3,2>*g|L>>>|<row|<cell|p<rsub|4,2>*\<omega\>-<frac|p<rsub|3,3>*g|L>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>84) >
    <|unfolded-io>
      temp:[p[4,2]=-p[3,3]*omega,p[4,3]=p[3,2]*omega]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o84>)
      >><around*|[|p<rsub|4,2>=-p<rsub|3,3>*\<omega\>,p<rsub|4,3>=p<rsub|3,2>*\<omega\>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>85) >
    <|unfolded-io>
      tmp:subst(temp,expr1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o85>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|\<omega\><rsup|2>|L>-p<rsub|3,2>*\<omega\><rsup|2>-<frac|p<rsub|3,2>*g|L>>|<cell|-p<rsub|3,3>*\<omega\><rsup|2>-<frac|p<rsub|3,3>*g|L>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>86) >
    <|unfolded-io>
      solve(tmp[4,3]=0,p[3,3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o86>)
      >><around*|[|p<rsub|3,3>=0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>87) >
    <|unfolded-io>
      solve(tmp[4,2]=0,p[3,2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o87>)
      >><around*|[|p<rsub|3,2>=-<frac|\<omega\><rsup|2>|L*\<omega\><rsup|2>+g>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>88) >
    <|unfolded-io>
      toSubst:append(toSubst,[p[3,3]=0,p[3,2]=-omega^2/(L*omega^2+g),p[4,2]=0,p[4,3]=-omega^2/(L*omega^2+g)*omega])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o88>)
      >><around*|[|p<rsub|1,1>=0,p<rsub|1,3>=0,p<rsub|1,2>=1,p<rsub|4,1>=0,p<rsub|2,1>=0,p<rsub|2,2>=0,p<rsub|2,3>=\<omega\>,g<rsub|1,1>=-1,g<rsub|1,2>=-M*\<omega\><rsup|2>,g<rsub|1,3>=F*\<omega\>,p<rsub|3,1>=0,p<rsub|3,3>=0,p<rsub|3,2>=-<frac|\<omega\><rsup|2>|L*\<omega\><rsup|2>+g>,p<rsub|4,2>=0,p<rsub|4,3>=-<frac|\<omega\><rsup|3>|L*\<omega\><rsup|2>+g>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>90) >
    <|unfolded-io>
      ratsimp(subst(toSubst,expr1))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o90>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>91) >
    <|unfolded-io>
      solPi:subst(toSubst,Pi)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o91>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|-<frac|\<omega\><rsup|2>|L*\<omega\><rsup|2>+g>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-<frac|\<omega\><rsup|3>|L*\<omega\><rsup|2>+g>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>92) >
    <|unfolded-io>
      solGamma:subst(toSubst,Gamma)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o92>)
      >><matrix|<tformat|<table|<row|<cell|-1>|<cell|-M*\<omega\><rsup|2>>|<cell|F*\<omega\>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>93) >
    <|unfolded-io>
      ratsimp(solPi.S-A.solPi-B.solGamma-P)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o93>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>94) >
    <|unfolded-io>
      ratsimp(Ce.solPi+Q)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o94>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>97) >
    <|input>
      matsize(M):=[length(M),length(transpose(M))]$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>98) >
    <|input>
      fbisol(A,B,C,S,P,Q):=block(<next-line>[dimA,dimS,dimB,XPi,XGamma,vars,eq1,eq2,exprs],<next-line>dimA:matsize(A),<next-line>dimS:matsize(S),<next-line>dimB:matsize(B),<next-line>XPi:zeromatrix(dimA[1],dimS[1]),<next-line>XGamma:zeromatrix(dimB[2],dimS[1]),<next-line>vars:[],<next-line>for
      r:1 thru dimA[1] do(<next-line>for c:1 thru dimS[1]
      do(<next-line>XPi[r,c]:p[r,c],<next-line>vars:append(vars,[p[r,c]])<next-line>)<next-line>),<next-line>for
      r:1 thru dimB[2] do(<next-line>for c:1 thru dimS[1]
      do(<next-line>XGamma[r,c]:g[r,c],<next-line>vars:append(vars,[g[r,c]])<next-line>)<next-line>),<next-line>eq1:XPi.S-A.XPi-B.XGamma-P,<next-line>eq2:C.XPi+Q,<next-line>exprs:[],<next-line>for
      r:1 thru dimA[1] do(<next-line>for c:1 thru dimS[1]
      do(<next-line>exprs:append(exprs,[eq1[r,c]])<next-line>)<next-line>),<next-line>for
      r:1 thru dimB[2] do(<next-line>for c:1 thru dimS[1]
      do(<next-line>exprs:append(exprs,[eq2[r,c]])<next-line>)<next-line>),<next-line>sol:solve(exprs,vars),<next-line>return([subst(sol[1],XPi),subst(sol[1],XGamma)])<next-line>)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>99) >
    <|unfolded-io>
      sol:fbisol(A,B,Ce,S,P,Q)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o99>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|-<frac|\<omega\><rsup|2>|L*\<omega\><rsup|2>+g>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-<frac|\<omega\><rsup|3>|L*\<omega\><rsup|2>+g>>>>>>,<matrix|<tformat|<table|<row|<cell|-1>|<cell|-M*\<omega\><rsup|2>>|<cell|F*\<omega\>>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>100) >
    <|unfolded-io>
      sol[1].S
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o100>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|-\<omega\><rsup|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-<frac|\<omega\><rsup|3>|L*\<omega\><rsup|2>+g>>>|<row|<cell|0>|<cell|<frac|\<omega\><rsup|4>|L*\<omega\><rsup|2>+g>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>101) >
    <|unfolded-io>
      A.sol[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o101>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|\<omega\>>>|<row|<cell|0>|<cell|0>|<cell|-<frac|F*\<omega\>|M>>>|<row|<cell|0>|<cell|0>|<cell|-<frac|\<omega\><rsup|3>|L*\<omega\><rsup|2>+g>>>|<row|<cell|0>|<cell|-<frac|g*\<omega\><rsup|2>|L*<around*|(|L*\<omega\><rsup|2>+g|)>>>|<cell|<frac|F*\<omega\>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>102) >
    <|unfolded-io>
      B.sol[2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o102>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|-<frac|1|M>>|<cell|-\<omega\><rsup|2>>|<cell|<frac|F*\<omega\>|M>>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|<frac|1|L*M>>|<cell|<frac|\<omega\><rsup|2>|L>>|<cell|-<frac|F*\<omega\>|L*M>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>103) >
    <|unfolded-io>
      Ce.sol[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o103>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>
  </session>>
</body>

<\initial>
  <\collection>
    <associate|global-title|Calcoli.tm>
    <associate|page-medium|paper>
  </collection>
</initial>