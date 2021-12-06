<TeXmacs|1.99.13>

<style|<tuple|generic|maxima>>

<\body>
  Testo <math|<matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>

  \;

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
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      a:x^x;
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >>x<rsup|x>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|input>
      b:x^x$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      c:x^x
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>x<rsup|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      d
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>d>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      diff(a,x)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>x<rsup|x>*<around*|(|log <around*|(|x|)>+1|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      b:diff(a,x,4)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>x<rsup|x-1>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)><rsup|2>+x<rsup|x>*<around*|(|log
      <around*|(|x|)>+1|)><rsup|4>+3*x<rsup|x-1>*<around*|(|log
      <around*|(|x|)>+1|)><rsup|2>+2*x<rsup|x-1>*<around*|(|log
      <around*|(|x|)>+1|)>*<around*|(|log
      <around*|(|x|)>+<frac|x-1|x>|)>+<around*|(|<frac|2|x>-<frac|x-1|x<rsup|2>>|)>*x<rsup|x-1>+2*x<rsup|x-2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      c:expand(b)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>x<rsup|x>*log <around*|(|x|)><rsup|4>+4*x<rsup|x>*log
      <around*|(|x|)><rsup|3>+6*x<rsup|x>*log
      <around*|(|x|)><rsup|2>+6*x<rsup|x-1>*log
      <around*|(|x|)><rsup|2>+4*x<rsup|x>*log
      <around*|(|x|)>+12*x<rsup|x-1>*log <around*|(|x|)>-4*x<rsup|x-2>*log
      <around*|(|x|)>+x<rsup|x>+6*x<rsup|x-1>-x<rsup|x-2>+2*x<rsup|x-3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      factor(c)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >>x<rsup|x-3>*<around*|(|x<rsup|3>*log
      <around*|(|x|)><rsup|4>+4*x<rsup|3>*log
      <around*|(|x|)><rsup|3>+6*x<rsup|3>*log
      <around*|(|x|)><rsup|2>+6*x<rsup|2>*log
      <around*|(|x|)><rsup|2>+4*x<rsup|3>*log
      <around*|(|x|)>+12*x<rsup|2>*log <around*|(|x|)>-4*x*log
      <around*|(|x|)>+x<rsup|3>+6*x<rsup|2>-x+2|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      collectterms(c,log(x))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >>x<rsup|x>*log <around*|(|x|)><rsup|4>+4*x<rsup|x>*log
      <around*|(|x|)><rsup|3>+<around*|(|6*x<rsup|x>+6*x<rsup|x-1>|)>*log
      <around*|(|x|)><rsup|2>+<around*|(|4*x<rsup|x>+12*x<rsup|x-1>-4*x<rsup|x-2>|)>*log
      <around*|(|x|)>+x<rsup|x>+6*x<rsup|x-1>-x<rsup|x-2>+2*x<rsup|x-3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      diff(a)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >>x<rsup|x>*<around*|(|log <around*|(|x|)>+1|)>*d*x>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      diff(x*y)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >>x*d*y+y*d*x>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      b
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >>x<rsup|x-1>*<around*|(|log <around*|(|x|)>+<frac|x-1|x>|)><rsup|2>+x<rsup|x>*<around*|(|log
      <around*|(|x|)>+1|)><rsup|4>+3*x<rsup|x-1>*<around*|(|log
      <around*|(|x|)>+1|)><rsup|2>+2*x<rsup|x-1>*<around*|(|log
      <around*|(|x|)>+1|)>*<around*|(|log
      <around*|(|x|)>+<frac|x-1|x>|)>+<around*|(|<frac|2|x>-<frac|x-1|x<rsup|2>>|)>*x<rsup|x-1>+2*x<rsup|x-2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      b:diff(a,x)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>x<rsup|x>*<around*|(|log <around*|(|x|)>+1|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      (integrate(b,x))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>\<mathe\><rsup|x*log <around*|(|x|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      %i22
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >>a:x<rsup|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      %o22
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>x<rsup|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      %
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >>x<rsup|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      A:matrix([1,2],[3,4])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>>
    </unfolded-io>

    <\unfolded-io-math>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io-math>
      B:invert<around*|(|A|)>
    <|unfolded-io-math>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><matrix|<tformat|<table|<row|<cell|-2>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|-<frac|1|2>>>>>>>>
    </unfolded-io-math>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      A.B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      B.A
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>34) >
    <|unfolded-io>
      A*B
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
      >><matrix|<tformat|<table|<row|<cell|-2>|<cell|2>>|<row|<cell|<frac|9|2>>|<cell|-2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      C:eigenvalues(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><around*|[|<around*|[|-<frac|<sqrt|33>-5|2>,<frac|<sqrt|33>+5|2>|]>,<around*|[|1,1|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      C[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >><around*|[|-<frac|<sqrt|33>-5|2>,<frac|<sqrt|33>+5|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>42) >
    <|unfolded-io>
      C[1][1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o42>)
      >>-<frac|<sqrt|33>-5|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>43) >
    <|unfolded-io>
      C[1][1]:2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o43>)
      >>2>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>44) >
    <|unfolded-io>
      C
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o44>)
      >><around*|[|<around*|[|2,<frac|<sqrt|33>+5|2>|]>,<around*|[|1,1|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>45) >
    <|unfolded-io>
      transpose(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o45>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|3>>|<row|<cell|2>|<cell|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>46) >
    <|unfolded-io>
      A
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o46>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|2>>|<row|<cell|3>|<cell|4>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>47) >
    <|unfolded-io>
      e[x]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
      >>e<rsub|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>50) >
    <|unfolded-io>
      M:matrix([e[x],e[y],e[z]],[1,1,1],[1,1,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o50>)
      >><matrix|<tformat|<table|<row|<cell|e<rsub|x>>|<cell|e<rsub|y>>|<cell|e<rsub|z>>>|<row|<cell|1>|<cell|1>|<cell|1>>|<row|<cell|1>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>51) >
    <|unfolded-io>
      determinant(M)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o51>)
      >>e<rsub|y>-e<rsub|x>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>52) >
    <|unfolded-io>
      R:matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>57) >
    <|unfolded-io>
      expand(trigreduce(R.R))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o57>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|2*\<vartheta\>|)>>|<cell|-sin
      <around*|(|2*\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|2*\<vartheta\>|)>>|<cell|cos
      <around*|(|2*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>55) >
    <|unfolded-io>
      R3:R.R.R
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o55>)
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
      <with|color|red|(<with|math-font-family|rm|%i>59) >
    <|unfolded-io>
      trigreduce((trigreduce(R.R.R)))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o59>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|3*\<vartheta\>|)>>|<cell|-sin
      <around*|(|3*\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|3*\<vartheta\>|)>>|<cell|cos
      <around*|(|3*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>60) >
    <|unfolded-io>
      R1:subst(theta=alpha[1],R)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o60>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|1>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>61) >
    <|unfolded-io>
      R2:subst(theta=alpha[2],R)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o61>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|2>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|2>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|2>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|2>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>63) >
    <|unfolded-io>
      trigreduce(R1.R2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o63>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>|<cell|-sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>|<cell|cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>66) >
    <|unfolded-io>
      R^^(4)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o66>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>|)>+sin
      <around*|(|\<vartheta\>|)>*<around*|(|-sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|-sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>|)>-sin <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>|)>+cos
      <around*|(|\<vartheta\>|)>*<around*|(|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>+2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>-2*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)><rsup|2>|)>-sin
      <around*|(|\<vartheta\>|)>*<around*|(|sin
      <around*|(|\<vartheta\>|)>*<around*|(|cos
      <around*|(|\<vartheta\>|)><rsup|2>-sin
      <around*|(|\<vartheta\>|)><rsup|2>|)>+2*cos
      <around*|(|\<vartheta\>|)><rsup|2>*sin
      <around*|(|\<vartheta\>|)>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>67) >
    <|unfolded-io>
      R^(4)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o67>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)><rsup|4>>|<cell|sin
      <around*|(|\<vartheta\>|)><rsup|4>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)><rsup|4>>|<cell|cos
      <around*|(|\<vartheta\>|)><rsup|4>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R(theta):=matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R(1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|cos <around*|(|1|)>>|<cell|-sin
      <around*|(|1|)>>>|<row|<cell|sin <around*|(|1|)>>|<cell|cos
      <around*|(|1|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      trigreduce(R(alpha).R(beta))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
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
      a(sin(y))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>sin <around*|(|y|)><rsup|sin <around*|(|y|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      b(f):=block(

      [s,z,t],

      s:f,

      z:diff(f,t),

      s^z

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>b<around*|(|f|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|s,z,t|]>,s:f,z:<math-up|diff><around*|(|f,t|)>,s<rsup|z>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      b(t)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>t>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      b(sin(t))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>sin <around*|(|t|)><rsup|cos <around*|(|t|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      b(t^t)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><around*|(|t<rsup|t>|)><rsup|t<rsup|t>*<around*|(|log
      <around*|(|t|)>+1|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      c(x,y):=block(

      [s,z,t],

      s:x+y,

      z:x-y,

      t:[s,z]

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>c<around*|(|x,y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|s,z,t|]>,s:x+y,z:x-y,t:<around*|[|s,z|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      c(a,b)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|[|b+a,a-b|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      C:c(1,2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><around*|[|3,-1|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      C[1]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >>3>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      C[2]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >>-1>>
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
    <associate|prog-scripts|maxima>
  </collection>
</initial>