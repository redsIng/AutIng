<TeXmacs|2.1.1>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\session|maxima|default>
    <\output>
      Lorenzo Rossi Matricola:0301285

      Assignment 6 - Stabilità Robusta e Prestazioni Robuste
      \ \ \ \ \ \ \ \ \ 
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      load(solve_rat_ineq)$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|input>
      assume(k\<gtr\>1)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      P(s):=1/(s-1);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>P<around*|(|s|)>\<assign\><frac|1|s-1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      W[2](s):=2/(s+10);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>W<rsub|2><around|(|s|)>\<assign\><frac|2|s+10>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      C(s):=k;
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>C<around*|(|s|)>\<assign\>k>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      W[1](s):=1/(s+1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>W<rsub|1><around|(|s|)>\<assign\><frac|1|s+1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      L(s):=P(s)*C(s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>L<around*|(|s|)>\<assign\>P<around*|(|s|)>*C<around*|(|s|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      T(s):=factor(expand(L(s)/(1+L(s))))$

      \ T(s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><frac|k|s+k-1>>>
    </unfolded-io>

    <\textput>
      Stabilità Robusta
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      W2T(s):=ratsimp(W[2](s)*T(s))$

      \ \ \ W2T(s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><frac|2*k|s<rsup|2>+<around*|(|k+9|)>*s+10*k-10>>>
    </unfolded-io>

    <\textput>
      Ricerca del k per cui si ha stabilità robusta:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      W2T0:W2T(0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><frac|k|5*k-5>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      solve_rat_ineq(W2T0\<less\>1/2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|[|<around*|[|k\<less\>1|]>,<around*|[|k\<gtr\><frac|5|3>|]>|]>>>
    </unfolded-io>

    <\textput>
      La prima condizione <math|k\<less\>1> deve essere scartata poiché per
      avere stabilità interna dobbiamo avere che <math|k\<gtr\>1>.

      Quindi,\<forall\><math|k\<gtr\><frac|5|3>> la condizione necessaria e
      sufficiente di stabilità robusta di livello <math|\<beta\>> è
      soddisfatta:

      <center|<math|<around*|\<\|\|\>|W<rsub|2>T|\<\|\|\>><rsub|\<infty\>>\<less\><frac|1|\<beta\>>>>
    </textput>

    \;

    <\textput>
      Performance Robusta:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      S(s):=factor(expand(1/(1+L(s))))$

      \ S(s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><frac|s-1|s+k-1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      W1S(s):=ratsimp(factor(expand(W[1](s)*S(s))))$

      \ \ \ W1S(s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><frac|s-1|s<rsup|2>+k*s+k-1>>>
    </unfolded-io>

    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      W1S0:W1S(0)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>-<frac|1|k-1>>>
    </unfolded-io>

    <\textput>
      Ricerca del <math|k> per avere prestazioni robuste:

      <\equation*>
        \<alpha\><rsub|min>=max<rsub|\<omega\>><frac|<around*|\||W<rsub|1>S|\|>|1-2<around*|\||W<rsub|2>T|\|>>=<around*|\<\|\|\>|<frac|<around*|\||W<rsub|1>S|\|>|1-2<around*|\||W<rsub|2>T|\|>>|\<\|\|\>><rsub|\<infty\>>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      alpha[min]:ratsimp(abs(W1S(0))/(1-2*abs(W2T(0))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><frac|5|3*k-5>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      eq:subst(s=0,alpha[min])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><frac|5|3*k-5>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      eq1:ratsimp(diff(eq,k))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >>-<frac|15|9*k<rsup|2>-30*k+25>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      <code|solve_rat_ineq>(eq1\<less\>0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|<around*|[|k\<less\><frac|5|3>|]>,<around*|[|k\<gtr\><frac|5|3>|]>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|input>
      \;
    </input>

    <\textput>
      Anche in questo caso la soluzione <math|k\<less\><frac|5|3>> deve
      essere scartata poiché non ammissibile. Inoltre per trovare in maniera
      teorica il minimo di <math|\<alpha\>> si è risolta la disequazione:

      <\equation*>
        \<alpha\><rsub|min>=<frac|<around*|\||W<rsub|1>S|\|>|1-<around*|\||W<rsub|2>T|\|>>\<less\>1\<longrightarrow\><frac|\<partial\>\<alpha\><rsub|min>|\<partial\>k>\<less\>0
      </equation*>
    </textput>
  </session>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>