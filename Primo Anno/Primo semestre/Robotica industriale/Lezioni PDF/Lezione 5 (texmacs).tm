<TeXmacs|1.99.13>

<style|<tuple|generic|maxima>>

<\body>
  <\eqnarray*>
    <tformat|<table|<row|<cell|R<around*|(|t|)>>|<cell|=>|<cell|e<rsup|S*t>>>>>
  </eqnarray*>

  Laplace

  Autovalori, Autovettori

  <\equation*>
    e<rsup|A*t>
  </equation*>

  \;

  \;

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.36.1 http://maxima.sourceforge.net

      using Lisp SBCL 1.2.10

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.

      <\errput>
        STYLE-WARNING: redefining MAXIMA::TEX-MATRIX in DEFUN
      </errput>
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R:matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      laplace(1,t,s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><frac|1|s>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      laplace(exp(alpha*t),t,s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><frac|1|s-\<alpha\>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      laplace(sin(omega*t),t,s)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><frac|\<omega\>|s<rsup|2>+\<omega\><rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      laplace(cos(omega*t),t,s)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><frac|s|s<rsup|2>+\<omega\><rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      ilt(1/s,s,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      ilt(1/((s-a)*(s-b)*(s-c)),s,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><frac|\<mathe\><rsup|c*t>|c<rsup|2>+<around*|(|-b-a|)>*c+a*b>-<frac|\<mathe\><rsup|b*t>|<around*|(|b-a|)>*c-b<rsup|2>+a*b>+<frac|\<mathe\><rsup|a*t>|<around*|(|b-a|)>*c-a*b+a<rsup|2>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      ilt(1/(s^2+1),s,t)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>sin <around*|(|t|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      ilt(s/(s^2+1),s,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>cos <around*|(|t|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      ilt(1/(s^2+s+1),s,t)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><frac|2*\<mathe\><rsup|-<frac|t|2>>*sin
      <around*|(|<frac|<sqrt|3>*t|2>|)>|<sqrt|3>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      ilt(1/((s+1)^2*(s+2)),s,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>t*\<mathe\><rsup|-t>-\<mathe\><rsup|-t>+\<mathe\><rsup|-2*t>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      \;
    </input>
  </session>

  \;

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      A:matrix([1,1,1],[0,-1,2],[0,0,2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      II:matrix([1,0,0],[0,1,0],[0,0,1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      sA:s*II-A
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|s-1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|s+1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|s-2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      sAi:invert(sA)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|<frac|1|s-1>>|<cell|<frac|1|<around*|(|s-1|)>*<around*|(|s+1|)>>>|<cell|<frac|s+3|<around*|(|s-2|)>*<around*|(|s-1|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|<frac|1|s+1>>|<cell|<frac|2|<around*|(|s-2|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|0>|<cell|<frac|1|s-2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      ilt(sAi[1,1],s,t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>\<mathe\><rsup|t>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      matrix([ilt(sAi[1,1],s,t),ilt(sAi[1,2],s,t),ilt(sAi[1,3],s,t)],

      \ \ \ \ \ \ \ [ilt(sAi[2,1],s,t),ilt(sAi[2,2],s,t),ilt(sAi[2,3],s,t)],

      \ \ \ \ \ \ \ [ilt(sAi[3,1],s,t),ilt(sAi[3,2],s,t),ilt(sAi[3,3],s,t)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      sAi
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|<frac|1|s-1>>|<cell|<frac|1|<around*|(|s-1|)>*<around*|(|s+1|)>>>|<cell|<frac|s+3|<around*|(|s-2|)>*<around*|(|s-1|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|<frac|1|s+1>>|<cell|<frac|2|<around*|(|s-2|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|0>|<cell|<frac|1|s-2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      sAiC:sAi
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|<frac|1|s-1>>|<cell|<frac|1|<around*|(|s-1|)>*<around*|(|s+1|)>>>|<cell|<frac|s+3|<around*|(|s-2|)>*<around*|(|s-1|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|<frac|1|s+1>>|<cell|<frac|2|<around*|(|s-2|)>*<around*|(|s+1|)>>>>|<row|<cell|0>|<cell|0>|<cell|<frac|1|s-2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      for i:1 thru 3 do

      for j:1 thru 3 do

      (

      a:sAi[i,j],

      b:ilt(a,s,t),

      sAiC[i,j]:b

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      sAiC
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      matrix([%e^t, ((%e^t)/2)-((%e^(-t))/2),
      ((5*%e^(2*t))/3)-2*%e^t+((%e^(-t))/3)], [0, %e^(-t),
      ((2*%e^(2*t))/3)-((2*%e^(-t))/3)], [0, 0, %e^(2*t)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      A
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      eigenvalues(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|[|<around*|[|-1,1,2|]>,<around*|[|1,1,1|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      B:eigenvectors(A)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|<around*|[|<around*|[|-1,1,2|]>,<around*|[|1,1,1|]>|]>,<around*|[|<around*|[|<around*|[|1,-2,0|]>|]>,<around*|[|<around*|[|1,0,0|]>|]>,<around*|[|<around*|[|1,<frac|2|5>,<frac|3|5>|]>|]>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      v1:transpose(matrix(B[2][1][1]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      v2:transpose(matrix(B[2][2][1]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      v3:transpose(matrix(B[2][3][1]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|<frac|2|5>>>|<row|<cell|<frac|3|5>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      V:addcol(v1,v2,v3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|-2>|<cell|0>|<cell|<frac|2|5>>>|<row|<cell|0>|<cell|0>|<cell|<frac|3|5>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      Vi:invert(V)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<frac|1|2>>|<cell|<frac|1|3>>>|<row|<cell|1>|<cell|<frac|1|2>>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|<frac|5|3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      D:Vi.A.V
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      eD:D
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      for i:1 thru 3 do

      eD[i,i]:exp(eD[i,i]*t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      eD
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|-t>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<mathe\><rsup|t>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      V.eD.Vi
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>34) >
    <|unfolded-io>
      matrix([%e^t, ((%e^t)/2)-((%e^(-t))/2),
      ((5*%e^(2*t))/3)-2*%e^t+((%e^(-t))/3)], [0, %e^(-t),
      ((2*%e^(2*t))/3)-((2*%e^(-t))/3)], [0, 0, %e^(2*t)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      expand(matrixexp(A*t))
    <|unfolded-io>
      Proviso: assuming 36*t # 0

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >><matrix|<tformat|<table|<row|<cell|\<mathe\><rsup|t>>|<cell|<frac|\<mathe\><rsup|t>|2>-<frac|\<mathe\><rsup|-t>|2>>|<cell|<frac|5*\<mathe\><rsup|2*t>|3>-2*\<mathe\><rsup|t>+<frac|\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|\<mathe\><rsup|-t>>|<cell|<frac|2*\<mathe\><rsup|2*t>|3>-<frac|2*\<mathe\><rsup|-t>|3>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|2*t>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>38) >
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|<matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>|<cell|>|<cell|>>|<row|<cell|<matrix|<tformat|<table|<row|<cell|s-1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|s+1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|s-2>>>>>>|<cell|>|<cell|>>|<row|<cell|<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|2>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>.<around*|(|<stack|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>|<row|<cell|<matrix|<tformat|<table|<row|<cell|-2>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|0>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|-3>>>>>.<around*|(|<stack|<tformat|<table|<row|<cell|1>>|<row|<cell|-2>>|<row|<cell|0>>>>>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>|<row|<cell|<matrix|<tformat|<table|<row|<cell|1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|3>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>.<around*|(|<stack|<tformat|<table|<row|<cell|5>>|<row|<cell|2>>|<row|<cell|3>>>>>|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|0>>>>>>>|<row|<cell|s
    I-A>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|s-1>|<cell|-1>|<cell|-1>>|<row|<cell|0>|<cell|s+1>|<cell|-2>>|<row|<cell|0>|<cell|0>|<cell|s-2>>>>>>>|<row|<cell|adj<around*|(|s
    I-A|)>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|<around*|(|s-2|)>*<around*|(|s+1|)>>|<cell|s-2>|<cell|s+3>>|<row|<cell|0>|<cell|<around*|(|s-2|)>*<around*|(|s-1|)>>|<cell|2*<around*|(|s-1|)>>>|<row|<cell|0>|<cell|0>|<cell|<around*|(|s-1|)>*<around*|(|s+1|)>>>>>>>>|<row|<cell|<around*|(|adj<around*|(|s
    I-A|)>|)><rsub|s=1>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|-2>|<cell|-1>|<cell|4>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|<around*|(|adj<around*|(|s
    I-A|)>|)><rsub|s=-1>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>|<cell|-3>|<cell|2>>|<row|<cell|0>|<cell|6>|<cell|-4>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>|<row|<cell|<around*|(|adj<around*|(|s
    I-A|)>|)><rsub|s=2>>|<cell|=>|<cell|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|5>>|<row|<cell|0>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|0>|<cell|3>>>>>>>>>
  </eqnarray*>

  \;

  \;

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      S:matrix([0,-omega],[omega,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-\<omega\>>>|<row|<cell|\<omega\>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      eS:matrixexp(S*t)
    <|unfolded-io>
      Proviso: assuming 4*omega*t # 0<math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|<frac|\<mathe\><rsup|-\<mathi\>*\<omega\>*t>*<around*|(|\<mathe\><rsup|2*\<mathi\>*\<omega\>*t>+1|)>|2>>|<cell|<frac|\<mathe\><rsup|-\<mathi\>*\<omega\>*t>*<around*|(|\<mathi\>*\<mathe\><rsup|2*\<mathi\>*\<omega\>*t>-\<mathi\>|)>|2>>>|<row|<cell|-<frac|\<mathe\><rsup|-\<mathi\>*\<omega\>*t>*<around*|(|\<mathi\>*\<mathe\><rsup|2*\<mathi\>*\<omega\>*t>-\<mathi\>|)>|2>>|<cell|<frac|\<mathe\><rsup|-\<mathi\>*\<omega\>*t>*<around*|(|\<mathe\><rsup|2*\<mathi\>*\<omega\>*t>+1|)>|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      eS:expand(demoivre(expand(eS)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<omega\>*t|)>>|<cell|-sin
      <around*|(|\<omega\>*t|)>>>|<row|<cell|sin
      <around*|(|\<omega\>*t|)>>|<cell|cos <around*|(|\<omega\>*t|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      sS:lambda*matrix([1,0],[0,1])-S
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|\<lambda\>>|<cell|\<omega\>>>|<row|<cell|-\<omega\>>|<cell|\<lambda\>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      sSi:invert(sS)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|<frac|\<lambda\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>|<cell|-<frac|\<omega\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>>|<row|<cell|<frac|\<omega\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>|<cell|<frac|\<lambda\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      sSiC:sSi
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|<frac|\<lambda\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>|<cell|-<frac|\<omega\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>>|<row|<cell|<frac|\<omega\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>|<cell|<frac|\<lambda\>|\<lambda\><rsup|2>+\<omega\><rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      assume(omega\<gtr\>0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><around*|[|\<omega\>\<gtr\>0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      for i:1 thru 2 do

      for j:1 thru 2 do

      (

      a:sSi[i,j],

      b:ilt(a,lambda,t),

      sSiC[i,j]:b

      )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      sSiC
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<omega\>*t|)>>|<cell|-sin
      <around*|(|\<omega\>*t|)>>>|<row|<cell|sin
      <around*|(|\<omega\>*t|)>>|<cell|cos <around*|(|\<omega\>*t|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      expand(trigreduce(sin(alpha)^2+cos(alpha)^2-1))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >>0>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>34) >
    <|unfolded-io>
      cos(q[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
      >>cos <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>35) >
    <|unfolded-io>
      c[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
      >>c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      let(cos(q[1]),c[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>cos <around*|(|q<rsub|1>|)>\<longrightarrow\>c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      let(sin(q[1]),s[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>sin <around*|(|q<rsub|1>|)>\<longrightarrow\>s<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      expr:sin(q[1])*cos(q[1])-sin(q[1])^2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>cos <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-sin
      <around*|(|q<rsub|1>|)><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      letsimp(expr)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>c<rsub|1>*s<rsub|1>-s<rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      diff(letsimp(expr),q[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>0>>
    </unfolded-io>
  </session>

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|prog-scripts|maxima>
  </collection>
</initial>