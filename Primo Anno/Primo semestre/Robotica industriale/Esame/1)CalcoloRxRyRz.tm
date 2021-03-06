<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <strong|<space|7em>MATRICI DI ROTAZIONE
  <math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>,R<rsub|y><around*|(|\<theta\><rsub|y>|)>,R<rsub|z><around*|(|\<theta\><rsub|z>|)>>>

  \;

  Notazione per esprimere le coordinate di un punto P durante una rotazione
  nel piano:

  <\math>
    P\<assign\>coordinate del punto dopo la rotazione

    <rsup|<rsup|<rsup|<rsup|>>>><wide|P|^>\<assign\>coordinate del punto
    prima della rotazione

    R<rsub|k><around*|(|\<theta\><rsub|k>|)>\<assign\>matrice di rotazione
    rispetto all<rprime|'>asse k \<epsilon\><around*|{|x,y,z|}> di un angolo
    \<theta\><rsub|k>
  </math>

  <\strong>
    <space|8em>Matrice di rotazione attorno all'asse x
    <math|R<rsub|x><around*|(|\<theta\><rsub|x>|)>>
  </strong>

  Nella matrice di rotazione attorno all'asse x, i punti lungo l'asse x
  rimangono invariati mentre gli assi y e z rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione nel piano.

  <\session|maxima|default>
    <\textput>
      La prima riga e la prima colonna sono uguali ad
      <matrix|<tformat|<table|<row|<cell|1 0 0>>>>> e
      <matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>
      poich? il piano che ruota ? yz e la coordinata che rimane invariata ?
      la x.

      Sussistono le seguenti relazioni relazioni:

      \;

      <\eqnarray*>
        <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|x=<wide|x|^>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|y>>|<row|<cell|z>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|y|^>>>|<row|<cell|<wide|z|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|y|^>>>|<row|<cell|<wide|z|^>>>>>>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|Da
        cui:>|<cell|>|<cell|>>>>
      </eqnarray*>

      <\equation*>
        <tabular|<tformat|<table|<row|<cell|x=<wide|x|^>,>>|<row|<cell|y=c*os<around*|(|\<theta\>|)>*<wide|y|^>-sin<around*|(|\<theta\>|)>*<wide|z|^>*>>|<row|<cell|z=sin<around*|(|\<theta\>|)>*<wide|y|^>+cos<around*|(|\<theta\>|)><wide|z|^>>>>>>
      </equation*>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R[x](theta) := matrix([1,0,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,cos(theta),-sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,sin(theta),
      cos(theta)]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R[x](theta[x]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>>>>>>>
    </unfolded-io>
  </session>

  <\strong>
    <space|8em>

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    <space|8em> Matrice di rotazione attorno all'asse y
    <math|R<rsub|y><around*|(|\<theta\><rsub|y>|)>>
  </strong>

  Nella matrice di rotazione attorno all'asse y, i punti lungo l'asse y
  rimangono invariati mentre gli assi z e y rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione del piano.

  La seconda riga e la seconda colonna sono rispettivamente uguali a
  <matrix|<tformat|<table|<row|<cell|0 1 0>>>>> e
  <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>
  poich? il piano che ruota ? zx e la coordinata che rimane sempre inviariata
  ? la y.

  Sussistono le seguenti relazioni:

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|y=<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|z>>|<row|<cell|x>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|z|^>>>|<row|<cell|<wide|x|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|z|^>>>|<row|<cell|<wide|x|^>>>>>>>|<cell|>>|<row|<cell|Dai
    cui:>|<cell|>|<cell|>>|<row|<cell|>|<cell|y=<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|z=cos<around*|(|\<theta\>|)>*<wide|z|^>-sin<around*|(|\<theta\>|)>*<wide|x|^>>|<cell|>>|<row|<cell|>|<cell|x=sin<around*|(|\<theta\>|)><wide|z|^>+cos<around*|(|\<theta\>|)>*<wide|x|^>>|<cell|>>>>
  </eqnarray*>

  <\session|maxima|default>
    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      R[y](theta) := matrix([cos(theta),0,sin(theta)],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,1,0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [-sin(theta),0,
      cos(theta)]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      R[y](theta[y])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      \;
    </input>
  </session>

  <\strong>
    <space|9em>

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    \ 

    \;

    <space|8em>Matrice di rotazione attorno all'asse z
    <math|R<rsub|z><around*|(|\<theta\><rsub|z>|)>>
  </strong>

  Nella matrice di rotazione attorno all'asse z, i punto lungo l'asse z
  rimangono invariati mentre gli assi x e y rappresentano rispettivamente
  l'ascissa e l'ordinata di una rotazione del piano.

  La terza riga e la seconda colonna sono rispettivamente uguali a
  <matrix|<tformat|<table|<row|<cell|0 0 1>>>>> e
  <matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>
  poich? il piano che ruota ? xy e la coordinata che rimane sempre inviariata
  ? la z.

  Sussistono le seguenti relazioni:

  <\eqnarray*>
    <tformat|<cwith|1|1|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|l>|<table|<row|<cell|>|<cell|z=<wide|z|^>>|<cell|>>|<row|<cell|>|<cell|<matrix|<tformat|<table|<row|<cell|x>>|<row|<cell|y>>>>>=R<around*|(|\<theta\>|)>*<matrix|<tformat|<table|<row|<cell|<wide|x|^>>>|<row|<cell|<wide|y|^>>>>>>=<matrix|<tformat|<table|<row|<cell|cos<around*|(|\<theta\>|)><space|1em>-sin<around*|(|\<theta\>|)>>>|<row|<cell|sin<around*|(|\<theta\>|)><space|2em>cos<around*|(|\<theta\>|)>>>>>>*<matrix|<tformat|<table|<row|<cell|<wide|x|^>>>|<row|<cell|<wide|y|^>>>>>>>|<cell|>>|<row|<cell|Dai
    cui:>|<cell|>|<cell|>>|<row|<cell|>|<cell|z=<wide|z|^>>|<cell|>>|<row|<cell|>|<cell|x=cos<around*|(|\<theta\>|)>*<wide|x|^>-sin<around*|(|\<theta\>|)>*<wide|y|^>>|<cell|>>|<row|<cell|>|<cell|y=sin<around*|(|\<theta\>|)><wide|x|^>+cos<around*|(|\<theta\>|)>*<wide|y|^>>|<cell|>>>>
  </eqnarray*>

  <\session|maxima|default>
    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[z](theta) := matrix([cos(theta),-sin(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [sin(theta),cos(theta),0],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [0,0, 1]);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[z](theta[z])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
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