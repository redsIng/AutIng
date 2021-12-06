<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <strong|<space|12em>Parametrizzazione di Cayley>

  La parametrizzazione di Cayley permette di esprimere, attraverso la matrice
  <math|S> antisimmetrica, la corrispettiva matrice di rotazione <math|R> e
  viceversa. La parametrizzazione di Cayley avviene tramite le seguenti
  relazioni:

  <\equation*>
    <around*|(|1|)>S\<longrightarrow\>R=<around*|(|I+S|)>*<around*|(|I-S|)><rsup|-1>\<Longrightarrow\>R<space|1em>
    è \ di rotazione
  </equation*>

  <\equation*>
    <around*|(|2|)>R\<longrightarrow\>S=<around*|(|R+I|)><rsup|-1>*<around*|(|R-I|)>\<Longrightarrow\>S<space|1em>è
    una matrice antisimmetrica
  </equation*>

  In particolare, dato un asse di rotazione <math|v> occorre prima calcolare
  la matrice antisimmetrica S ed in seguito applicare la (1) per ottenere la
  corrispondente matrice di rotazione.\ 

  Alternativamente, data una matrice di rotazione <math|R> occorre applicare
  (2) per ottenere la matrice antisimmetrica corrispondente e, in seguito,
  selezionare all'interno della matrice <math|S> gli elementi dell'asse di
  rotazione <math|v>. Quest'ultimi corrispondono a:

  <\equation*>
    S=<matrix|<tformat|<table|<row|<cell|0<space|1em>-c<space|1em><with|color|red|b>>>|<row|<cell|<with|color|red|c><space|1em>0<space|1em>-a>>|<row|<cell|-b<space|1em><with|color|red|a><space|1em>0>>>>>\<longrightarrow\>v=<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>
  </equation*>

  Ottenuto il vettore <math|v> è possibile calcolare il versore e l'angolo di
  rotazione. Infatti:

  <\equation*>
    v=<frac|v|<around*|\<\|\|\>|v|\<\|\|\>>>*<around*|\<\|\|\>|v|\<\|\|\>><space|1em>in
    cui<space|1em><frac|v|<around*|\<\|\|\>|v|\<\|\|\>>>\<assign\>versore di
    rotazione<space|1em><around*|\<\|\|\>|v|\<\|\|\>>\<assign\>angolo di
    rotazione
  </equation*>

  <strong|<em|N.B.: >><math|<around*|\<\|\|\>|v|\<\|\|\>>> è la norma-2 del
  vettore <math|v>

  Per calcolare correttamente l'angolo di rotazione data la norma del vettore
  <math|v>, poniamo <math|v>=\<alpha\>. Quindi, sussistono le seguenti
  relazioni:

  <\eqnarray*>
    <tformat|<table|<row|<cell|>|<cell|\<alpha\>=<frac|sin<around*|(|\<theta\>|)>|1+cos<around*|(|\<theta\>|)>>\<longrightarrow\>\<alpha\><rsup|2>=<frac|1-cos<around*|(|\<theta\>|)>|1+cos<around*|(|\<theta\>|)>>>|<cell|>>|<row|<cell|<around*|(|i|)>>|<cell|cos<around*|(|\<theta\>|)>=<frac|1-\<alpha\><rsup|2>|1+\<alpha\><rsup|2>>\<equiv\><frac|1-<around*|\<\|\|\>|v|\<\|\|\>><rsup|2>|1+<around*|\<\|\|\>|v|\<\|\|\>><rsup|2>>>|<cell|>>>>
  </eqnarray*>

  <\math>
    Data la pluralità delle soluzioni occorre calcolare anche il
    sin<around*|(|\<theta\>|)>:

    <\text>
      <\equation*>
        sin<around*|(|\<theta\>|)><rsup|2>=1-cos<around*|(|\<theta\>|)><rsup|2>
      </equation*>
    </text>
  </math>

  Sostituendo <math|<around*|(|i|)>>:

  <\equation*>
    sin<around*|(|\<theta\>|)>=\<pm\><frac|2*\<alpha\>|1+\<alpha\><rsup|2>>
  </equation*>

  In cui il segno di sin(\<theta\>) deve soddisfare la condizione in cui
  <math|<around*|\<\|\|\>|v|\<\|\|\>>>\<gtr\>0 cioé:
  <math|<frac|sin<around*|(|\<theta\>|)>|1+cos<around*|(|\<theta\>|)>>\<gtr\>0>.

  Dopodiché l'angolo è univocamente identificato tramite la funzione atan2:

  <\equation*>
    <around*|(|ii|)>\<theta\>=atan2<around*|(|\<pm\><frac|2*\<alpha\>|1+\<alpha\><rsup|2>>,<frac|1-\<alpha\><rsup|2>|1+\<alpha\><rsup|2>>|)>=atan2<around*|(|sin<around*|(|\<theta\>|)>,cos<around*|(|\<theta\>|)>|)>
  </equation*>

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\textput>
      \;

      La funzione degreeVector(x) prende in input un vettore x e ne calcola
      l'angolo come descritto nella procedura (ii) scegliendo opportunamente
      il segno del <math|sin<around*|(|\<theta\>|)>>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      degreeVector(x):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ vNorm:x.x,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ cosTheta:(1-vNorm)/(1+vNorm),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sinTheta:(2*sqrt(vNorm))/(1+vNorm),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
      sinTheta/(1+cosTheta)\<gtr\>0 then \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (degree:atan2(sinTheta,cosTheta))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else
      (degree:atan2(-sinTheta,cosTheta)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:degree

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|degreeVector><around*|(|x|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|vNorm>:x\<cdot\>x,<math-up|cosTheta>:<frac|1-<math-up|vNorm>|1+<math-up|vNorm>>,<math-up|sinTheta>:<frac|2*<sqrt|<math-up|vNorm>>|1+<math-up|vNorm>>,<math-bf|if><space|0.27em><frac|<math-up|sinTheta>|1+<math-up|cosTheta>>\<gtr\>0<space|0.27em><math-bf|then><space|0.27em><math-up|degree>:<math-up|atan2><around*|(|<math-up|sinTheta>,<math-up|cosTheta>|)><space|0.27em><math-bf|else><space|0.27em><math-up|degree>:<math-up|atan2><around*|(|-<math-up|sinTheta>,<math-up|cosTheta>|)>,<math-up|res>:<math-up|degree>|)>>>
    </unfolded-io>

    <\textput>
      La funzione cayleyRotation(a) prende in input un vettore a, ne calcola
      l'antisimmetrica e resistuisce in output la corrispondente matrice di
      rotazione R attraverso la parametrizzazione di Cayley(1).

      In output vi sono per completezza anche la corrispettiva matrice
      antisimmetrica, asse di rotazione e angolo di rotazione.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      cayleyRotation(a):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(a) and
      not symbolp(a) and not subvarp(a) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:skewMatrix(a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ R:(I+S).invert(I-S),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ params:normalize(a,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ degree:degreeVector(params[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ degree:subst(degree,theta,params[2]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Matrice di
      rotazione, Matrice antisimmetrica, asse, angolo"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[facsum(expand(R)),S,params[1],degree],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:"Check
      Arguments")
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><math-up|cayleyRotation><around*|(|a|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|a|)>\<wedge\>\<neg\><math-up|symbolp><around*|(|a|)>\<wedge\>\<neg\><math-up|subvarp><around*|(|a|)><space|0.27em><math-bf|then><space|0.27em><around*|(|S:<math-up|skewMatrix><around*|(|a|)>,I:<math-up|ident><around*|(|3|)>,R:<around*|(|I+S|)>\<cdot\><math-up|invert><around*|(|I-S|)>,<math-up|params>:<math-up|normalize><around*|(|a,\<vartheta\>|)>,<math-up|degree>:<math-up|degreeVector><around*|(|<math-up|params><rsub|1>|)>,<math-up|degree>:<math-up|subst><around*|(|<math-up|degree>,\<vartheta\>,<math-up|params><rsub|2>|)>,<math-up|print><around*|(|<text|Matrice
      di rotazione, Matrice antisimmetrica, asse, angolo
      >|)>,<math-up|res>:<around*|[|<math-up|facsum><around*|(|<math-up|expand><around*|(|R|)>|)>,S,<math-up|params><rsub|1>,<math-up|degree>|]>,<math-up|return><around*|(|<math-up|res>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Check
      Arguments >|)>>>
    </unfolded-io>

    <\textput>
      La funzione cayleySkewMatrix(R) prende in input una matrice R e,
      tramite la parametrizzazione di Cayley, restituisce in output la
      corrispondente matrice antisimmetrica S.

      In particolare, per completezza viene restituito un array contenente la
      matrice di rotazione, la matrice antisimmetrica, asse e angolo di
      rotazione.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      cayleySkewMatrix(R):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if checkR3(R)
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ I:ident(3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(R+I),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:invert(R+I).(R-I),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ v:matrix([S[3][2]],[S[1][3]],[S[2][1]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ params:
      normalize(v,theta),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ degree:degreeVector(params[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ degree:subst(degree,theta,params[2]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Matrice
      di rotazione, Matrice antisimmetrica, asse, angolo"),\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[R,S,params[1],degree],return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:"Matrix
      is not rotation"

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|cayleySkewMatrix><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em><with|math-font-family|rm|checkR3><around*|(|R|)><space|0.27em><math-bf|then><space|0.27em><around*|(|I:<math-up|ident><around*|(|3|)>,<math-up|print><around*|(|R+I|)>,S:<math-up|invert><around*|(|R+I|)>\<cdot\><around*|(|R-I|)>,v:<matrix|<tformat|<table|<row|<cell|<around*|(|S<rsub|3>|)><rsub|2>>>|<row|<cell|<around*|(|S<rsub|1>|)><rsub|3>>>|<row|<cell|<around*|(|S<rsub|2>|)><rsub|1>>>>>>,<math-up|params>:<math-up|normalize><around*|(|v,\<vartheta\>|)>,<math-up|degree>:<math-up|degreeVector><around*|(|<math-up|params><rsub|1>|)>,<math-up|degree>:<math-up|subst><around*|(|<math-up|degree>,\<vartheta\>,<math-up|params><rsub|2>|)>,<math-up|print><around*|(|<text|Matrice
      di rotazione, Matrice antisimmetrica, asse, angolo
      >|)>,<math-up|res>:<around*|[|R,S,<math-up|params><rsub|1>,<math-up|degree>|]>,<math-up|return><around*|(|<math-up|res>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<text|Matrix
      is not rotation >|)>>>
    </unfolded-io>

    <\textput>
      Asse di rotazione versore lungo l'asse x
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      v:matrix([1],[0],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      a:cayleyRotation(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>
    </unfolded-io>

    <\textput>
      \;
    </textput>

    <\textput>
      La prima e la seconda parametrizzazione di Cayley restituiscono gli
      stessi risultati.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      RR:a[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      cayleySkewMatrix(a[1])
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|1>>>>>>>

      <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>|<row|<cell|0>>>>>,<frac|\<pi\>|2>|]>>>
    </unfolded-io>

    <\textput>
      Parametrizzazione di Cayley simbolica:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      v:matrix([alpha],[beta],[gamma])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|\<alpha\>>>|<row|<cell|\<beta\>>>|<row|<cell|\<gamma\>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      a:cayleyRotation(v);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|-<frac|\<gamma\><rsup|2>+\<beta\><rsup|2>-\<alpha\><rsup|2>-1|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|-<frac|2*<around*|(|\<gamma\>-\<alpha\>*\<beta\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|<frac|2*<around*|(|\<alpha\>*\<gamma\>+\<beta\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>>|<row|<cell|<frac|2*<around*|(|\<gamma\>+\<alpha\>*\<beta\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|-<frac|\<gamma\><rsup|2>-\<beta\><rsup|2>+\<alpha\><rsup|2>-1|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|<frac|2*<around*|(|\<beta\>*\<gamma\>-\<alpha\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>>|<row|<cell|<frac|2*<around*|(|\<alpha\>*\<gamma\>-\<beta\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|<frac|2*<around*|(|\<beta\>*\<gamma\>+\<alpha\>|)>|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>|<cell|<frac|\<gamma\><rsup|2>-\<beta\><rsup|2>-\<alpha\><rsup|2>+1|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>+1>>>>>>,<matrix|<tformat|<table|<row|<cell|0>|<cell|-\<gamma\>>|<cell|\<beta\>>>|<row|<cell|\<gamma\>>|<cell|0>|<cell|-\<alpha\>>>|<row|<cell|-\<beta\>>|<cell|\<alpha\>>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|<frac|\<alpha\>|<sqrt|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>>>>>|<row|<cell|<frac|\<beta\>|<sqrt|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>>>>>|<row|<cell|<frac|\<gamma\>|<sqrt|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>>>>>>>>,<frac|\<pi\>*<sqrt|\<gamma\><rsup|2>+\<beta\><rsup|2>+\<alpha\><rsup|2>>|2>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      v:matrix([1],[1],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      a:cayleyRotation(v)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|<frac|1|3>>|<cell|<frac|2|3>>|<cell|<frac|2|3>>>|<row|<cell|<frac|2|3>>|<cell|<frac|1|3>>|<cell|-<frac|2|3>>>|<row|<cell|-<frac|2|3>>|<cell|<frac|2|3>>|<cell|-<frac|1|3>>>>>>,<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|2>>>>|<row|<cell|<frac|1|<sqrt|2>>>>|<row|<cell|0>>>>>,<frac|\<pi\>|<sqrt|2>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      cayleySkewMatrix(a[1])
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|4|3>>|<cell|<frac|2|3>>|<cell|<frac|2|3>>>|<row|<cell|<frac|2|3>>|<cell|<frac|4|3>>|<cell|-<frac|2|3>>>|<row|<cell|-<frac|2|3>>|<cell|<frac|2|3>>|<cell|<frac|2|3>>>>>>>>

      \;

      \ <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|<frac|1|3>>|<cell|<frac|2|3>>|<cell|<frac|2|3>>>|<row|<cell|<frac|2|3>>|<cell|<frac|1|3>>|<cell|-<frac|2|3>>>|<row|<cell|-<frac|2|3>>|<cell|<frac|2|3>>|<cell|-<frac|1|3>>>>>>,<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|2>>>>|<row|<cell|<frac|1|<sqrt|2>>>>|<row|<cell|0>>>>>,<frac|\<pi\>|<sqrt|2>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      stringout("caylay.mac",functions)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/caylay.mac >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      v:matrix([1],[1],[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      a:cayleyRotation(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Matrice di rotazione, Matrice
      antisimmetrica, asse, angolo >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|1>>|<row|<cell|1>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|1>|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|<frac|1|<sqrt|3>>>>|<row|<cell|<frac|1|<sqrt|3>>>>>>>,<frac|<sqrt|3>*\<pi\>|2>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      v
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>|<row|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      rd:rodriguez(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><matrix|<tformat|<table|<row|<cell|1-<frac|2*<around*|(|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|)>|3>>|<cell|<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>-<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>>|<cell|<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>+<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>>>|<row|<cell|<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>+<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>>|<cell|1-<frac|2*<around*|(|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|)>|3>>|<cell|<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>-<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>>>|<row|<cell|<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>-<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>>|<cell|<frac|sin
      <around*|(|<sqrt|3>*\<vartheta\>|)>|<sqrt|3>>+<frac|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|3>>|<cell|1-<frac|2*<around*|(|1-cos
      <around*|(|<sqrt|3>*\<vartheta\>|)>|)>|3>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      rd:subst([theta=0],rd)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      cayleySkewMatrix(rd)
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|2>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|2>>>>>>>

      expt: undefined: 0 to a negative exponent.

      #0: normalize(vect=matrix([0],[0],[0]),angle=theta) (vectorfunction.mac
      line 2)

      #1: cayleySkewMatrix(r=matrix([1,0,0],[0,1,0],[0,0,1]))

      \ -- an error. To debug this try: debugmode(true);
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      cayleyRotation(v)
    <|unfolded-io>
      \;

      expt: undefined: 0 to a negative exponent.

      #0: normalize(vect=matrix([0],[0],[0]),angle=theta) (vectorfunction.mac
      line 2)

      #1: cayleyRotation(a=matrix([0],[0],[0]))

      \ -- an error. To debug this try: debugmode(true);
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
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