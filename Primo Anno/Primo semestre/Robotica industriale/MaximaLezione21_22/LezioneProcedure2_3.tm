<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\equation*>
    A=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>
  </equation*>

  <math|A> è una matrice a blocchi. Quindi i suoi autovalori saranno nella
  forma:

  <\equation*>
    \<sigma\><around*|(|A|)>=<around*|{|1,2,3|}>
  </equation*>

  Calcoliamo gli autovettori:

  <\equation*>
    \<lambda\>I-A=<matrix|<tformat|<table|<row|<cell|\<lambda\>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\>>>>>>-<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>
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

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      A: matrix([1, 0, 2],[1, 2, 3],[0, 0, 3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      eigenvectors(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|<around*|[|<around*|[|1,2,3|]>,<around*|[|1,1,1|]>|]>,<around*|[|<around*|[|<around*|[|1,-1,0|]>|]>,<around*|[|<around*|[|0,1,0|]>|]>,<around*|[|<around*|[|1,4,1|]>|]>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
    <|unfolded-io>
      auto(A):= block([II,sA,polA,autval,adjA,aut0,aut1,aut2],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ II:lambda*ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sA : II-A,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ polA: determinant(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ autval:solve(polA=0,lambda),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjA: adjoint(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adj1: subst(autval[1],adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adj2: subst(autval[2],adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adj3: subst(autval[3],adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aut0:zerofor(A[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aut1:zerofor(A[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aut2:zerofor(A[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(A) do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aut1:matrix([adj1,i],[adj2,i],[adj3,i]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if aut1#aut0 then aut2:aut1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
      >><math-up|auto><around*|(|A|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|II>,<math-up|sA>,<math-up|polA>,<math-up|autval>,<math-up|adjA>,<with|math-font-family|rm|aut0>,<with|math-font-family|rm|aut1>,<with|math-font-family|rm|aut2>|]>,<math-up|II>:\<lambda\>*<math-up|ident><around*|(|3|)>,<math-up|sA>:<math-up|II>-A,<math-up|polA>:<math-up|determinant><around*|(|<math-up|sA>|)>,<math-up|autval>:<math-up|solve><around*|(|<math-up|polA>=0,\<lambda\>|)>,<math-up|adjA>:<math-up|adjoint><around*|(|<math-up|sA>|)>,<with|math-font-family|rm|adj1>:<math-up|subst><around*|(|<math-up|autval><rsub|1>,<math-up|adjA>|)>,<with|math-font-family|rm|adj2>:<math-up|subst><around*|(|<math-up|autval><rsub|2>,<math-up|adjA>|)>,<with|math-font-family|rm|adj3>:<math-up|subst><around*|(|<math-up|autval><rsub|3>,<math-up|adjA>|)>,<with|math-font-family|rm|aut0>:<math-up|zerofor><around*|(|A<rsub|1>|)>,<with|math-font-family|rm|aut1>:<math-up|zerofor><around*|(|A<rsub|1>|)>,<with|math-font-family|rm|aut2>:<math-up|zerofor><around*|(|A<rsub|1>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|A|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<with|math-font-family|rm|aut1>:<matrix|<tformat|<table|<row|<cell|<with|math-font-family|rm|adj1>>|<cell|i>>|<row|<cell|<with|math-font-family|rm|adj2>>|<cell|i>>|<row|<cell|<with|math-font-family|rm|adj3>>|<cell|i>>>>>,<math-bf|if><space|0.27em><with|math-font-family|rm|aut1>\<neq\><with|math-font-family|rm|aut0><space|0.27em><math-bf|then><space|0.27em><with|math-font-family|rm|aut2>:<with|math-font-family|rm|aut1>|)>|)>>>
    </unfolded-io>

    <\folded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|folded-io>
      c:auto(A)
    <|folded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><math-bf|done>>>
    </folded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      length(A)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >>3>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>42) >
    <|input>
      \;
    </input>
  </session>

  Far procedura per il calcolo degli autovalori e autovettori di una matrice.

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
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      II:sqrt(-1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      depends(x,t,y,t)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><around*|[|x<around*|(|t|)>,y<around*|(|t|)>|]>>>
    </unfolded-io>

    <\textput>
      Vettore di coordinate x,y le cui coordinate sono x per la parte reale y
      immaginaria
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      z : x+II*y
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>\<mathi\>*y+x>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|input>
      \;
    </input>

    <\textput>
      <strong|Calcolo Energia cinetica>

      Ho bisogno di:

      <\itemize>
        <item>velocità;

        <item>posizione;
      </itemize>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      derivabbrev:true
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      zp: diff(z,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>\<mathi\>*y<rsub|t>+x<rsub|t>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>x<rsub|t>-\<mathi\>*y<rsub|t>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      zp2:zp*zpstar
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><around*|(|x<rsub|t>-\<mathi\>*y<rsub|t>|)>*<around*|(|\<mathi\>*y<rsub|t>+x<rsub|t>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      zp2: expand(zp2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|(|y<rsub|t>|)><rsup|2>+<around*|(|x<rsub|t>|)><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      let(v[x],x[t])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>v<rsub|x>\<longrightarrow\>x<rsub|t>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|input>
      \;
    </input>
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
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      z:p[x]+II*p[y]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>\<mathi\>*p<rsub|y>+p<rsub|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      zp:diff(z,p[x])*v[x]+diff(z,p[y])*v[y]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>\<mathi\>*v<rsub|y>+v<rsub|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      zpstar: subst(II=-II,zp)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>v<rsub|x>-\<mathi\>*v<rsub|y>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      zp2: expand(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>v<rsub|y><rsup|2>+v<rsub|x><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      T:(1/2)*M*zp2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><frac|M*<around*|(|v<rsub|y><rsup|2>+v<rsub|x><rsup|2>|)>|2>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>
  </session>

  <strong|Calcola energia cineti punto alla fine di due link>

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
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      z1:L[1]*exp(II*alpha[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      z2:L[2]*exp(II*(alpha[1]+alpha[2]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      z:z1+z2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      zp:diff(z,alpha[1])*omega[1]+diff(z,alpha[2])*omega[2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1>*<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>\<omega\><rsub|1>*<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>*\<omega\><rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      zp2: expand(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      zp2: trigreduce(demoivre(zp2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      T: (1/2)*M*zp2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><frac|<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>*M|2>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|input>
      \;
    </input>
  </session>

  <strong|Per casa>

  <\itemize>
    <item>Calcolo energie cinetica 3 link planare che si trova alla fine del
    terzo link.

    <item>Calcolo autovalori e autovettori
  </itemize>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>