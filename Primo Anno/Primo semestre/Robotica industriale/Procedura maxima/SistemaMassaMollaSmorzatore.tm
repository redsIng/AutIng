<TeXmacs|1.99.17>

<style|<tuple|generic|italian|maxima>>

<\body>
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
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      T:(1/2)*M[1]*v[1]^2+(1/2)*M[2]*v[2]^2+(1/2)*M[3]*v[3]^2;
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><frac|M<rsub|3>*v<rsub|3><rsup|2>|2>+<frac|M<rsub|2>*v<rsub|2><rsup|2>|2>+<frac|M<rsub|1>*v<rsub|1><rsup|2>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      U:(1/2)*K[1]*(q[1])^2+

      \ \ (1/2)*K[2]*(q[1]-q[2])^2+

      \ \ (1/2)*K[3]*(q[2]-q[3])^2+

      \ \ (1/2)*K[4]*(q[3])^2+

      \ \ (1/2)*K[5]*(q[2])^2;
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><frac|q<rsub|2><rsup|2>*K<rsub|5>|2>+<frac|q<rsub|3><rsup|2>*K<rsub|4>|2>+<frac|K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)><rsup|2>|2>+<frac|K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)><rsup|2>|2>+<frac|K<rsub|1>*q<rsub|1><rsup|2>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      F:(1/2)*D[1]*(v[1])^2+

      \ \ (1/2)*D[2]*(v[2])^2+

      \ \ (1/2)*D[3]*(v[3])^2;
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><frac|D<rsub|3>*v<rsub|3><rsup|2>|2>+<frac|D<rsub|2>*v<rsub|2><rsup|2>|2>+<frac|D<rsub|1>*v<rsub|1><rsup|2>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      L:T-U;
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>-<frac|q<rsub|2><rsup|2>*K<rsub|5>|2>-<frac|q<rsub|3><rsup|2>*K<rsub|4>|2>+<frac|M<rsub|3>*v<rsub|3><rsup|2>|2>-<frac|K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)><rsup|2>|2>+<frac|M<rsub|2>*v<rsub|2><rsup|2>|2>-<frac|K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)><rsup|2>|2>+<frac|M<rsub|1>*v<rsub|1><rsup|2>|2>-<frac|K<rsub|1>*q<rsub|1><rsup|2>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      dL1:diff(diff(L,v[1]),v[1])*a[1]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[1]),v[2])*a[2]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[1]),v[3])*a[3]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[1]),q[1])*v[1]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[1]),q[2])*v[2]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[1]),q[3])*v[3];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>M<rsub|1>*a<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      dL2:diff(diff(L,v[2]),v[1])*a[1]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[2]),v[2])*a[2]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[2]),v[3])*a[3];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>M<rsub|2>*a<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      dL3:diff(diff(L,v[3]),v[1])*a[1]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[3]),v[2])*a[2]+

      \ \ \ \ \ \ \ \ diff(diff(L,v[3]),v[3])*a[3];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>M<rsub|3>*a<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Lq1:diff(L,q[1]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >>-K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)>-K<rsub|1>*q<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      Lq2:diff(L,q[2]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >>-q<rsub|2>*K<rsub|5>-K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)>+K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      Lq3:diff(L,q[3]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >>K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)>-q<rsub|3>*K<rsub|4>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      F1:diff(F,v[1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >>D<rsub|1>*v<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      F2:diff(F,v[2]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >>D<rsub|2>*v<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      F3:diff(F,v[3]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>D<rsub|3>*v<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      eq1:dL1-Lq1+F1-u[1];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)>+D<rsub|1>*v<rsub|1>-u<rsub|1>+K<rsub|1>*q<rsub|1>+M<rsub|1>*a<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      eq2:dL2-Lq2+F2-u[2];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>q<rsub|2>*K<rsub|5>+K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)>+D<rsub|2>*v<rsub|2>-u<rsub|2>-K<rsub|2>*<around*|(|q<rsub|1>-q<rsub|2>|)>+M<rsub|2>*a<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      eq3:dL3-Lq3+F3-u[3];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >>q<rsub|3>*K<rsub|4>+D<rsub|3>*v<rsub|3>-u<rsub|3>-K<rsub|3>*<around*|(|q<rsub|2>-q<rsub|3>|)>+M<rsub|3>*a<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      sol:solve([eq1,eq2,eq3],[a[1],a[2],a[3]]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><around*|[|<around*|[|a<rsub|1>=<frac|K<rsub|2>*q<rsub|2>-q<rsub|1>*K<rsub|2>-D<rsub|1>*v<rsub|1>+u<rsub|1>-K<rsub|1>*q<rsub|1>|M<rsub|1>>,a<rsub|2>=-<frac|q<rsub|2>*<around*|(|K<rsub|5>+K<rsub|3>+K<rsub|2>|)>-K<rsub|3>*q<rsub|3>+D<rsub|2>*v<rsub|2>-u<rsub|2>-q<rsub|1>*K<rsub|2>|M<rsub|2>>,a<rsub|3>=<frac|q<rsub|3>*<around*|(|-K<rsub|4>-K<rsub|3>|)>-D<rsub|3>*v<rsub|3>+u<rsub|3>+q<rsub|2>*K<rsub|3>|M<rsub|3>>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      f:matrix([x[4]],[x[5]],[x[6]],[a[1]],[a[2]],[a[3]]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><matrix|<tformat|<table|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>|<row|<cell|x<rsub|6>>>|<row|<cell|a<rsub|1>>>|<row|<cell|a<rsub|2>>>|<row|<cell|a<rsub|3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      f:subst(sol[1],f);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><matrix|<tformat|<table|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>|<row|<cell|x<rsub|6>>>|<row|<cell|<frac|K<rsub|2>*q<rsub|2>-q<rsub|1>*K<rsub|2>-D<rsub|1>*v<rsub|1>+u<rsub|1>-K<rsub|1>*q<rsub|1>|M<rsub|1>>>>|<row|<cell|-<frac|q<rsub|2>*<around*|(|K<rsub|5>+K<rsub|3>+K<rsub|2>|)>-K<rsub|3>*q<rsub|3>+D<rsub|2>*v<rsub|2>-u<rsub|2>-q<rsub|1>*K<rsub|2>|M<rsub|2>>>>|<row|<cell|<frac|q<rsub|3>*<around*|(|-K<rsub|4>-K<rsub|3>|)>-D<rsub|3>*v<rsub|3>+u<rsub|3>+q<rsub|2>*K<rsub|3>|M<rsub|3>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      f:subst([q[1]=x[1],q[2]=x[2],q[3]=x[3]],f)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><matrix|<tformat|<table|<row|<cell|x<rsub|4>>>|<row|<cell|x<rsub|5>>>|<row|<cell|x<rsub|6>>>|<row|<cell|<frac|K<rsub|2>*x<rsub|2>-x<rsub|1>*K<rsub|2>-K<rsub|1>*x<rsub|1>-D<rsub|1>*v<rsub|1>+u<rsub|1>|M<rsub|1>>>>|<row|<cell|-<frac|x<rsub|2>*<around*|(|K<rsub|5>+K<rsub|3>+K<rsub|2>|)>-K<rsub|3>*x<rsub|3>+D<rsub|2>*v<rsub|2>-u<rsub|2>-x<rsub|1>*K<rsub|2>|M<rsub|2>>>>|<row|<cell|<frac|x<rsub|3>*<around*|(|-K<rsub|4>-K<rsub|3>|)>-D<rsub|3>*v<rsub|3>+u<rsub|3>+x<rsub|2>*K<rsub|3>|M<rsub|3>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      string(f)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >matrix([x[4]],[x[5]],[x[6]],[(K[2]*x[2]-x[1]*K[2]-K[1]*x[1]-D[1]*v[1]+u[1])/M[1]],[-(x[2]*(K[5]+K[3]+K[2])-K[3]*x[3]+D[2]*v[2]-u[2]-x[1]*K[2])/M[2]],[(x[3]*((-K[4])-K[3])-D[3]*v[3]+u[3]+x[2]*K[3])/M[3]])
      >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
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