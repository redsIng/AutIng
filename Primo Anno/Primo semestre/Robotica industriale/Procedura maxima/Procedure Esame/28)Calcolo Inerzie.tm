<TeXmacs|2.1.1>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|17em><with|font-series|bold|Matrice di Inerzia>

  Definiamo P:= coordinate di un ponto generico solidale al copro
  (<math|<wide|P|^>>):

  <\equation*>
    \<bbb-I\>=\<rho\><big|int><rsub|V>S<rsup|T><around*|(|P|)>S<around*|(|P|)>\<partial\>V<space|1em>con
    V=<big|int><rsub|V>\<partial\>V,\<rho\>=<frac|M|V>
  </equation*>

  Ipotizziamo che il punto <math|P=<matrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>|<row|<cell|z>>>>>>
  abbia x,y,z sui piani di simmetria del corpo. Allora:

  <\equation*>
    S<rsup|T>S=<matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>\ 
  </equation*>

  Se la densità del corpo \<rho\>=cost:

  <\equation*>
    \<bbb-I\>=<frac|M|V><big|int><big|int><big|int><matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>
    \<partial\>x\<partial\>y\<partial\>z
  </equation*>

  In alternativa:

  <\equation*>
    \<bbb-I\>=<big|int><big|int><big|int>\<rho\><around*|(|x,y,z|)><matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>\<partial\>x\<partial\>y\<partial\>z
  </equation*>

  <with|font-series|bold|Parallelepipedo di lati A,B,C senza tappi>

  <\equation*>
    x\<in\><around*|[|-<frac|A|2>,<frac|A|2>|]>,y\<in\><around*|[|-<frac|B|2>,<frac|B|2>|]>,z\<in\><around*|[|-<frac|C|2>,<frac|C|2>|]>
  </equation*>

  <\equation*>
    \<bbb-I\>=<frac|M|V><big|int><big|int><big|int><matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>
    \<partial\>x\<partial\>y\<partial\>z
  </equation*>

  <\equation*>
    x<rsup|2>\<longrightarrow\><big|int><rsub|-<frac|C|2>><rsup|<frac|C|2>><big|int><rsub|-<frac|B|2>><rsup|<frac|B|2>><big|int><rsub|-<frac|A|2>><rsup|<frac|A|2>>x<rsup|2>\<partial\>x\<partial\>y\<partial\>z=<big|int><rsub|-<frac|C|2>><rsup|<frac|C|2>><big|int><rsub|-<frac|B|2>><rsup|<frac|B|2>><around*|[|<frac|x<rsup|3>|3>|]><rsup|<frac|A|2>><rsub|-<frac|A|2>>=<big|int><rsub|-<frac|C|2>><rsup|<frac|C|2>><big|int><rsub|-<frac|B|2>><rsup|<frac|B|2>><frac|A<rsup|3>|12>\<partial\>y\<partial\>z=<frac|A<rsup|3>|12>BC
  </equation*>

  <\equation*>
    \<rho\>x<rsup|2>\<Rightarrow\><frac|M|ABC><frac|A<rsup|3>|12>BC=<frac|MA<rsup|2>|12>
  </equation*>

  <\equation*>
    y<rsup|2>\<longrightarrow\><frac|MB<rsup|2>|12>;z<rsup|2>\<longrightarrow\><frac|MC<rsup|2>|12>
  </equation*>

  <\equation*>
    xy\<longrightarrow\><big|int><rsub|-<frac|C|2>><rsup|<frac|C|2>><big|int><rsub|-<frac|B|2>><rsup|<frac|B|2>><big|int><rsub|-<frac|A|2>><rsup|<frac|A|2>>xy\<partial\>x\<partial\>y\<partial\>z=<big|int><rsub|-<frac|C|2>><rsup|<frac|C|2>><big|int><rsub|-<frac|B|2>><rsup|<frac|B|2>><around*|[|<frac|x<rsup|2>|2>y|]><rsup|<frac|A|2>><rsub|-<frac|A|2>>\<partial\>y\<partial\>z=0
  </equation*>

  <\equation*>
    xz\<longrightarrow\>0;yz\<longrightarrow\>0
  </equation*>

  Quindi:

  <\equation*>
    \<bbb-I\>=<frac|M|12><matrix|<tformat|<table|<row|<cell|B<rsup|2>+C<rsup|2><space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>A<rsup|2>+C<rsup|2><space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>A<rsup|2>+B<rsup|2>>>>>>
  </equation*>

  \;

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
      SSt:matrix([y^2+z^2,-y*x,-x*z],[-y*z,x^2+z^2,-y*z],[-x*z,-y*z,x^2+y^2]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-y*z>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      paral(A,B,C,M):=block([x2,y2,z2,xy,xz,yz,rho,I],

      \ \ \ \ \ \ \ \ \ \ rho:M/(A*B*C),

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(x^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(y^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(z^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(x*y,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(x*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(y*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(rho*I),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I)

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|paral><around*|(|A,B,C,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<with|math-font-family|rm|x2>,<with|math-font-family|rm|y2>,<with|math-font-family|rm|z2>,<math-up|xy>,<math-up|xz>,<math-up|yz>,\<rho\>,I|]>,\<rho\>:<frac|M|A*B*C>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|z<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*y,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|\<rho\>*I|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      paral(A,B,C,M);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|<around*|(|C<rsup|2>+B<rsup|2>|)>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|C<rsup|2>+A<rsup|2>|)>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|B<rsup|2>+A<rsup|2>|)>*M|12>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|C<rsup|2>+B<rsup|2>|)>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|C<rsup|2>+A<rsup|2>|)>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|B<rsup|2>+A<rsup|2>|)>*M|12>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|Parallelepipedo di lato A,B,C con tappi A',B',C'>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      paral(A,B,C,M):=block([x2,y2,z2,xy,xz,yz,rho,I],

      \ \ \ \ \ \ \ \ \ \ rho:M/(A*B*C),

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(x^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(y^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(z^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(x*y,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(x*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(y*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(rho*I),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I)

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|paral><around*|(|A,B,C,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<with|math-font-family|rm|x2>,<with|math-font-family|rm|y2>,<with|math-font-family|rm|z2>,<math-up|xy>,<math-up|xz>,<math-up|yz>,\<rho\>,I|]>,\<rho\>:<frac|M|A*B*C>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|z<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*y,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|\<rho\>*I|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      paralTappi(A,B,C,A1,B1,C1,M):=block(

      \ \ \ \ \ \ \ \ \ \ V:A*B*C-A1*B1*C1,

      \ \ \ \ \ \ \ \ \ \ rho:M/V,

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(x^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(y^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(z^2,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(x*y,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(x*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(y*z,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2),

      \ \ \ \ \ \ \ \ \ \ x21:integrate(integrate(integrate(x^2,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ y21:integrate(integrate(integrate(y^2,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ z21:integrate(integrate(integrate(z^2,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ xy1:integrate(integrate(integrate(x*y,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ xz1:integrate(integrate(integrate(x*z,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ yz1:integrate(integrate(integrate(y*z,x,-A1/2,A1/2),y,-B1/2,B1/2),z,-C1/2,C1/2),

      \ \ \ \ \ \ \ \ \ \ x2:x2-x21,y2:y2-y21,z2:z2-z21,

      \ \ \ \ \ \ \ \ \ \ xy:xy-xy1,xz:xz-xz1,yz:yz-yz1,

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(expand(rho*I)),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|paralTappi><around*|(|A,B,C,<with|math-font-family|rm|A1>,<with|math-font-family|rm|B1>,<with|math-font-family|rm|C1>,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|V:A*B*C-<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>,\<rho\>:<frac|M|V>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|z<rsup|2>,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*y,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y*z,x,<frac|-A|2>,<frac|A|2>|)>,y,<frac|-B|2>,<frac|B|2>|)>,z,<frac|-C|2>,<frac|C|2>|)>,<with|math-font-family|rm|x21>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x<rsup|2>,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|y21>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y<rsup|2>,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|z21>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|z<rsup|2>,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|xy1>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*y,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|xz1>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|x*z,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|yz1>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|y*z,x,<frac|-<with|math-font-family|rm|A1>|2>,<frac|<with|math-font-family|rm|A1>|2>|)>,y,<frac|-<with|math-font-family|rm|B1>|2>,<frac|<with|math-font-family|rm|B1>|2>|)>,z,<frac|-<with|math-font-family|rm|C1>|2>,<frac|<with|math-font-family|rm|C1>|2>|)>,<with|math-font-family|rm|x2>:<with|math-font-family|rm|x2>-<with|math-font-family|rm|x21>,<with|math-font-family|rm|y2>:<with|math-font-family|rm|y2>-<with|math-font-family|rm|y21>,<with|math-font-family|rm|z2>:<with|math-font-family|rm|z2>-<with|math-font-family|rm|z21>,<math-up|xy>:<math-up|xy>-<with|math-font-family|rm|xy1>,<math-up|xz>:<math-up|xz>-<with|math-font-family|rm|xz1>,<math-up|yz>:<math-up|yz>-<with|math-font-family|rm|yz1>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|\<rho\>*I|)>|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|Parallelepipedo con tappi>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      paralTappi(A,B,C,A1,B1,C1,M);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1><rsup|3>*<with|math-font-family|rm|C1>-A*B*C<rsup|3>-A*B<rsup|3>*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|A1><rsup|3>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-A*B*C<rsup|3>-A<rsup|3>*B*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1><rsup|3>+<with|math-font-family|rm|A1><rsup|3>*<with|math-font-family|rm|B1>|)>*<with|math-font-family|rm|C1>+<around*|(|-A*B<rsup|3>-A<rsup|3>*B|)>*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1><rsup|3>*<with|math-font-family|rm|C1>-A*B*C<rsup|3>-A*B<rsup|3>*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|A1><rsup|3>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-A*B*C<rsup|3>-A<rsup|3>*B*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|<around*|(|<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1><rsup|3>+<with|math-font-family|rm|A1><rsup|3>*<with|math-font-family|rm|B1>|)>*<with|math-font-family|rm|C1>+<around*|(|-A*B<rsup|3>-A<rsup|3>*B|)>*C|)>*M|12*<with|math-font-family|rm|A1>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*A*B*C>>>>>>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|Parallelepipedo senza tappi>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      paralTappi(A,B,C,A,B1,C1,M);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|<around*|(|<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|B1><rsup|3>*<with|math-font-family|rm|C1>-B*C<rsup|3>-B<rsup|3>*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+A<rsup|2>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-B*C<rsup|3>-A<rsup|2>*B*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|<around*|(|<with|math-font-family|rm|B1><rsup|3>+A<rsup|2>*<with|math-font-family|rm|B1>|)>*<with|math-font-family|rm|C1>+<around*|(|-B<rsup|3>-A<rsup|2>*B|)>*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+<with|math-font-family|rm|B1><rsup|3>*<with|math-font-family|rm|C1>-B*C<rsup|3>-B<rsup|3>*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1><rsup|3>+A<rsup|2>*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-B*C<rsup|3>-A<rsup|2>*B*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|<around*|(|<around*|(|<with|math-font-family|rm|B1><rsup|3>+A<rsup|2>*<with|math-font-family|rm|B1>|)>*<with|math-font-family|rm|C1>+<around*|(|-B<rsup|3>-A<rsup|2>*B|)>*C|)>*M|12*<with|math-font-family|rm|B1>*<with|math-font-family|rm|C1>-12*B*C>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
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

  \;

  <\with|font-series|bold>
    Cilindro di raggio R ed altezza H
  </with>

  <\equation*>
    \<bbb-I\>=<frac|M|V><big|int><big|int><big|int><matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>
    \<partial\>x\<partial\>y\<partial\>z
  </equation*>

  <\equation*>
    V=A<rsub|b>*H=\<pi\>R<rsup|2>H
  </equation*>

  <\equation*>
    \<rho\>=<frac|M|\<pi\>R<rsup|2>H>
  </equation*>

  Al fine di svolgere l'integrale, una delle scelte è quella di ricorrere
  alle coordinate cilindriche. In particolare:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=\<rho\>cos<around*|(|\<theta\>|)>>>|<row|<cell|y=\<rho\>sin<around*|(|\<theta\>|)>>>|<row|<cell|z=z>>>>>\<longrightarrow\>\<theta\>\<in\><around*|[|0,2\<pi\>|]>,\<rho\>\<in\><around*|[|0,R|]>,z\<in\><around*|[|-<frac|H|2>,<frac|H|2>|]>
  </equation*>

  <\equation*>
    \;
  </equation*>

  <\equation*>
    \;
  </equation*>

  \;

  <\equation*>
    \;
  </equation*>

  \;

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      cilindro(R,H):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x:rho*cos(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y:rho*sin(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:z,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ V:%pi*R^2*H,

      \ \ \ \ \ \ \ \ \ \ d:M/V,

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(rho*x^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(rho*y^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(rho*z^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(rho*x*y,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(rho*x*z,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(rho*y*z,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp((d*I)),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><math-up|cilindro><around*|(|R,H|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,x:\<rho\>*cos
      <around*|(|\<vartheta\>|)>,y:\<rho\>*sin
      <around*|(|\<vartheta\>|)>,z:z,V:\<pi\>*R<rsup|2>*H,d:<frac|M|V>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*z<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*y,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|d*I|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      cilindro(R,H);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|3*M*R<rsup|2>+H<rsup|2>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|3*M*R<rsup|2>+H<rsup|2>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*R<rsup|2>|2>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|<frac|3*M*R<rsup|2>+H<rsup|2>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|3*M*R<rsup|2>+H<rsup|2>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*R<rsup|2>|2>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|Cilindro di raggio R, altezza H cavo con cilindro
  R',H senza tappi>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      cilindro(R,H,R1):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x:rho*cos(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y:rho*sin(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:z,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ V:%pi*(R)^2*H-%pi*(R1)^2*H,

      \ \ \ \ \ \ \ \ \ \ d:M/V,

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(rho*x^2,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(rho*y^2,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(rho*z^2,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(rho*x*y,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(rho*x*z,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(rho*y*z,theta,0,2*%pi),rho,R1,R),z,0,H),

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(expand(d*I)),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><math-up|cilindro><around*|(|R,H,<with|math-font-family|rm|R1>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,x:\<rho\>*cos
      <around*|(|\<vartheta\>|)>,y:\<rho\>*sin
      <around*|(|\<vartheta\>|)>,z:z,V:\<pi\>*R<rsup|2>*H-\<pi\>*<with|math-font-family|rm|R1><rsup|2>*H,d:<frac|M|V>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*z<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*y,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,z,0,H|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|d*I|)>|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      cilindro(R,H,R[1]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|3*M*R<rsup|2>+<around*|(|4*H<rsup|2>+3*R<rsub|1><rsup|2>|)>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|3*M*R<rsup|2>+<around*|(|4*H<rsup|2>+3*R<rsub|1><rsup|2>|)>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*R<rsup|2>+R<rsub|1><rsup|2>*M|2>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >><matrix|<tformat|<table|<row|<cell|<frac|3*M*R<rsup|2>+<around*|(|4*H<rsup|2>+3*R<rsub|1><rsup|2>|)>*M|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|3*M*R<rsup|2>+<around*|(|4*H<rsup|2>+3*R<rsub|1><rsup|2>|)>*M|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*R<rsup|2>+R<rsub|1><rsup|2>*M|2>>>>>>>>
    </unfolded-io>

    <\textput>
      <with|font-series|bold|Cilindro di raggio R, altezza H cavo con
      cilindro R',H' con tappi>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>52) >
    <|unfolded-io>
      cilindro(R,H):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x:rho*cos(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y:rho*sin(theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:z,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(rho*x^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(rho*y^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(rho*z^2,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(rho*x*y,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(rho*x*z,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(rho*y*z,theta,0,2*%pi),rho,0,R),z,-H/2,H/2),

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(I)

      \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><math-up|cilindro><around*|(|R,H|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,x:\<rho\>*cos
      <around*|(|\<vartheta\>|)>,y:\<rho\>*sin
      <around*|(|\<vartheta\>|)>,z:z,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*z<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*y,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*x*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\>*y*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,z,<frac|-H|2>,<frac|H|2>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>53) >
    <|unfolded-io>
      cilindroSV(R,H,H1,R1):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ V:%pi*R^2*H-%pi*R1^2*H1,

      \ \ \ \ \ \ \ \ \ \ d:M/V,\ 

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(expand(cilindro(R,H))),

      \ \ \ \ \ \ \ \ \ \ Icavo:ratsimp(expand(cilindro(R1,H1))),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(ratsimp(d*I)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
      >><math-up|cilindroSV><around*|(|R,H,<with|math-font-family|rm|H1>,<with|math-font-family|rm|R1>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,V:\<pi\>*R<rsup|2>*H-\<pi\>*<with|math-font-family|rm|R1><rsup|2>*<with|math-font-family|rm|H1>,d:<frac|M|V>,I:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|<math-up|cilindro><around*|(|R,H|)>|)>|)>,<math-up|Icavo>:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|<math-up|cilindro><around*|(|<with|math-font-family|rm|R1>,<with|math-font-family|rm|H1>|)>|)>|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|<math-up|ratsimp><around*|(|d*I|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>54) >
    <|unfolded-io>
      cilindroSV(R,H,H[1],R[1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|<around*|(|3*H<rsub|1>*R<rsub|1><rsup|4>+H<rsub|1><rsup|3>*R<rsub|1><rsup|2>|)>*M|12*H*R<rsup|2>-12*H<rsub|1>*R<rsub|1><rsup|2>>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|3*H<rsub|1>*R<rsub|1><rsup|4>+H<rsub|1><rsup|3>*R<rsub|1><rsup|2>|)>*M|12*H*R<rsup|2>-12*H<rsub|1>*R<rsub|1><rsup|2>>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|H<rsub|1>*R<rsub|1><rsup|4>*M|2*H*R<rsup|2>-2*H<rsub|1>*R<rsub|1><rsup|2>>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o54>)
      >><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|3*H<rsub|1>*R<rsub|1><rsup|4>+H<rsub|1><rsup|3>*R<rsub|1><rsup|2>|)>*M|12*H*R<rsup|2>-12*H<rsub|1>*R<rsub|1><rsup|2>>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|<around*|(|3*H<rsub|1>*R<rsub|1><rsup|4>+H<rsub|1><rsup|3>*R<rsub|1><rsup|2>|)>*M|12*H*R<rsup|2>-12*H<rsub|1>*R<rsub|1><rsup|2>>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|H<rsub|1>*R<rsub|1><rsup|4>*M|2*H*R<rsup|2>-2*H<rsub|1>*R<rsub|1><rsup|2>>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>55) >
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|Sfera di raggio R>

  <\equation*>
    \<bbb-I\>=<frac|M|V><big|int><big|int><big|int><matrix|<tformat|<table|<row|<cell|y<rsup|2>+z<rsup|2><space|1em>-x
    y<space|1em>-x z>>|<row|<cell|-x y<space|1em>x<rsup|2>+z<rsup|2><space|1em>-y
    z>>|<row|<cell|-x z<space|1em>-y z<space|1em>x<rsup|2>+y<rsup|2>>>>>>
    \<partial\>x\<partial\>y\<partial\>z
  </equation*>

  <\equation*>
    V=<frac|4|3>\<pi\>R<rsup|3>
  </equation*>

  <\equation*>
    \<rho\>=<frac|M|<frac|4|3>\<pi\>R<rsup|3>>
  </equation*>

  Al fine di svolgere l'integrale, una delle scelte è quella di ricorrere
  alle coordinate sferiche. In particolare:

  <\equation*>
    <choice|<tformat|<table|<row|<cell|x=\<rho\>sin<around*|(|\<phi\>|)>cos<around*|(|\<theta\>|)>>>|<row|<cell|y=\<rho\>sin<around*|(|\<phi\>|)>sin<around*|(|\<theta\>|)>>>|<row|<cell|z=\<rho\>cos<around*|(|\<phi\>|)>>>>>>\<longrightarrow\>\<theta\>\<in\><around*|[|0;2\<pi\>|]>,\<rho\>\<in\><around*|[|-<frac|R|2>,<frac|R|2>|]>,\<phi\>\<in\><around*|[|0;2\<pi\>|]>
  </equation*>

  \;

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>57) >
    <|unfolded-io>
      sfera(R):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x:rho*cos(theta)*sin(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y:rho*sin(theta)*sin(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:rho*cos(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ V:(4/3)*%pi*(R)^3,

      \ \ \ \ \ \ \ \ \ \ d:M/V,

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(rho^2*sin(phi)*x^2,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(rho^2*sin(phi)*y^2,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(rho^2*sin(phi)*z^2,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(rho^2*sin(phi)*x*y,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(rho^2*sin(phi)*x*z,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(rho^2*sin(phi)*y*z,theta,0,2*%pi),rho,0,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(expand(d*I)),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o57>)
      >><math-up|sfera><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,x:\<rho\>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<varphi\>|)>,y:\<rho\>*sin
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<varphi\>|)>,z:\<rho\>*cos
      <around*|(|\<varphi\>|)>,V:<frac|4|3>*\<pi\>*R<rsup|3>,d:<frac|M|V>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*y<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*z<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x*y,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*y*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,0,R|)>,\<varphi\>,0,\<pi\>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|d*I|)>|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>58) >
    <|unfolded-io>
      sfera(R);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o58>)
      >><matrix|<tformat|<table|<row|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>59) >
    <|input>
      \;
    </input>
  </session>

  <with|font-series|bold|Sfera cava di raggio R e R'>

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
      <with|color|red|(<with|math-font-family|rm|%i>61) >
    <|unfolded-io>
      sfera(R,R1):=block([x,y,z,a,b,c,d],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ x:rho*cos(theta)*sin(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ y:rho*sin(theta)*sin(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ z:rho*cos(phi),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ V:(4/3)*%pi*(R)^3-(4/3)*%pi*(R1)^3,

      \ \ \ \ \ \ \ \ \ \ d:M/V,

      \ \ \ \ \ \ \ \ \ \ x2:integrate(integrate(integrate(rho^2*sin(phi)*x^2,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ y2:integrate(integrate(integrate(rho^2*sin(phi)*y^2,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ z2:integrate(integrate(integrate(rho^2*sin(phi)*z^2,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ xy:integrate(integrate(integrate(rho^2*sin(phi)*x*y,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ xz:integrate(integrate(integrate(rho^2*sin(phi)*x*z,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ yz:integrate(integrate(integrate(rho^2*sin(phi)*y*z,theta,0,2*%pi),rho,R1,R),phi,0,%pi),

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ I:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ I[1][1]:y2+z2,I[1][2]:-xy,I[1][3]:-xz,

      \ \ \ \ \ \ \ \ \ \ I[2][1]:I[1][2],I[2][2]:x2+z2,I[2][3]:-yz,

      \ \ \ \ \ \ \ \ \ \ I[3][1]:I[1][3],I[3][2]:I[2][3],I[3][3]:x2+y2,

      \ \ \ \ \ \ \ \ \ \ I:ratsimp(expand(d*I)),

      \ \ \ \ \ \ \ \ \ \ print("Matrice di Ineriza"),

      \ \ \ \ \ \ \ \ \ \ print(I))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o61>)
      >><math-up|sfera><around*|(|R,<with|math-font-family|rm|R1>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|x,y,z,a,b,c,d|]>,x:\<rho\>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<varphi\>|)>,y:\<rho\>*sin
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<varphi\>|)>,z:\<rho\>*cos
      <around*|(|\<varphi\>|)>,V:<frac|4|3>*\<pi\>*R<rsup|3>-<frac|4|3>*\<pi\>*<with|math-font-family|rm|R1><rsup|3>,d:<frac|M|V>,<with|math-font-family|rm|x2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,<with|math-font-family|rm|y2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*y<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,<with|math-font-family|rm|z2>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*z<rsup|2>,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|xy>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x*y,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|xz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*x*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,<math-up|yz>:<math-up|integrate><around*|(|<math-up|integrate><around*|(|<math-up|integrate><around*|(|\<rho\><rsup|2>*sin
      <around*|(|\<varphi\>|)>*y*z,\<vartheta\>,0,2*\<pi\>|)>,\<rho\>,<with|math-font-family|rm|R1>,R|)>,\<varphi\>,0,\<pi\>|)>,I:<math-up|zeromatrix><around*|(|3,3|)>,<around*|(|I<rsub|1>|)><rsub|1>:<with|math-font-family|rm|y2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|1>|)><rsub|2>:-<math-up|xy>,<around*|(|I<rsub|1>|)><rsub|3>:-<math-up|xz>,<around*|(|I<rsub|2>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|2>,<around*|(|I<rsub|2>|)><rsub|2>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|z2>,<around*|(|I<rsub|2>|)><rsub|3>:-<math-up|yz>,<around*|(|I<rsub|3>|)><rsub|1>:<around*|(|I<rsub|1>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|2>:<around*|(|I<rsub|2>|)><rsub|3>,<around*|(|I<rsub|3>|)><rsub|3>:<with|math-font-family|rm|x2>+<with|math-font-family|rm|y2>,I:<math-up|ratsimp><around*|(|<math-up|expand><around*|(|d*I|)>|)>,<math-up|print><around*|(|<text|Matrice
      di Ineriza >|)>,<math-up|print><around*|(|I|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>62) >
    <|unfolded-io>
      sfera(R,R[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Matrice di Ineriza >>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o62>)
      >><matrix|<tformat|<table|<row|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|2*M*R<rsup|4>+2*R<rsub|1>*M*R<rsup|3>+2*R<rsub|1><rsup|2>*M*R<rsup|2>+2*R<rsub|1><rsup|3>*M*R+2*R<rsub|1><rsup|4>*M|5*R<rsup|2>+5*R<rsub|1>*R+5*R<rsub|1><rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      expand(trigreduce(integrate(cos(theta)^2,theta)))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><frac|sin <around*|(|2*\<vartheta\>|)>|4>+<frac|\<vartheta\>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      integrate(cos(theta),theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>sin <around*|(|\<vartheta\>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      integrate(cos(theta)*sin(theta),theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >>-<frac|cos <around*|(|\<vartheta\>|)><rsup|2>|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      transpose(matrix([1],[0])).transpose(rot2(theta)).rot2(%pi/2).rot2(theta).matrix([1],[0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >>0>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      ex:matrix([1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      ey:matrix([0],[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      point:v[1]*s[1]*rot2(%pi/2).rot2(q[1]).ex+v[1]*s[2]*rot2(%pi/2).rot2(q[1]).ey+v[2]*rot2(q[1]).ex+q[2]*v[1]*rot2(%pi/2).rot2(q[1]).ex+v[1]*L*rot2(%pi/2).rot2(q[1]).ex
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|-v<rsub|1>*sin
      <around*|(|q<rsub|1>|)>*L-v<rsub|1>*q<rsub|2>*sin
      <around*|(|q<rsub|1>|)>-s<rsub|1>*v<rsub|1>*sin
      <around*|(|q<rsub|1>|)>+v<rsub|2>*cos
      <around*|(|q<rsub|1>|)>-v<rsub|1>*s<rsub|2>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|v<rsub|1>*cos
      <around*|(|q<rsub|1>|)>*L+v<rsub|2>*sin
      <around*|(|q<rsub|1>|)>-v<rsub|1>*s<rsub|2>*sin
      <around*|(|q<rsub|1>|)>+v<rsub|1>*q<rsub|2>*cos
      <around*|(|q<rsub|1>|)>+s<rsub|1>*v<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      fullratsimp(trigsimp(expand(trigreduce(expand(transpose(point).point)))))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >>v<rsub|1><rsup|2>*L<rsup|2>+<around*|(|2*v<rsub|1><rsup|2>*q<rsub|2>+2*s<rsub|1>*v<rsub|1><rsup|2>|)>*L+v<rsub|2><rsup|2>-2*v<rsub|1>*s<rsub|2>*v<rsub|2>+v<rsub|1><rsup|2>*s<rsub|2><rsup|2>+v<rsub|1><rsup|2>*q<rsub|2><rsup|2>+2*s<rsub|1>*v<rsub|1><rsup|2>*q<rsub|2>+s<rsub|1><rsup|2>*v<rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      trigsimp(transpose(rot2(theta)).rot2(%pi/2).rot2(theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|input>
      \;
    </input>
  </session>

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>