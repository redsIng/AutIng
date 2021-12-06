<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\output>
    <text|>

    Maxima 5.44.0 http://maxima.sourceforge.net

    using Lisp SBCL 2.0.0

    Distributed under the GNU Public License. See the file COPYING.

    Dedicated to the memory of William Schelter.

    The function bug_report() provides bug reporting information.
  </output>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>1) >
  <|unfolded-io>
    a: x^x;
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
    >>x<rsup|x>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>2) >
  <|unfolded-io>
    b: diff(a,x,4);
  <|unfolded-io>
    \;

    \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
    >>x<rsup|x-1>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)><rsup|2>+x<rsup|x>*<around*|(|log
    <around*|(|x|)>+1|)><rsup|4>+3*x<rsup|x-1>*<around*|(|log
    <around*|(|x|)>+1|)><rsup|2>+2*x<rsup|x-1>*<around*|(|log
    <around*|(|x|)>+1|)>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)>+<around*|(|<frac|2|x>-<frac|x-1|x<rsup|2>>|)>*x<rsup|x-1>+2*x<rsup|x-2>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>3) >
  <|unfolded-io>
    b
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
    >>x<rsup|x-1>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)><rsup|2>+x<rsup|x>*<around*|(|log
    <around*|(|x|)>+1|)><rsup|4>+3*x<rsup|x-1>*<around*|(|log
    <around*|(|x|)>+1|)><rsup|2>+2*x<rsup|x-1>*<around*|(|log
    <around*|(|x|)>+1|)>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)>+<around*|(|<frac|2|x>-<frac|x-1|x<rsup|2>>|)>*x<rsup|x-1>+2*x<rsup|x-2>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>5) >
  <|unfolded-io>
    c:expand(b)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
    >>x<rsup|x>*log <around*|(|x|)><rsup|4>+4*x<rsup|x>*log
    <around*|(|x|)><rsup|3>+6*x<rsup|x>*log
    <around*|(|x|)><rsup|2>+6*x<rsup|x-1>*log
    <around*|(|x|)><rsup|2>+4*x<rsup|x>*log
    <around*|(|x|)>+12*x<rsup|x-1>*log <around*|(|x|)>-4*x<rsup|x-2>*log
    <around*|(|x|)>+x<rsup|x>+6*x<rsup|x-1>-x<rsup|x-2>+2*x<rsup|x-3>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>6) >
  <|unfolded-io>
    d:factor(c)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
    >>x<rsup|x-3>*<around*|(|x<rsup|3>*log
    <around*|(|x|)><rsup|4>+4*x<rsup|3>*log
    <around*|(|x|)><rsup|3>+6*x<rsup|3>*log
    <around*|(|x|)><rsup|2>+6*x<rsup|2>*log
    <around*|(|x|)><rsup|2>+4*x<rsup|3>*log <around*|(|x|)>+12*x<rsup|2>*log
    <around*|(|x|)>-4*x*log <around*|(|x|)>+x<rsup|3>+6*x<rsup|2>-x+2|)>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>7) >
  <|unfolded-io>
    e:collectterms(c,log(x));
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
    >>x<rsup|x>*log <around*|(|x|)><rsup|4>+4*x<rsup|x>*log
    <around*|(|x|)><rsup|3>+<around*|(|6*x<rsup|x>+6*x<rsup|x-1>|)>*log
    <around*|(|x|)><rsup|2>+<around*|(|4*x<rsup|x>+12*x<rsup|x-1>-4*x<rsup|x-2>|)>*log
    <around*|(|x|)>+x<rsup|x>+6*x<rsup|x-1>-x<rsup|x-2>+2*x<rsup|x-3>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>8) >
  <|unfolded-io>
    e:collectterms(d,log(x));
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
    >>x<rsup|x-3>*<around*|(|x<rsup|3>*log
    <around*|(|x|)><rsup|4>+4*x<rsup|3>*log
    <around*|(|x|)><rsup|3>+6*x<rsup|3>*log
    <around*|(|x|)><rsup|2>+6*x<rsup|2>*log
    <around*|(|x|)><rsup|2>+4*x<rsup|3>*log <around*|(|x|)>+12*x<rsup|2>*log
    <around*|(|x|)>-4*x*log <around*|(|x|)>+x<rsup|3>+6*x<rsup|2>-x+2|)>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>9) >
  <|unfolded-io>
    diff(a)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
    >>x<rsup|x>*<around*|(|log <around*|(|x|)>+1|)>*d*x>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>10) >
  <|unfolded-io>
    diff(x*y)
  <|unfolded-io>
    \;

    \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
    >>x*d*y+y*d*x>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>11) >
  <|unfolded-io>
    integrate(a,x)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
    >><big|int>x<rsup|x>*<space|0.27em>\<mathd\>*<space|0.27em>x>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>12) >
  <|unfolded-io>
    b:diff(a,x)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
    >>x<rsup|x>*<around*|(|log <around*|(|x|)>+1|)>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>14) >
  <|unfolded-io>
    c:integrate(b,x)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
    >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>15) >
  <|unfolded-io>
    ratsimp(c)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
    >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>16) >
  <|unfolded-io>
    expande(c)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
    >><math-up|expande><around*|(|\<mathe\><rsup|x*log <around*|(|x|)>>|)>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>17) >
  <|unfolded-io>
    expand(c)
  <|unfolded-io>
    \;

    \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
    >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>18) >
  <|unfolded-io>
    %i14
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
    >>c:<math-up|integrate><around*|(|b,x|)>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>19) >
  <|unfolded-io>
    %o17
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
    >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>20) >
  <|unfolded-io>
    %
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
    >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>21) >
  <|unfolded-io>
    a = 2x+3;
  <|unfolded-io>
    \;

    incorrect syntax: x is not an infix operator

    a = 2x+

    \ \ \ \ \ ^
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>21) >
  <|unfolded-io>
    a: 2*x+3;
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
    >>2*x+3>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>22) >
  <|unfolded-io>
    diff(a,x)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
    >>2>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>23) >
  <|unfolded-io>
    integrate(%,x)
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
    >>2*x>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>24) >
  <|unfolded-io>
    A:matrix([1,2,3],[3,4,5])
  <|unfolded-io>
    <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
    >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>|<cell|3>>|<row|<cell|3>|<cell|4>|<cell|5>>>>>>>
  </unfolded-io>

  <\unfolded-io>
    <with|color|red|(<with|math-font-family|rm|%i>25) >
  <|unfolded-io>
    A:matrix([1,2],[3,4]);
  <|unfolded-io>
    \;

    \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
    >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>>

    \;

    \;

    \;

    \;
  </unfolded-io>

  Testo <math|<matrix|<tformat|<table|<row|<cell|-2>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|-<frac|1|2>>>>>>>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      B:A;
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>A>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      B: matrix([1,2],[3,4]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      invert(A);
    <|unfolded-io>
      \;

      Maxima encountered a Lisp error:

      \;

      \ The value

      \ \ \ \|$a\|

      \ is not of type

      \ \ \ LIST

      \;

      Automatically continuing.

      To enable the Lisp debugger set *debugger-hook* to nil.
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      C: invert(B);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|-2>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|-<frac|1|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      B.C
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      B.A
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>\<cdot\>A>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      C.B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      B*C
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|-2>|<cell|2>>|<row|<cell|<frac|9|2>>|<cell|-2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      C*B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|-2>|<cell|2>>|<row|<cell|<frac|9|2>>|<cell|-2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      eigenvalue(B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><math-up|eigenvalue><around*|(|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      eig(B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><math-up|eig><around*|(|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      eigenvalue(B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><math-up|eigenvalue><around*|(|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      D:eigenvalues(B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|<around*|[|-<frac|<sqrt|33>-5|2>,<frac|<sqrt|33>+5|2>|]>,<around*|[|1,1|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      D[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><around*|[|-<frac|<sqrt|33>-5|2>,<frac|<sqrt|33>+5|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      D[1,1]
    <|unfolded-io>
      \;

      <math|<with|math-display|true|<text|<verbatim|a><verbatim|p><verbatim|p><verbatim|l><verbatim|y><verbatim|:><verbatim|
      ><verbatim|w><verbatim|r><verbatim|o><verbatim|n><verbatim|g><verbatim|
      ><verbatim|n><verbatim|u><verbatim|m><verbatim|b><verbatim|e><verbatim|r><verbatim|
      ><verbatim|o><verbatim|f><verbatim|
      ><verbatim|i><verbatim|n><verbatim|d><verbatim|i><verbatim|c><verbatim|e><verbatim|s><verbatim|;><verbatim|
      ><verbatim|f><verbatim|o><verbatim|u><verbatim|n><verbatim|d><verbatim|:><verbatim|
      >><around*|[|1,1|]>>>

      \ -- an error. To debug this try: debugmode(true);
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      D[1][1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>-<frac|<sqrt|33>-5|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      D[2][1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>1>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      transpose(B)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|2>|<cell|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      e[x]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >>e<rsub|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      M:matrix([e[x],e[y],e[z]],[1,0,0],[0,1,0]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      det(M)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><math-up|det><around*|(|<matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      determinant(M)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>e<rsub|z>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      R:matrix([cos(theta), -sin(theta)],[sin(theta), cos(theta)]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      R3:R.R.R
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>+2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      expand(trigreduce(R.R))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|2*\<vartheta\>|)>>|<cell|-sin
      <around*|(|2*\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|2*\<vartheta\>|)>>|<cell|cos
      <around*|(|2*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      expand(trigreduce(R.R.R))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><matrix|<tformat|<table|<row|<cell|<frac|cos
      <around*|(|3*\<vartheta\>|)>|2>+cos <around*|(|\<vartheta\>|)>*cos
      <around*|(|2*\<vartheta\>|)>-<frac|cos
      <around*|(|\<vartheta\>|)>|2>>|<cell|-<frac|sin
      <around*|(|3*\<vartheta\>|)>|2>-sin <around*|(|\<vartheta\>|)>*cos
      <around*|(|2*\<vartheta\>|)>-<frac|sin
      <around*|(|\<vartheta\>|)>|2>>>|<row|<cell|<frac|sin
      <around*|(|3*\<vartheta\>|)>|2>+sin <around*|(|\<vartheta\>|)>*cos
      <around*|(|2*\<vartheta\>|)>+<frac|sin
      <around*|(|\<vartheta\>|)>|2>>|<cell|<frac|cos
      <around*|(|3*\<vartheta\>|)>|2>+cos <around*|(|\<vartheta\>|)>*cos
      <around*|(|2*\<vartheta\>|)>-<frac|cos
      <around*|(|\<vartheta\>|)>|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      trigreduce((trigreduce(R.R.R))
    <|unfolded-io>
      \;

      incorrect syntax: Missing )

      (trigreduce(R.R.R));

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ^
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      R3
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>+2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      trigreduce((trigreduce(R3)))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|3*\<vartheta\>|)>>|<cell|-sin
      <around*|(|3*\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|3*\<vartheta\>|)>>|<cell|cos
      <around*|(|3*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>35) >
    <|unfolded-io>
      R1: subst(theta=alpha[1],R)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|1>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      R2:subst(theta=alpha[2], R)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|2>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|2>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|2>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|2>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>38) >
    <|unfolded-io>
      trigreduce(R1.R2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o38>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
    <|unfolded-io>
      R''(3)
    <|unfolded-io>
      \;

      incorrect syntax: '' is not an infix operator

      R''

      \ ^
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
    <|unfolded-io>
      R^^(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>+2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R^4
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<rsup|4>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R(theta):=matrix([cos(theta), -sin(theta)],[sin(theta), cos(theta)]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>R<around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R(1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|cos <around*|(|1|)>>|<cell|-sin
      <around*|(|1|)>>>|<row|<cell|sin <around*|(|1|)>>|<cell|cos
      <around*|(|1|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R(alpha).R(beta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>-sin <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>>|<cell|-cos <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>-sin <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>>>|<row|<cell|cos <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>+sin <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>-sin <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      trigreduce(R(alpha).R(beta))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<beta\>+\<alpha\>|)>>|<cell|-sin
      <around*|(|\<beta\>+\<alpha\>|)>>>|<row|<cell|sin
      <around*|(|\<beta\>+\<alpha\>|)>>|<cell|cos
      <around*|(|\<beta\>+\<alpha\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      a(x):=x^x
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>a<around*|(|x|)>\<assign\>x<rsup|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      a(2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>4>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      a(sin(y))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>sin <around*|(|y|)><rsup|sin <around*|(|y|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      b(f):=block(

      [s,z,t],

      s:f,

      z:diff(f,t),

      s^z

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>b<around*|(|f|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|s,z,t|]>,s:f,z:<math-up|diff><around*|(|f,t|)>,s<rsup|z>|)>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      b(t)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>t>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      b(sin(t))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>sin <around*|(|t|)><rsup|cos <around*|(|t|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      b(t^t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|(|t<rsup|t>|)><rsup|t<rsup|t>*<around*|(|log
      <around*|(|t|)>+1|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      c(x,y):=block(

      [s,z,t],

      s:x+y,

      z:x-y,

      t:[s,z]

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >>c<around*|(|x,y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|s,z,t|]>,s:x+y,z:x-y,t:<around*|[|s,z|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      c(a,b)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><around*|[|b+a,a-b|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      C:c(1,2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><around*|[|3,-1|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      c[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >>c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      C[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>3>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      C[2]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>-1>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|input>
      \;
    </input>
  </session>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
    <associate|prog-scripts|maxima>
  </collection>
</initial>