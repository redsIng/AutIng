<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <center|<strong|Regole cinematiche inverse MAXIMA>>

  <\session|maxima|default>
    \;

    Sistemi linerati

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      eq1:sqrt(2)*x[1]+x[2]-3
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>x<rsub|2>+<sqrt|2>*x<rsub|1>-3>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      eq2:3*x[1]-19/2*x[2]+7*%pi
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>-<frac|19*x<rsub|2>|2>+3*x<rsub|1>+7*\<pi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      solve([eq1,eq2],[x[1],x[2]])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><around*|[|<around*|[|x<rsub|1>=-<frac|<sqrt|2>*<around*|(|266*\<pi\>-1083|)>-84*\<pi\>+342|686>,x<rsub|2>=-<frac|<sqrt|2>*<around*|(|42*\<pi\>-171|)>-266*\<pi\>+54|343>|]>|]>>>
    </unfolded-io>

    <\textput>
      Prima regola <math|cos<around*|(|\<theta\>|)>=a>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      eq:cos(theta)-a
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>cos <around*|(|\<vartheta\>|)>-a>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      identity:sin(theta)^2+cos(theta)^2-1
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>sin <around*|(|\<vartheta\>|)><rsup|2>+cos
      <around*|(|\<vartheta\>|)><rsup|2>-1>>
    </unfolded-io>

    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      solve([eq,identity],[cos(theta),sin(theta)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|<around*|[|cos <around*|(|\<vartheta\>|)>=a,sin
      <around*|(|\<vartheta\>|)>=-<sqrt|1-a<rsup|2>>|]>,<around*|[|cos
      <around*|(|\<vartheta\>|)>=a,sin <around*|(|\<vartheta\>|)>=<sqrt|1-a<rsup|2>>|]>|]>>>
    </unfolded-io>

    <\textput>
      Per eliminare variabili in una equazione si utilizza eliminate, ma
      prima occorre utilizzare let e letsimp per facilitare i conti: primo
      parametro lista delle equazioni, secondo parametro è l'eliminazione da
      effettuare
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      e1:subst([sin(theta)=s,cos(theta)=c],eq)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>c-a>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      e2:subst([sin(theta)=s,cos(theta)=c],identity)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>s<rsup|2>+c<rsup|2>-1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      eliminate([e1,e2],[s])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<around*|(|c-a|)><rsup|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      w1:eliminate([e1,e2],[c])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|s<rsup|2>+a<rsup|2>-1|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      w3:solve(w1,s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|s=-<sqrt|1-a<rsup|2>>,s=<sqrt|1-a<rsup|2>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      w2:solve([e1],[c])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><around*|[|c=a|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      S1:subst(w3[1],s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >>-<sqrt|1-a<rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      S2:subst(w2[1],c)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >>a>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      atan2(S1,c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >>-<math-up|atan2><around*|(|<sqrt|1-a<rsup|2>>,c|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      atan2(S2,c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      ><with|font-family|rm|atan2>><around*|(|a,c|)>>>
    </unfolded-io>

    <\textput>
      Regola numero 4:

      <\equation*>
        a*cos<around*|(|\<theta\>|)>+b*sin<around*|(|\<theta\>|)>=c
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      eq1:a*c+b*s
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>b*s+a*c>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      eq2:s^2+c^2-1
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>s<rsup|2>+c<rsup|2>-1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      w1:eliminate([eq1,eq2],[s])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><around*|[|<around*|(|b<rsup|2>+a<rsup|2>|)>*c<rsup|2>-b<rsup|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      w2:eliminate([eq1,eq2],[c])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><around*|[|<around*|(|b<rsup|2>+a<rsup|2>|)>*s<rsup|2>-a<rsup|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      ss1:solve(w1,c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><around*|[|c=-<frac|b|<sqrt|b<rsup|2>+a<rsup|2>>>,c=<frac|b|<sqrt|b<rsup|2>+a<rsup|2>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      ss2:solve(w2,s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|s=-<frac|a|<sqrt|b<rsup|2>+a<rsup|2>>>,s=<frac|a|<sqrt|b<rsup|2>+a<rsup|2>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      C1: subst([ss1[1]],c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>-<frac|b|<sqrt|b<rsup|2>+a<rsup|2>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      C2: subst([ss1[2]],c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><frac|b|<sqrt|b<rsup|2>+a<rsup|2>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      S1:subst(c=C1,solve(eq1,s))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><around*|[|s=<frac|a|<sqrt|b<rsup|2>+a<rsup|2>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      S2:subst(c=C2,solve(eq1,s))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><around*|[|s=-<frac|a|<sqrt|b<rsup|2>+a<rsup|2>>>|]>>>
    </unfolded-io>

    <\textput>
      Soluzioni tramite utilizzo di atan2. Le soluzioni sono accoppaite come
      da teoria: appunti p.66
    </textput>

    <\textput>
      Regola numero 7:

      <\equation*>
        <choice|<tformat|<table|<row|<cell|a*cos<around*|(|\<theta\>|)>-b*sin<around*|(|\<theta\>|)>=c>>|<row|<cell|b*cos<around*|(|\<theta\>|)>+a*sin<around*|(|\<theta\>|)>=d>>>>>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      eq1:A*c-B*s-C
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>-B*s+A*c-C>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      eq2:B*c+A*s-D
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>A*s+B*c-D>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      eq3:s^2+c^2-1
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>s<rsup|2>+c<rsup|2>-1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      w1:eliminate([eq1,eq2,eq3],[s,c])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><around*|[|B<rsup|2>*<around*|(|B<rsup|2>+A<rsup|2>|)>*<around*|(|D<rsup|2>+C<rsup|2>-B<rsup|2>-A<rsup|2>|)>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      solve([eq1,eq2],[s,c])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|<around*|[|s=-<frac|B*C-A*D|B<rsup|2>+A<rsup|2>>,c=<frac|B*D+A*C|B<rsup|2>+A<rsup|2>>|]>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
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