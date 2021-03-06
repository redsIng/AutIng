<TeXmacs|2.1.1>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <space|10em><strong|Matrice di avvitamento
  <math|A<rsub|v><around*|(|z,\<theta\>,d|)>,A<rsub|v><around*|(|x,\<alpha\>,a|)>>>

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
      inverseLaplace(SI,theta):=block([res],\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ aC:M[i,j],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b:ilt(aC,s,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC[i,j]:b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:MC

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|inverseLaplace><around*|(|<math-up|SI>,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,M:<math-up|SI>,<math-up|MC>:<math-up|SI>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|aC>:M<rsub|i,j>,b:<math-up|ilt><around*|(|<math-up|aC>,s,\<vartheta\>|)>,<math-up|MC><rsub|i,j>:b|)>,<math-up|res>:<math-up|MC>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotLaplace(k,theta):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      S[i][j]:0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*k[3-remainder(i+j,3)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:inverseLaplace(invert(s*I-S),theta)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,I:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*k<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,\<vartheta\>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Av(v,theta,d):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Trot:rotLaplace(v,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row:matrix([0,0,0,1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Atemp:addcol(Trot,d*transpose(v)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ A:addrow(Atemp,row),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:trigsimp(trigrat(trigreduce(trigexpand(A))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|Av><around*|(|v,\<vartheta\>,d|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|Trot>:<math-up|rotLaplace><around*|(|v,\<vartheta\>|)>,<math-up|row>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<math-up|Atemp>:<math-up|addcol><around*|(|<math-up|Trot>,d*<math-up|transpose><around*|(|v|)>|)>,A:<math-up|addrow><around*|(|<math-up|Atemp>,<math-up|row>|)>,<math-up|res>:<math-up|trigsimp><around*|(|<math-up|trigrat><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|A|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      A[z](theta,d):=Av([0,0,1],theta,d);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>A<rsub|z><around|(|\<vartheta\>,d|)>\<assign\><math-up|Av><around*|(|<around*|[|0,0,1|]>,\<vartheta\>,d|)>>>
    </unfolded-io>

    <\textput>
      Matrice di avvitamento <math|A<rsub|v><around*|(|z,\<theta\>,d|)>>:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      A[z](theta,d);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|d>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice di avvitamento <math|A<rsub|v><around*|(|x,\<theta\>,d|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      A[x](alpha,a):=Av([1,0,0],alpha,a);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>A<rsub|x><around|(|\<alpha\>,a|)>\<assign\><math-up|Av><around*|(|<around*|[|1,0,0|]>,\<alpha\>,a|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      A[x](alpha,a);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|a>>|<row|<cell|0>|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Q:A[z](q[1],0).A[x](%pi/2,L[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|1>|)>>|<cell|0>|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|0>|<cell|-cos
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      Q01:A[z](0,q[1]).A[x](0,L[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|L<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      Q12:A[z](q[2],0).A[x](-%pi/2,0)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|0>|<cell|-sin
      <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|2>|)>>|<cell|0>|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      Q23:A[z](0,q[3]).A[x](%pi/2,0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|q<rsub|3>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      Q34:A[z](q[4],0).A[x](0,L[4])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|4>|)>>|<cell|-sin
      <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|L<rsub|4>*cos
      <around*|(|q<rsub|4>|)>>>|<row|<cell|sin
      <around*|(|q<rsub|4>|)>>|<cell|cos <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|L<rsub|4>*sin
      <around*|(|q<rsub|4>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      Q03:trigsimp((Q01.Q12.Q23.Q34))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><matrix|<tformat|<table|<row|<cell|cos <around*|(|q<rsub|2>|)>*cos
      <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*sin
      <around*|(|q<rsub|4>|)>>|<cell|-cos <around*|(|q<rsub|2>|)>*sin
      <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*cos
      <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|-L<rsub|4>*sin
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+L<rsub|4>*cos
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>-q<rsub|3>*sin
      <around*|(|q<rsub|2>|)>+L<rsub|1>>>|<row|<cell|cos
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+sin
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>>|<cell|cos
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>-sin
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|L<rsub|4>*cos
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+L<rsub|4>*sin
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>+q<rsub|3>*cos
      <around*|(|q<rsub|2>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      <math|<matrix|<tformat|<table|<row|<cell|-sin
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|3>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>*cos <around*|(|q<rsub|3>|)>>|<cell|-cos
      <around*|(|q<rsub|1>|)>>|<cell|-L<rsub|3>*sin
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|3>|)>-q<rsub|2>*sin
      <around*|(|q<rsub|1>|)>>>|<row|<cell|cos <around*|(|q<rsub|1>|)>*sin
      <around*|(|q<rsub|3>|)>>|<cell|cos <around*|(|q<rsub|1>|)>*cos
      <around*|(|q<rsub|3>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|3>|)>+q<rsub|2>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|cos
      <around*|(|q<rsub|3>|)>>|<cell|-sin
      <around*|(|q<rsub|3>|)>>|<cell|0>|<cell|L<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+L<rsub|1>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      x:L[3]*cos (q[3]+q[1])-q[2]*sin (q[1])+L[2]*cos (q[1])+L[1]*cos (q[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >>L<rsub|3>*cos <around*|(|q<rsub|3>+q<rsub|1>|)>-q<rsub|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+L<rsub|1>*cos <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      y:L[3]*sin (q[3]+q[1])+L[2]*sin (q[1])+L[1]*sin (q[1])+q[2]*cos (q[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >>L<rsub|3>*sin <around*|(|q<rsub|3>+q<rsub|1>|)>+L<rsub|2>*sin
      <around*|(|q<rsub|1>|)>+L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>+q<rsub|2>*cos <around*|(|q<rsub|1>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      subst([L[1]+L[2]=a],factor(expand(trigreduce(expand(x^2+y^2)))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >>2*q<rsub|2>*L<rsub|3>*sin <around*|(|q<rsub|3>|)>+2*L<rsub|2>*L<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+2*L<rsub|1>*L<rsub|3>*cos
      <around*|(|q<rsub|3>|)>+L<rsub|3><rsup|2>+q<rsub|2><rsup|2>+L<rsub|2><rsup|2>+2*L<rsub|1>*L<rsub|2>+L<rsub|1><rsup|2>>>
    </unfolded-io>

    <\folded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|folded-io>
      describe(factor)
    <|folded-io>
      \;

      \;

      \ -- Function: factor

      \ \ \ \ \ \ \ \ \ \ factor (\<expr\>)

      \ \ \ \ \ \ \ \ \ \ factor (\<expr\>, \<p\>)

      \;

      \ \ \ \ \ Factors the expression \<expr\>, containing any number of
      variables

      \ \ \ \ \ or functions, into factors irreducible over the integers.
      \ 'factor

      \ \ \ \ \ (\<expr\>, \<p\>)' factors \<expr\> over the field of
      rationals with an

      \ \ \ \ \ element adjoined whose minimum polynomial is \<p\>.

      \;

      \ \ \ \ \ 'factor' uses 'ifactors' function for factoring integers.

      \;

      \ \ \ \ \ 'factorflag' if 'false' suppresses the factoring of integer
      factors

      \ \ \ \ \ of rational expressions.

      \;

      \ \ \ \ \ 'dontfactor' may be set to a list of variables with respect
      to

      \ \ \ \ \ which factoring is not to occur. \ (It is initially empty).

      \ \ \ \ \ Factoring also will not take place with respect to any
      variables

      \ \ \ \ \ which are less important (using the variable ordering assumed
      for

      \ \ \ \ \ CRE form) than those on the 'dontfactor' list.

      \;

      \ \ \ \ \ 'savefactors' if 'true' causes the factors of an expression
      which

      \ \ \ \ \ is a product of factors to be saved by certain functions in
      order

      \ \ \ \ \ to speed up later factorizations of expressions containing
      some of

      \ \ \ \ \ the same factors.

      \;

      \ \ \ \ \ 'berlefact' if 'false' then the Kronecker factoring algorithm
      will

      \ \ \ \ \ be used otherwise the Berlekamp algorithm, which is the
      default,

      \ \ \ \ \ will be used.

      \;

      \ \ \ \ \ 'intfaclim' if 'true' maxima will give up factorization of
      integers

      \ \ \ \ \ if no factor is found after trial divisions and Pollard's rho

      \ \ \ \ \ method. \ If set to 'false' (this is the case when the user
      calls

      \ \ \ \ \ 'factor' explicitly), complete factorization of the integer
      will be

      \ \ \ \ \ attempted. \ The user's setting of 'intfaclim' is used for
      internal

      \ \ \ \ \ calls to 'factor'. \ Thus, 'intfaclim' may be reset to
      prevent

      \ \ \ \ \ Maxima from taking an inordinately long time factoring large

      \ \ \ \ \ integers.

      \;

      \ \ \ \ \ 'factor_max_degree' if set to a positive integer 'n' will
      prevent

      \ \ \ \ \ certain polynomials from being factored if their degree in
      any

      \ \ \ \ \ variable exceeds 'n'.

      \;

      \ \ \ \ \ See also 'collectterms' and 'sqfr'

      \;

      \ \ \ \ \ Examples:

      \;

      \ \ \ \ \ \ \ \ \ \ (%i1) factor (2^63 - 1);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o1) \ \ \ \ \ \ \ \ \ \ \ \ \ 7 \ 73 127 337
      92737 649657

      \ \ \ \ \ \ \ \ \ \ (%i2) factor (-8*y - 4*x + z^2*(2*y + x));

      \ \ \ \ \ \ \ \ \ \ (%o2) \ \ \ \ \ \ \ \ \ \ \ \ \ \ (2 y + x) (z - 2)
      (z + 2)

      \ \ \ \ \ \ \ \ \ \ (%i3) -1 - 2*x - x^2 + y^2 + 2*x*y^2 + x^2*y^2;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ 2
      \ \ \ \ \ \ \ 2 \ \ \ 2 \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o3) \ \ \ \ \ \ \ \ \ x \ y \ + 2 x y \ + y \ - x
      \ - 2 x - 1

      \ \ \ \ \ \ \ \ \ \ (%i4) block ([dontfactor: [x]], factor (%/36/(1 +
      2*y + y^2)));

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x \ + 2
      x + 1) (y - 1)

      \ \ \ \ \ \ \ \ \ \ (%o4) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ----------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 36
      (y + 1)

      \ \ \ \ \ \ \ \ \ \ (%i5) factor (1 + %e^(3*x));

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x
      \ \ \ \ \ \ \ \ 2 x \ \ \ \ x

      \ \ \ \ \ \ \ \ \ \ (%o5) \ \ \ \ \ \ \ \ \ \ \ \ \ (%e \ + 1) (%e
      \ \ \ - %e \ + 1)

      \ \ \ \ \ \ \ \ \ \ (%i6) factor (1 + x^4, a^2 - 2);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o6) \ \ \ \ \ \ \ \ \ \ \ \ (x \ - a x + 1) (x
      \ + a x + 1)

      \ \ \ \ \ \ \ \ \ \ (%i7) factor (-y^2*z^2 - x*z^2 + x^2*y^2 + x^3);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o7) \ \ \ \ \ \ \ \ \ \ \ \ \ - (y \ + x) (z - x)
      (z + x)

      \ \ \ \ \ \ \ \ \ \ (%i8) (2 + x)/(3 + x)/(b + x)/(c + x)^2;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x
      + 2

      \ \ \ \ \ \ \ \ \ \ (%o8) \ \ \ \ \ \ \ \ \ \ \ \ \ \ ------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x + 3) (x
      + b) (x + c)

      \ \ \ \ \ \ \ \ \ \ (%i9) ratsimp (%);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ (%o9) (x + 2)/(x \ + (2 c + b + 3) x

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ + (c \ + (2 b + 6) c + 3 b) x \ + ((b + 3) c \ +
      6 b c) x + 3 b c )

      \ \ \ \ \ \ \ \ \ \ (%i10) partfrac (%, x);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ (%o10) - (c \ - 4 c - b + 6)/((c \ + (- 2 b - 6) c

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ + (b \ + 12 b + 9) c \ + (- 6 b \ - 18 b) c + 9 b
      ) (x + c))

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c - 2

      \ \ \ \ \ \ \ \ \ \ \ - ---------------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ (c \ + (- b - 3) c + 3 b) (x + c)

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b
      - 2

      \ \ \ \ \ \ \ \ \ \ \ + -------------------------------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ 3 \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ ((b - 3) c \ + (6 b - 2 b ) c + b \ - 3 b )
      (x + b)

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ \ - ----------------------------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ ((b - 3) c \ + (18 - 6 b) c + 9 b - 27) (x +
      3)

      \ \ \ \ \ \ \ \ \ \ (%i11) map ('factor, %);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c \ - 4 c - b + 6
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c - 2

      \ \ \ \ \ \ \ \ \ \ (%o11) - ------------------------- -
      ------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2 \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (c - 3) \ (c - b) \ (x + c)
      \ \ (c - 3) (c - b) (x + c)

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b - 2
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ + ------------------------
      - ------------------------

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (b - 3) (c - b) \ (x +
      b) \ \ (b - 3) (c - 3) \ (x + 3)

      \ \ \ \ \ \ \ \ \ \ (%i12) ratsimp ((x^5 - 1)/(x - 1));

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
      \ \ \ 3 \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o12) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x \ + x \ + x
      \ + x + 1

      \ \ \ \ \ \ \ \ \ \ (%i13) subst (a, x, %);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
      \ \ \ 3 \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o13) \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a \ + a \ + a
      \ + a + 1

      \ \ \ \ \ \ \ \ \ \ (%i14) factor (%th(2), %);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ 3 \ \ \ \ \ \ \ 3 \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ (%o14) \ \ (x - a) (x - a ) (x - a ) (x + a \ + a
      \ + a + 1)

      \ \ \ \ \ \ \ \ \ \ (%i15) factor (1 + x^12);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4
      \ \ \ \ \ \ \ 8 \ \ \ 4

      \ \ \ \ \ \ \ \ \ \ (%o15) \ \ \ \ \ \ \ \ \ \ \ \ \ \ (x \ + 1) (x \ -
      x \ + 1)

      \ \ \ \ \ \ \ \ \ \ (%i16) factor (1 + x^99);

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 2
      \ \ \ \ \ \ \ \ \ \ \ 6 \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ (%o16) (x + 1) (x \ - x + 1) (x \ - x \ + 1)

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ 10 \ \ \ 9 \ \ \ 8 \ \ \ 7 \ \ \ 6 \ \ \ 5
      \ \ \ 4 \ \ \ 3 \ \ \ 2

      \ \ \ \ \ \ \ \ \ \ \ (x \ \ - x \ + x \ - x \ + x \ - x \ + x \ - x
      \ + x \ - x + 1)

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ 20 \ \ \ 19 \ \ \ 17 \ \ \ 16 \ \ \ 14
      \ \ \ 13 \ \ \ 11 \ \ \ 10 \ \ \ 9 \ \ \ 7 \ \ \ 6

      \ \ \ \ \ \ \ \ \ \ \ (x \ \ + x \ \ - x \ \ - x \ \ + x \ \ + x \ \ -
      x \ \ - x \ \ - x \ + x \ + x

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4 \ \ \ 3 \ \ \ \ \ \ \ \ \ \ \ 60 \ \ \ 57
      \ \ \ 51 \ \ \ 48 \ \ \ 42 \ \ \ 39 \ \ \ 33

      \ \ \ \ \ \ \ \ \ \ \ - x \ - x \ + x + 1) (x \ \ + x \ \ - x \ \ - x
      \ \ + x \ \ + x \ \ - x

      \;

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ 30 \ \ \ 27 \ \ \ 21 \ \ \ 18 \ \ \ 12
      \ \ \ 9 \ \ \ 3

      \ \ \ \ \ \ \ \ \ \ \ - x \ \ - x \ \ + x \ \ + x \ \ - x \ \ - x \ + x
      \ + 1)

      \;

      \ \ There are also some inexact matches for `factor'.

      \ \ Try `?? factor' to see them.

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><math-bf|true>>>
    </folded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      dd:<tabular|<tformat|<table|<row|<cell|cos <around*|(|q<rsub|2>|)>*cos
      <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*sin
      <around*|(|q<rsub|4>|)>>|<cell|-cos <around*|(|q<rsub|2>|)>*sin
      <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*cos
      <around*|(|q<rsub|4>|)>>|<cell|0>>|<row|<cell|cos
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+sin
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>>|<cell|cos
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>-sin
      <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>
    <|unfolded-io>
      \;

      incorrect syntax: 0 is not an infix operator

      n (q_2)*cos (q_4) 0\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ^
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      a:-cos <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>-sin
      <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >>-cos <around*|(|<with|math-font-family|rm|q_2>|)>*sin
      <around*|(|<with|math-font-family|rm|q_4>|)>-sin
      <around*|(|<with|math-font-family|rm|q_2>|)>*cos
      <around*|(|<with|math-font-family|rm|q_4>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      trigreduce(cos(q[2])*sin(q[4])+sin(q[2])*cos(q[4]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >>sin <around*|(|q<rsub|4>+q<rsub|2>|)>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|input>
      \;
    </input>
  </session>

  <matrix|<tformat|<table|<row|<cell|cos <around*|(|q<rsub|2>|)>*cos
  <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*sin
  <around*|(|q<rsub|4>|)>>|<cell|-cos <around*|(|q<rsub|2>|)>*sin
  <around*|(|q<rsub|4>|)>-sin <around*|(|q<rsub|2>|)>*cos
  <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|-L<rsub|4>*sin
  <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+L<rsub|4>*cos
  <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>-q<rsub|3>*sin
  <around*|(|q<rsub|2>|)>+L<rsub|1>>>|<row|<cell|cos
  <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+sin
  <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>>|<cell|cos
  <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>-sin
  <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>>|<cell|0>|<cell|L<rsub|4>*cos
  <around*|(|q<rsub|2>|)>*sin <around*|(|q<rsub|4>|)>+L<rsub|4>*sin
  <around*|(|q<rsub|2>|)>*cos <around*|(|q<rsub|4>|)>+q<rsub|3>*cos
  <around*|(|q<rsub|2>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>