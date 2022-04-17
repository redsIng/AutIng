<TeXmacs|2.1.1>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.45.1 https://maxima.sourceforge.io

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>w<rsub|u><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>z<rsub|i><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>w<rsub|u><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      \;

      \ <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>z<rsub|i><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>r<rsub|o><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>z<rsub|j><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      \;

      \ <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>s<rsub|e><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>r<rsub|o><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>z<rsub|j><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>

      \;

      \ <math|<with|math-display|true|<text|<verbatim|d><verbatim|e><verbatim|f><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|:><verbatim|
      >>c<rsub|e><text|<verbatim| ><verbatim|w><verbatim|i><verbatim|l><verbatim|l><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|m><verbatim|a><verbatim|t><verbatim|c><verbatim|h><verbatim|e><verbatim|d><verbatim|
      ><verbatim|u><verbatim|n><verbatim|i><verbatim|q><verbatim|u><verbatim|e><verbatim|l><verbatim|y><verbatim|
      ><verbatim|s><verbatim|i><verbatim|n><verbatim|c><verbatim|e><verbatim|
      ><verbatim|s><verbatim|u><verbatim|b><verbatim|-><verbatim|p><verbatim|a><verbatim|r><verbatim|t><verbatim|s><verbatim|
      ><verbatim|w><verbatim|o><verbatim|u><verbatim|l><verbatim|d><verbatim|
      ><verbatim|o><verbatim|t><verbatim|h><verbatim|e><verbatim|r><verbatim|w><verbatim|i><verbatim|s><verbatim|e><verbatim|
      ><verbatim|b><verbatim|e><verbatim|
      ><verbatim|a><verbatim|m><verbatim|b><verbatim|i><verbatim|g><verbatim|u><verbatim|o><verbatim|u><verbatim|s><verbatim|.>>>>
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      depends(x,t); depends(y,t);depends(u,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><around*|[|x<around*|(|t|)>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><around*|[|y<around*|(|t|)>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><around*|[|u<around*|(|t|)>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      eq1:'diff(x(t),t)=omega*y(t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><frac|d|d*t>*x<around*|(|t|)>=\<omega\>*y<around*|(|t|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      eq2:'diff(y(t),t)=-omega*x(t)+1
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><frac|d|d*t>*y<around*|(|t|)>=1-\<omega\>*x<around*|(|t|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      L1:laplace(eq1,t,s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>s*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>-x<around*|(|0|)>=\<omega\>*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      L2:laplace(eq2,t,s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>s*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>-y<around*|(|0|)>=<frac|1|s>-\<omega\>*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      subL1:subst(x(0)=x[i],L1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>s*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>-x<rsub|i>=\<omega\>*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      subL2:subst(y(0)=y[i],L2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>s*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>-y<rsub|i>=<frac|1|s>-\<omega\>*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      LL1:solve(subL1,laplace(x(t),t,s))[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>=<frac|\<omega\>*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>+x<rsub|i>|s>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      LL2:solve(subL2,laplace(y(t),t,s))[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>=-<frac|\<omega\>*s*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>-y<rsub|i>*s-1|s<rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      sub1:expand(subst(laplace(y(t),t,s)=part(LL2,2),LL1))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>=-<frac|\<omega\><rsup|2>*\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>|s<rsup|2>>+<frac|x<rsub|i>|s>+<frac|y<rsub|i>*\<omega\>|s<rsup|2>>+<frac|\<omega\>|s<rsup|3>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      sub2:(expand(subst(laplace(x(t),t,s)=part(LL1,2),LL2)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>=-<frac|\<omega\><rsup|2>*\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>|s<rsup|2>>+<frac|y<rsub|i>|s>-<frac|x<rsub|i>*\<omega\>|s<rsup|2>>+<frac|1|s<rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      sub11:solve(sub1,laplace(x(t),t,s))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><around*|[|\<cal-L\><around*|(|x<around*|(|t|)>,t,s|)>=<frac|x<rsub|i>*s<rsup|2>+y<rsub|i>*\<omega\>*s+\<omega\>|s<rsup|3>+\<omega\><rsup|2>*s>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      sub22:solve(sub2,laplace(y(t),t,s))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|\<cal-L\><around*|(|y<around*|(|t|)>,t,s|)>=<frac|y<rsub|i>*s-x<rsub|i>*\<omega\>+1|s<rsup|2>+\<omega\><rsup|2>>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|input>
      ilt(sub11[1],s,t)
    </input>

    <\input>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|input>
      yes
    </input>

    <\input>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|input>
      yes
    </input>

    <\input>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|input>
      si
    </input>

    <\input>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|input>
      true
    </input>

    <\unfolded-io>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|unfolded-io>
      nonzero
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>x<around*|(|t|)>=y<rsub|i>*sin <around*|(|\<omega\>*t|)>+<frac|<around*|(|x<rsub|i>*\<omega\>-1|)>*cos
      <around*|(|\<omega\>*t|)>|\<omega\>>+<frac|1|\<omega\>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|input>
      ilt(sub22[1],s,t)
    </input>

    <\unfolded-io>
      <math|<with|math-display|true|<text|Is >\<omega\><text|zero or nonzero?
      >>>

      \;
    <|unfolded-io>
      nonzero
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >>y<around*|(|t|)>=<frac|<around*|(|1-x<rsub|i>*\<omega\>|)>*sin
      <around*|(|\<omega\>*t|)>|\<omega\>>+y<rsub|i>*cos
      <around*|(|\<omega\>*t|)>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
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