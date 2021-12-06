<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\with|font-series|bold>
    Procedura 6: calcolo matrici di rotazioni tramite autovalori/autovettori

    \;
  </with>

  Scrivere una procedura che utilizzando gli autovalori/autovettori calcoli
  la matrice di

  rotazione intorno all'asse rappresentata dal versore v, di un angolo
  \<theta\>:

  <\with|par-mode|center>
    <\math>
      S<around*|(|v|)>=V.\<Lambda\>.V<rsup|-1>

      R<rsub|v><around*|(|\<theta\>|)>=V.e<rsup|\<Lambda\>\<theta\>>.V<rsup|-1>
    </math>
  </with>

  In particolare, i passi da seguire sono i seguenti:

  1) <math|S<around*|(|v|)>=V.\<Lambda\>.V<rsup|-1>><space|1em>con V:=
  matrice degli auto vettori come colonne

  <space|11em>\<Lambda\>:= matrice diagonale con gli autovali nella diagonale
  principale

  \;

  2) <math|e<rsup|S<around*|(|v|)>*\<theta\>>=V*e<rsup|\<Lambda\>\<theta\>>*V<rsup|-1>>
  con <math|e<rsup|\<Lambda\>*\<theta\>>\<assign\>matrice diagonale>

  3) <math|R<rsub|v><around*|(|\<theta\>|)>=V.e<rsup|\<Lambda\>\<theta\>>.V<rsup|-1>>

  \;

  <\session|maxima|default>
    <\textput>
      La funzione matRot prende in input una matrice S(v) e ne calcola
      autovalori, disposti nella diagonale principale della matrice
      \<Lambda\>, e autovettori disposti come colonne nella matrice V.

      In seguito, la variabile matExp salva la matrice esponenziale del punto
      2).\ 

      Infine restituisce in output la matrice di rotazione del punto 3):

      <space|15em><math|R<rsub|v><around*|(|\<theta\>|)>=V.e<rsup|\<Lambda\>\<theta\>>.V<rsup|-1>>

      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      matRot(M):=block([V,matExp,eigVect,Lambda,res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ eigVect:eigenvectors(M),

      \ \ \ \ \ \ \ \ \ \ \ \ \ V:transpose(matrix(eigVect[2][1][1],eigVect[2][2][1],eigVect[2][3][1])),

      \ \ \ \ \ \ \ \ \ \ \ \ \ Lambda:matrix([eigVect[1][1][1],0,0],[0,eigVect[1][1][2],0],[0,0,eigVect[1][1][3]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ matExp:matrixexp(Lambda*theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ res:expand(demoivre(expand(V.matExp.invert(V))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|matRot><around*|(|M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|V,<math-up|matExp>,<math-up|eigVect>,\<Lambda\>,<math-up|res>|]>,<math-up|eigVect>:<math-up|eigenvectors><around*|(|M|)>,V:<math-up|transpose><around*|(|<matrix|<tformat|<table|<row|<cell|<around*|(|<math-up|eigVect><rsub|2>|)><rsub|1>>|<cell|1>>|<row|<cell|<around*|(|<math-up|eigVect><rsub|2>|)><rsub|2>>|<cell|1>>|<row|<cell|<around*|(|<math-up|eigVect><rsub|2>|)><rsub|3>>|<cell|1>>>>>|)>,\<Lambda\>:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|eigVect><rsub|1>|)><rsub|1>|)><rsub|1>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<around*|(|<around*|(|<math-up|eigVect><rsub|1>|)><rsub|1>|)><rsub|2>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<around*|(|<around*|(|<math-up|eigVect><rsub|1>|)><rsub|1>|)><rsub|3>>>>>>,<math-up|matExp>:<math-up|matrixexp><around*|(|\<Lambda\>*\<vartheta\>|)>,<math-up|res>:<math-up|expand><around*|(|<math-up|demoivre><around*|(|<math-up|expand><around*|(|V\<cdot\><math-up|matExp>\<cdot\><math-up|invert><around*|(|V|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\textput>
      La funzione rotEigen(k) riceve in input il versore
      <math|e<rsub|x>,e<rsub|y>,e<rsub|z> > ed invoca matRot(M) per il
      calcolo della matrice di rotazione corrispondente. Restituisce in
      output l'effettiva matrice di rotazione corrispondente al versoe in
      input.\ 

      Altrimenti, se il versore inserito è diverso da
      <math|e<rsub|x>,e<rsub|y>,e<rsub|z>> restituisce errore.
    </textput>

    <\textput>
      \;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotEigen(k):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do

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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:matRot(S)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotEigen><around*|(|k|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*k<rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:<math-up|matRot><around*|(|S|)>|)>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|x><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R[x](theta):=rotEigen([1,0,0]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><math-up|rotEigen><around*|(|<around*|[|1,0,0|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R[x](theta);
    <|unfolded-io>
      Proviso: assuming 4*theta # 0<math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Matice di rotazione <math|R<rsub|y><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[y](theta):=rotEigen([0,1,0]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><math-up|rotEigen><around*|(|<around*|[|0,1,0|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[y](theta);
    <|unfolded-io>
      Proviso: assuming 4*theta # 0

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|z><around*|(|\<theta\>|)>:>
    </textput>

    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      R[z](theta):=rotEigen([0,0,1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><math-up|rotEigen><around*|(|<around*|[|0,0,1|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      Proviso: assuming 4*theta # 0<math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
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