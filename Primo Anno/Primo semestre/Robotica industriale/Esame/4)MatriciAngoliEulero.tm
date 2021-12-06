<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <strong|<space|15em>Procedura 4>

  Dimostrare che:

  <space|11em>(1) <math|R<rsub|z><around*|(|\<gamma\>|)>=R<rsub|x><around*|(|\<pm\><frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|\<mp\><frac|\<pi\>|2>|)><space|1em>\<forall\>\<gamma\>>

  Occorre dimostrare che tramite la rappresentazione delle rotazioni nello
  spazio tramite angoli di Eulero è possibile ottentere un qualsiasi
  orientamento arbitrario.

  Ricordiamo, inoltre, che le rotazioni effettuate tramite angoli di Eulero
  prendono in considerazione solamente rotazioni attorno all'asse x e y.

  Quindi il problema si riconduce a quello di dimostrare che è possibile
  ottenere un qualsiasi orientamento dell'asse z tramite rotazioni dei
  restanti due assi. A tale scopo, procediamo con il determinare la matrice
  di rotazione <math|R<rsub|z><around*|(|\<gamma\>|)>>,
  <math|R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>>,<math|R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>>.
  Le ultime due matrici sottratte alla matrice
  <math|R<rsub|z><around*|(|\<gamma\>|)> devono avere come risultato la
  matrice nulla.> Data l'arbitrarietà dell'angolo \<gamma\>, la (1) è
  dimostrata.

  <\session|maxima|default>
    \;

    <\textput>
      R(k,theta) è una funzione per il calcolo delle matrici
      <math|R<rsub|z><around*|(|\<gamma\>|)>,><math|R<rsub|x><around*|(|\<pm\><frac|\<pi\>|2>|)>*,R<rsub|y><around*|(|\<gamma\>|)>,*R<rsub|x><around*|(|\<mp\><frac|\<pi\>|2>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R(k,theta):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if k = x

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then res:matrix([1,0,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta), cos(theta)])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif k = y

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      res:matrix([cos(theta),0,sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
      cos(theta)])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif k = z

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      res:matrix([cos(theta),-sin(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Incorrect axis of
      rotation"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em>k=x<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>><space|0.27em><math-bf|elseif><space|0.27em>k=y<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>><space|0.27em><math-bf|elseif><space|0.27em>k=z<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Incorrect
      axis of rotation >|)>>>
    </unfolded-io>

    <\textput>
      <math|Matrice R<rsub|z><around*|(|\<gamma\>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R[z]:R(z, gamma);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      <math|Matrice R<rsub|x><around*|(|<frac|\<pi\>|2>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R[x]:R(x,%pi/2);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice <math|R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R1[x]:R(x, -(%pi)/2);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|-1>|<cell|0>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice <math|R<rsub|y><around*|(|\<gamma\>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[y]:R(y,gamma);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<gamma\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Procedura per la verifica di <math|R<rsub|z><around*|(|\<gamma\>|)>-R<rsub|x><around*|(|\<pm\><frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|\<mp\><frac|\<pi\>|2>|)>\<equiv\>0>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      proc(z,x,y,x1):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m: z-x.y.x1,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ nullMat:
      matrix([0,0,0],[0,0,0],[0,0,0]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if(m = nullMat)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then res:"La
      proprietà è verificata"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"La proprietà non è
      verificata"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-up|proc><around*|(|z,x,y,<with|math-font-family|rm|x1>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,m:z-x\<cdot\>y\<cdot\><with|math-font-family|rm|x1>,<math-up|nullMat>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>,<math-bf|if><space|0.27em>m=<math-up|nullMat><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<text|La
      proprietà è verificata ><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|La
      proprietà non è verificata >|)>>>
    </unfolded-io>

    <\textput>
      Verifica di <math|R<rsub|z><around*|(|\<gamma\>|)>-R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>\<equiv\>0<space|1em>\<forall\>\<gamma\>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      proc(R[z],R[x],R[y],R1[x]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >La proprietà è verificata >>>
    </unfolded-io>

    <\textput>
      Matrice <math|R<rsub|y><around*|(|-\<gamma\>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R1[y]:R(y,-gamma);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|0>|<cell|-sin
      <around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|sin
      <around*|(|\<gamma\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<gamma\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Verifica di <math|R<rsub|z><around*|(|\<gamma\>|)>+R<rsub|x><around*|(|-<frac|\<pi\>|2>|)>*R<rsub|y><around*|(|-\<gamma\>|)>*R<rsub|x><around*|(|+<frac|\<pi\>|2>|)>\<equiv\>0<space|1em>\<forall\>\<gamma\>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      proc(R[z],R1[x],R1[y],R[x]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >La proprietà è verificata >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      R(x,alpha).R(y,beta).R(x,gamma)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<beta\>|)>>|<cell|sin <around*|(|\<beta\>|)>*sin
      <around*|(|\<gamma\>|)>>|<cell|sin <around*|(|\<beta\>|)>*cos
      <around*|(|\<gamma\>|)>>>|<row|<cell|sin <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<gamma\>|)>-sin <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>*sin <around*|(|\<gamma\>|)>>|<cell|-cos
      <around*|(|\<alpha\>|)>*sin <around*|(|\<gamma\>|)>-sin
      <around*|(|\<alpha\>|)>*cos <around*|(|\<beta\>|)>*cos
      <around*|(|\<gamma\>|)>>>|<row|<cell|-cos <around*|(|\<alpha\>|)>*sin
      <around*|(|\<beta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<beta\>|)>*sin <around*|(|\<gamma\>|)>+sin
      <around*|(|\<alpha\>|)>*cos <around*|(|\<gamma\>|)>>|<cell|cos
      <around*|(|\<alpha\>|)>*cos <around*|(|\<beta\>|)>*cos
      <around*|(|\<gamma\>|)>-sin <around*|(|\<alpha\>|)>*sin
      <around*|(|\<gamma\>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|input>
      \;
    </input>
  </session>

  <math|<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<beta\>|)>>|<cell|sin <around*|(|\<beta\>|)>*sin
  <around*|(|\<gamma\>|)>>|<cell|sin <around*|(|\<beta\>|)>*cos
  <around*|(|\<gamma\>|)>>>|<row|<cell|sin <around*|(|\<alpha\>|)>*sin
  <around*|(|\<beta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
  <around*|(|\<gamma\>|)>-sin <around*|(|\<alpha\>|)>*cos
  <around*|(|\<beta\>|)>*sin <around*|(|\<gamma\>|)>>|<cell|-cos
  <around*|(|\<alpha\>|)>*sin <around*|(|\<gamma\>|)>-sin
  <around*|(|\<alpha\>|)>*cos <around*|(|\<beta\>|)>*cos
  <around*|(|\<gamma\>|)>>>|<row|<cell|-cos <around*|(|\<alpha\>|)>*sin
  <around*|(|\<beta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
  <around*|(|\<beta\>|)>*sin <around*|(|\<gamma\>|)>+sin
  <around*|(|\<alpha\>|)>*cos <around*|(|\<gamma\>|)>>|<cell|cos
  <around*|(|\<alpha\>|)>*cos <around*|(|\<beta\>|)>*cos
  <around*|(|\<gamma\>|)>-sin <around*|(|\<alpha\>|)>*sin
  <around*|(|\<gamma\>|)>>>>>>>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>