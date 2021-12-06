<TeXmacs|1.99.20>

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
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      a:matrix([1],[2],[3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      b:matrix([1],[0],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      prodvect(a,b)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><math-up|prodvect><around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      load("vectProd")
    <|unfolded-io>
      \;

      \;

      \ <math|<with|math-display|true|<text|<verbatim|f><verbatim|i><verbatim|l><verbatim|e><verbatim|_><verbatim|s><verbatim|e><verbatim|a><verbatim|r><verbatim|c><verbatim|h><verbatim|1><verbatim|:><verbatim|
      >vectProd <verbatim| ><verbatim|n><verbatim|o><verbatim|t><verbatim|
      ><verbatim|f><verbatim|o><verbatim|u><verbatim|n><verbatim|d><verbatim|
      ><verbatim|i><verbatim|n><verbatim|
      ><verbatim|f><verbatim|i><verbatim|l><verbatim|e><verbatim|_><verbatim|s><verbatim|e><verbatim|a><verbatim|r><verbatim|c><verbatim|h><verbatim|_><verbatim|m><verbatim|a><verbatim|x><verbatim|i><verbatim|m><verbatim|a><verbatim|,><verbatim|f><verbatim|i><verbatim|l><verbatim|e><verbatim|_><verbatim|s><verbatim|e><verbatim|a><verbatim|r><verbatim|c><verbatim|h><verbatim|_><verbatim|l><verbatim|i><verbatim|s><verbatim|p><verbatim|.>>>>

      \ -- an error. To debug this try: debugmode(true);
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      vect(a,b)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-up|vect><around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>>>
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