<TeXmacs|1.99.17>

<style|<tuple|generic|italian|maxima>>

<\body>
  <with|font-series|bold|Algoritmo di Newton>

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
      X:L[1]*cos(q[1])+L[2]*cos(q[1]+q[2]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>L<rsub|2>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      Y:L[1]*sin(q[1])+L[2]*sin(q[1]+q[2]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>L<rsub|2>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      J:matrix([diff(X,q[1]),diff(X,q[2])],[diff(Y,q[1]),diff(Y,q[2])]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      dJ:trigreduce(expand(determinant(J)));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>L<rsub|1>*L<rsub|2>*sin <around*|(|q<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      AJ:adjoint(J);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      let(sin(q[1]),s[1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>sin <around*|(|q<rsub|1>|)>\<longrightarrow\>s<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      let(sin(q[2]),s[2]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>sin <around*|(|q<rsub|2>|)>\<longrightarrow\>s<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      let(cos(q[1]),c[1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>cos <around*|(|q<rsub|1>|)>\<longrightarrow\>c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      let(cos(q[2]),c[2]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>cos <around*|(|q<rsub|2>|)>\<longrightarrow\>c<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      let(sin(q[1]+q[2]),s[12]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >>sin <around*|(|q<rsub|2>+q<rsub|1>|)>\<longrightarrow\>s<rsub|12>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      let(cos(q[1]+q[2]),c[12]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>cos <around*|(|q<rsub|2>+q<rsub|1>|)>\<longrightarrow\>c<rsub|12>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      dJ:letsimp(dJ)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >>L<rsub|1>*L<rsub|2>*s<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      AJ:letsimp(AJ);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|L<rsub|2>*c<rsub|12>>|<cell|L<rsub|2>*s<rsub|12>>>|<row|<cell|-L<rsub|2>*c<rsub|12>-L<rsub|1>*c<rsub|1>>|<cell|-L<rsub|2>*s<rsub|12>-L<rsub|1>*s<rsub|1>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      JI:AJ/dJ
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|<frac|c<rsub|12>|L<rsub|1>*s<rsub|2>>>|<cell|<frac|s<rsub|12>|L<rsub|1>*s<rsub|2>>>>|<row|<cell|<frac|-L<rsub|2>*c<rsub|12>-L<rsub|1>*c<rsub|1>|L<rsub|1>*L<rsub|2>*s<rsub|2>>>|<cell|<frac|-L<rsub|2>*s<rsub|12>-L<rsub|1>*s<rsub|1>|L<rsub|1>*L<rsub|2>*s<rsub|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      X:letsimp(X);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >>L<rsub|2>*c<rsub|12>+L<rsub|1>*c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      Y:letsimp(Y);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >>L<rsub|2>*s<rsub|12>+L<rsub|1>*s<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      JI.matrix([x-X],[y-Y]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|<frac|s<rsub|12>*<around*|(|y-L<rsub|2>*s<rsub|12>-L<rsub|1>*s<rsub|1>|)>|L<rsub|1>*s<rsub|2>>+<frac|c<rsub|12>*<around*|(|x-L<rsub|2>*c<rsub|12>-L<rsub|1>*c<rsub|1>|)>|L<rsub|1>*s<rsub|2>>>>|<row|<cell|<frac|<around*|(|-L<rsub|2>*s<rsub|12>-L<rsub|1>*s<rsub|1>|)>*<around*|(|y-L<rsub|2>*s<rsub|12>-L<rsub|1>*s<rsub|1>|)>|L<rsub|1>*L<rsub|2>*s<rsub|2>>+<frac|<around*|(|-L<rsub|2>*c<rsub|12>-L<rsub|1>*c<rsub|1>|)>*<around*|(|x-L<rsub|2>*c<rsub|12>-L<rsub|1>*c<rsub|1>|)>|L<rsub|1>*L<rsub|2>*s<rsub|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      X:cos(q[1]+q[2]+q[3])*L[3]+cos(q[1]+q[2])*L[2]+cos(q[1])*L[1];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >>L<rsub|3>*cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      Y:sin(q[1]+q[2]+q[3])*L[3]+sin(q[1]+q[2])*L[2]+sin(q[1])*L[1];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >>L<rsub|3>*sin <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      PHI:q[1]+q[2]+q[3];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>q<rsub|3>+q<rsub|2>+q<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      J:matrix([diff(X,q[1]),diff(X,q[2]),diff(X,q[3])],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ [diff(Y,q[1]),diff(Y,q[2]),diff(Y,q[3])],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ [diff(PHI,q[1]),diff(PHI,q[2]),diff(PHI,q[3])]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      dJ:trigreduce(expand(determinant(J)));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >>L<rsub|1>*L<rsub|2>*sin <around*|(|q<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      AJ:adjoint(J);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>+L<rsub|3>*<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|)>-L<rsub|3>*<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|)>-<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|)>*<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      JI:trigsimp(trigreduce(combine(expand(AJ/dJ))));
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|<frac|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>|L<rsub|1>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|<frac|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|L<rsub|1>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|<frac|L<rsub|3>*sin
      <around*|(|q<rsub|3>|)>|L<rsub|1>*sin
      <around*|(|q<rsub|2>|)>>>>|<row|<cell|-<frac|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|-<frac|L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|-<frac|L<rsub|1>*L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|3>|)>|L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>>|<row|<cell|<frac|cos
      <around*|(|q<rsub|1>|)>|L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|<frac|sin
      <around*|(|q<rsub|1>|)>|L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>|<cell|<frac|L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>|L<rsub|2>*sin <around*|(|q<rsub|2>|)>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      trigsimp(trigreduce(combine(expand(JI.matrix([x-X],[y-Y],[phi-PHI])))));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|<frac|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*y+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*x+L<rsub|3>*sin
      <around*|(|q<rsub|3>|)>*\<varphi\>+<around*|(|<around*|(|-q<rsub|2>-q<rsub|1>|)>*L<rsub|3>-L<rsub|3>*q<rsub|3>|)>*sin
      <around*|(|q<rsub|3>|)>-L<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-L<rsub|1>*cos
      <around*|(|q<rsub|2>|)>-L<rsub|2>|L<rsub|1>*sin
      <around*|(|q<rsub|2>|)>>>>|<row|<cell|-<frac|<around*|(|L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|)>*y+<around*|(|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|)>*x+<around*|(|L<rsub|1>*L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|3>|)>|)>*\<varphi\>+<around*|(|<around*|(|-L<rsub|1>*q<rsub|2>-L<rsub|1>*q<rsub|1>|)>*L<rsub|3>-L<rsub|1>*L<rsub|3>*q<rsub|3>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>-L<rsub|1>*L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|<around*|(|-L<rsub|2>*q<rsub|2>-q<rsub|1>*L<rsub|2>|)>*L<rsub|3>-L<rsub|2>*L<rsub|3>*q<rsub|3>|)>*sin
      <around*|(|q<rsub|3>|)>-L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|3>|)>-2*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-L<rsub|2><rsup|2>-L<rsub|1><rsup|2>|L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>>|<row|<cell|<frac|sin
      <around*|(|q<rsub|1>|)>*y+cos <around*|(|q<rsub|1>|)>*x+<around*|(|L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>|)>*\<varphi\>+<around*|(|<around*|(|-q<rsub|2>-q<rsub|1>|)>*L<rsub|3>-L<rsub|3>*q<rsub|3>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>|)>+<around*|(|-L<rsub|2>*q<rsub|3>-L<rsub|2>*q<rsub|2>-q<rsub|1>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|2>|)>-L<rsub|2>*cos
      <around*|(|q<rsub|2>|)>-L<rsub|1>|L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>>>>>>>
    </unfolded-io>

    <\folded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|folded-io>
      aa:eigenvalues(transpose(J))
    <|folded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><around*|[|<around*|[|<around*|(|<frac|-1|2>-<frac|<sqrt|3>*\<mathi\>|2>|)>*<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>-<frac|<around*|(|<frac|<sqrt|3>*\<mathi\>|2>+<frac|-1|2>|)>*<around*|(|<frac|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|3>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|2>|9>|)>|<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>|3>,<around*|(|<frac|<sqrt|3>*\<mathi\>|2>+<frac|-1|2>|)>*<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>-<frac|<around*|(|<frac|-1|2>-<frac|<sqrt|3>*\<mathi\>|2>|)>*<around*|(|<frac|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|3>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|2>|9>|)>|<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>|3>,<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>-<frac|<frac|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|3>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|2>|9>|<around*|(|<frac|<sqrt|-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+8*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+30*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+12*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+22*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+20*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>-2*L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-16*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-12*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-16*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+34*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+18*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>|)>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|2>*L<rsub|3><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>-2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>-8*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>-12*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>*L<rsub|3><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1><rsup|4>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+6*L<rsub|1><rsup|2>*L<rsub|3><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|<around*|(|2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|<around*|(|2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+16*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-18*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>+20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>-16*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-22*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>-2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>-10*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|6*L<rsub|1>*L<rsub|2>*L<rsub|3>-18*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-12*L<rsub|1>*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|2>*L<rsub|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+4*L<rsub|1><rsup|3>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+8*L<rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1><rsup|4>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|4>+6*L<rsub|1><rsup|3>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+4*L<rsub|1><rsup|2>*L<rsub|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>|)>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|3>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+2*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-4*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-10*L<rsub|1>*L<rsub|2><rsup|3>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+4*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>+6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-4*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)><rsup|2>-8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|-2*L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1>*L<rsub|2><rsup|4>|)>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|4>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>+<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|4*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>-8*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|8*L<rsub|1>*L<rsub|2><rsup|3>-10*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-2*L<rsub|1>*L<rsub|2><rsup|3>*cos
      <around*|(|q<rsub|1>|)>+6*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>+<around*|(|<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-6*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|10*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-8*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|20*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2><rsup|2>|)>*sin
      <around*|(|q<rsub|1>|)>+8*L<rsub|1>*L<rsub|2><rsup|2>*cos
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+<around*|(|2*L<rsub|1><rsup|4>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+4*L<rsub|1><rsup|3>*L<rsub|2>|)>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+<around*|(|6*L<rsub|1><rsup|2>*L<rsub|2>-2*L<rsub|1><rsup|3>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)><rsup|2>+<around*|(|2*L<rsub|1>*L<rsub|2>-8*L<rsub|1><rsup|2>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|1>|)>-4*L<rsub|1>*L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>|)>*sin <around*|(|q<rsub|2>+q<rsub|1>|)>-<around*|(|L<rsub|1><rsup|2>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2><rsup|4>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|4>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|4>-<around*|(|2*L<rsub|1><rsup|3>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|3>*sin
      <around*|(|q<rsub|1>|)>-2*L<rsub|2><rsup|3>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|3>-<around*|(|L<rsub|1><rsup|4>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-6*L<rsub|1><rsup|2>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>-2*L<rsub|1>*L<rsub|2><rsup|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2><rsup|2>|)>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)><rsup|2>-<around*|(|-2*L<rsub|1><rsup|4>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|3>+2*L<rsub|1><rsup|2>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>+2*L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>|)>*cos <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1><rsup|4>*sin
      <around*|(|q<rsub|1>|)><rsup|4>-2*L<rsub|1><rsup|3>*sin
      <around*|(|q<rsub|1>|)><rsup|3>-L<rsub|1><rsup|2>*sin
      <around*|(|q<rsub|1>|)><rsup|2>>|2*3<rsup|<frac|3|2>>>+<frac|<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>*<around*|(|<around*|(|<around*|(|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*cos
      <around*|(|q<rsub|1>|)>-cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|3>-sin
      <around*|(|q<rsub|1>|)>|)>*L<rsub|1>+<around*|(|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>|)>-3*L<rsub|1>*L<rsub|2>*<around*|(|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>*cos <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>*sin
      <around*|(|q<rsub|1>|)>|)>|6>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)><rsup|3>|27>|)><rsup|<frac|1|3>>>+<frac|<around*|(|-1|)>*<around*|(|sin
      <around*|(|q<rsub|1>|)>*L<rsub|1>+<around*|(|-cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|2>+<around*|(|-cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>|)>*L<rsub|3>-1|)>|3>|]>,<around*|[|1,1,1|]>|]>>>
    </folded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      trigsimp(trigreduce(expand(determinant(transpose(J)))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >>L<rsub|1>*L<rsub|2>*sin <around*|(|q<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      J
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      derivate(A):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res[i][j]:diff(A[i][j],q[j]))),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|derivate><around*|(|A|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|res>:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|res><rsub|i>|)><rsub|j>:<math-up|diff><around*|(|<around*|(|A<rsub|i>|)><rsub|j>,q<rsub|j>|)>,<math-up|res>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      H:derivate(J);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      trigsimp(trigreduce(combine(determinant(H))));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >>0>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      J
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>42) >
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|Metodo del gradiente>

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
      X:cos(q[1]+q[2]+q[3])*L[3]+cos(q[1]+q[2])*L[2]+cos(q[1])*L[1];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>L<rsub|3>*cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Y:sin(q[1]+q[2]+q[3])*L[3]+sin(q[1]+q[2])*L[2]+sin(q[1])*L[1];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>L<rsub|3>*sin <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      PHI:q[1]+q[2]+q[3];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>q<rsub|3>+q<rsub|2>+q<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      J:matrix([diff(X,q[1]),diff(X,q[2]),diff(X,q[3])],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ [diff(Y,q[1]),diff(Y,q[2]),diff(Y,q[3])],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ [diff(PHI,q[1]),diff(PHI,q[2]),diff(PHI,q[3])]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|1>|<cell|1>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      trigsimp(trigreduce(combine(expand(transpose(J).matrix([x-X],[y-Y],[phi-PHI])))));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|)>*y+<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|)>*x+\<varphi\>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>|<row|<cell|<around*|(|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*y+<around*|(|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*x+\<varphi\>+L<rsub|1>*L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|1>*L<rsub|2>*sin
      <around*|(|q<rsub|2>|)>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>|<row|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*y-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*x+\<varphi\>+L<rsub|1>*L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*L<rsub|3>*sin
      <around*|(|q<rsub|3>|)>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      J2:trigreduce(derivate(J));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      determinant(J2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >>0>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      let(sin(q[3]+q[2]+q[1]),s_123);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>sin <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|s_123>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      let(cos(q[3]+q[2]+q[1]),c_123);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >>cos <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|c_123>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      let(sin(q[2]+q[1]),s_12);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >>sin <around*|(|q<rsub|2>+q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|s_12>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      let(cos(q[2]+q[1]),c_12);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >>cos <around*|(|q<rsub|2>+q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|c_12>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      let(sin(q[1]),s_1);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>sin <around*|(|q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|s_1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      let(cos(q[1]),c_1);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >>cos <around*|(|q<rsub|1>|)>\<longrightarrow\><with|math-font-family|rm|c_1>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|input>
      \;
    </input>
  </session>

  <math|<matrix|<tformat|<table|<row|<cell|<around*|(|L<rsub|3>*cos
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
  <around*|(|q<rsub|2>+q<rsub|1>|)>+L<rsub|1>*cos
  <around*|(|q<rsub|1>|)>|)>*y+<around*|(|-L<rsub|3>*sin
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
  <around*|(|q<rsub|2>+q<rsub|1>|)>-L<rsub|1>*sin
  <around*|(|q<rsub|1>|)>|)>*x+\<varphi\>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>|<row|<cell|<around*|(|L<rsub|3>*cos
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+L<rsub|2>*cos
  <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*y+<around*|(|-L<rsub|3>*sin
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>-L<rsub|2>*sin
  <around*|(|q<rsub|2>+q<rsub|1>|)>|)>*x+\<varphi\>+L<rsub|1>*L<rsub|3>*sin
  <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|1>*L<rsub|2>*sin
  <around*|(|q<rsub|2>|)>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>|<row|<cell|L<rsub|3>*cos
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*y-L<rsub|3>*sin
  <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>*x+\<varphi\>+L<rsub|1>*L<rsub|3>*sin
  <around*|(|q<rsub|3>+q<rsub|2>|)>+L<rsub|2>*L<rsub|3>*sin
  <around*|(|q<rsub|3>|)>-q<rsub|3>-q<rsub|2>-q<rsub|1>>>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>