<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <strong|<space|4em>Procedura 6>:<strong| matrici di rotazione tramite
  trasformata di Laplace>

  Scrivere una procedura che utilizzando la trasformata di Laplace calcoli la
  matrice di

  rotazione intorno all'asse rappresentata dal versore v, di un angolo
  \<theta\>

  <\equation*>
    R<rsub|v><around*|(|\<theta\>|)>=e<rsup|S<around*|(|v|)>*\<theta\>>
  </equation*>

  Per esempio, il calcolo della matrice di rotazione tramite la trasformata
  di Laplace occore seguire i seguenti passi:

  1) Calcolo della matrice <math|S<around*|(|k|)> con k
  \<in\><around*|{|e<rsub|x>,e<rsub|y>,e<rsub|z>|}> con
  e<rsub|x>,e<rsub|y>,e<rsub|z> versori dei rispettivi assi x,y,z>:

  <space|9em><math|S<around*|(|e<rsub|x>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0-1>>|<row|<cell|0<space|1em>1<space|1em>0>>>>>;S<around*|(|e<rsub|y>|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>0<space|1em>0>>|<row|<cell|-1<space|1em>0<space|1em>0>>>>>;S<around*|(|e<rsub|z>|)>=<matrix|<tformat|<table|<row|<cell|0-1<space|1em>0>>|<row|<cell|1<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>0>>>>>.>

  2)Calcolo della matrice <math|s*I-S<around*|(|k|)>> di Laplace con s
  variabile di Laplace e I matrice identità <math|I><math|\<in\>R<rsup|3x3>>:

  <space|5em><math|s*I-S<around*|(|e<rsub|x>|)>=><math|<matrix|<tformat|<table|<row|<cell|s<space|1em>0<space|1em>0>>|<row|<cell|0<space|1em>s-1>>|<row|<cell|0<space|1em>1<space|1em>s>>>>>>;<math|s*I-S<around*|(|e<rsub|y>|)>=><math|<matrix|<tformat|<table|<row|<cell|s<space|1em>0<space|1em>1>>|<row|<cell|0<space|1em>s<space|1em>0>>|<row|<cell|-1
  0<space|1em>s>>>>>;s*I-S<around*|(|e<rsub|z>|)>=><math|<matrix|<tformat|<table|<row|<cell|s-1<space|1em>0>>|<row|<cell|1<space|1em>s<space|1em>0>>|<row|<cell|0<space|1em>0<space|1em>s>>>>>>.

  3)Invertire le matrici appena ottenute:

  <space|13em><math|<around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|1|s>
  <space|1em>0<space|1em>0>>|<row|<cell|0<space|1em><frac|s|s<rsup|2>+1><space|1em><frac|1|s<rsup|2>+1>>>|<row|<cell|0<space|1em><frac|1|s<rsup|2>+1><space|1em><frac|s|s<rsup|2>+1>>>>>>>;\ 

  <space|13em><math|\<space\><around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|0>|<cell|<frac|s|s<rsup|3>+s>>>|<row|<cell|0>|<cell|<frac|s<rsup|2>+1|s<rsup|3>+s>>|<cell|0>>|<row|<cell|-<frac|s|s<rsup|3>+s>>|<cell|0>|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>>>>>>;\ 

  <space|13em><math|<around*|(|s*I-S<around*|(|e<rsub|x>|)>|)><rsup|-1>=<matrix|<tformat|<table|<row|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|-<frac|s|s<rsup|3>+s>>|<cell|0>>|<row|<cell|<frac|s|s<rsup|3>+s>>|<cell|<frac|s<rsup|2>|s<rsup|3>+s>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|s<rsup|2>+1|s<rsup|3>+s>>>>>>>.

  4)Calcolare l'inversa di Laplace della matrici inverse
  <math|\<cal-L\><around*|{|<around*|(|s*I-S<around*|(|k|)>|)><rsup|-1>|}><rsup|-1>>:

  <math|R<rsub|x><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|-sin <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
  <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>;R<rsub|y><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
  <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
  <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
  <around*|(|\<vartheta\>|)>>>>>>;R<rsub|z><around*|(|\<theta\>|)>=<matrix|<tformat|<table|<row|<cell|cos
  <around*|(|\<vartheta\>|)>>|<cell|-sin <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
  <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>

  \;

  \;

  <\session|maxima|default>
    \;

    <\textput>
      La funzione inverseLaplace(SI) calcola e restituisce in output
      l'antitrasformata di Laplace scorrendo tutti gli elementi della matrice
      data in input
    </textput>

    <\input>
      Maxima]

      \;
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      load(matrixfunction)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/Procedure_esame/libreria/matrixfunction.mac
      >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      load(vectorfunction)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/Procedure_esame/libreria/vectorfunction.mac
      >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      inverseLaplace(SI,norma):=block([res],\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ M:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC:SI,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ a:M[i,j],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ b:ilt(a,s,theta*norma),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ MC[i,j]:b

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:MC

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|inverseLaplace><around*|(|<math-up|SI>,<math-up|norma>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,M:<math-up|SI>,<math-up|MC>:<math-up|SI>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><around*|(|a:M<rsub|i,j>,b:<math-up|ilt><around*|(|a,s,\<vartheta\>*<math-up|norma>|)>,<math-up|MC><rsub|i,j>:b|)>,<math-up|res>:<math-up|MC>|)>>>
    </unfolded-io>

    <\textput>
      La funzione rotLaplace(k) riceve in input un vettore <math|v> e calcola
      1), 2), 3). In seguito, invoca la funzione inverseLaplace per
      effettuare 4) e, quindi, restituire in output l'effettiva matrice di
      rotazione corrispondente al versoe in input.\ 
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      rotLaplace(k):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ norm:sqrt(transpose(k).k),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(k*(1/norm)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:trigsimp(trigreduce(expand(inverseLaplace(invert(s*I-S),norm))))
      \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|rotLaplace><around*|(|k|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|norm>:<sqrt|<math-up|transpose><around*|(|k|)>\<cdot\>k>,S:<math-up|skewMatrix><around*|(|k*<around*|(|<frac|1|<math-up|norm>>|)>|)>,I:<math-up|ident><around*|(|3|)>,<math-up|res>:<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|expand><around*|(|<math-up|inverseLaplace><around*|(|<math-up|invert><around*|(|s*I-S|)>,<math-up|norm>|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|x><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R[x](theta):=rotLaplace(matrix([1],[0],[0]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>R<rsub|x><around|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      R[x](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\textput>
      Matrice di rotazione <math|R<rsub|y><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      R[y](theta):=rotLaplace(matrix([0],[1],[0]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>R<rsub|y><around|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|1>>|<row|<cell|0>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[y](theta);
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    \;

    \;

    \;

    \;

    \;

    \;

    \;

    <\textput>
      Matrice di rotazione <math|R<rsub|z><around*|(|\<theta\>|)>:>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      R[z](theta):=rotLaplace(matrix([0],[0],[1]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >>R<rsub|z><around|(|\<vartheta\>|)>\<assign\><math-up|rotLaplace><around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      R[z](theta);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      test:rotLaplace(matrix([1],[1],[0]))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|<frac|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>+1|2>>|<cell|-<frac|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>-1|2>>|<cell|<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|-<frac|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>-1|2>>|<cell|<frac|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>+1|2>>|<cell|-<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>>|<row|<cell|-<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>|<cell|<frac|sin
      <around*|(|<sqrt|2>*\<vartheta\>|)>|<sqrt|2>>>|<cell|cos
      <around*|(|<sqrt|2>*\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      checkR3(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|input>
      test:rotLaplace(matrix([f],[w],[k]))
    </input>

    <\unfolded-io>
      <math|<with|math-display|true|<text|Is
      ><around*|(|w<rsup|2>+k<rsup|2>+f<rsup|2>|)><rsup|2>*<around*|(|w<rsup|4>+f<rsup|2>*<around*|(|w<rsup|2>+k<rsup|2>+f<rsup|2>|)>+<around*|(|2*k<rsup|2>+f<rsup|2>|)>*w<rsup|2>+k<rsup|4>+f<rsup|2>*k<rsup|2>|)><text|positive
      or zero? >>>

      \;
    <|unfolded-io>
      positive
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|<frac|<around*|(|w<rsup|2>+k<rsup|2>|)>*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+f<rsup|2>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|-<frac|k*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+f*w*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-f*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|w*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-f*k*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+f*k|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>|<row|<cell|<frac|k*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-f*w*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+f*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|<around*|(|k<rsup|2>+f<rsup|2>|)>*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+w<rsup|2>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|-<frac|f*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+k*w*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-k*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>|<row|<cell|-<frac|w*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+f*k*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-f*k|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|f*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>*sin
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>-k*w*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+k*w|w<rsup|2>+k<rsup|2>+f<rsup|2>>>|<cell|<frac|<around*|(|w<rsup|2>+f<rsup|2>|)>*cos
      <around*|(|\<vartheta\>*<sqrt|w<rsup|2>+k<rsup|2>+f<rsup|2>>|)>+k<rsup|2>|w<rsup|2>+k<rsup|2>+f<rsup|2>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      stringout("Laplace.mac",functions)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/Laplace.mac >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
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