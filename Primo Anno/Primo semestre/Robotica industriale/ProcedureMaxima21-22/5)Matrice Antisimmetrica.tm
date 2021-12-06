<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\center>
    <strong|Matrice antisimmetrica>
  </center>

  Dato un vettore <math|v\<in\><matrix|<tformat|<table|<row|<cell|v<rsub|x>>>|<row|<cell|v<rsub|y>>>|<row|<cell|v<rsub|z>>>>>>\<in\>\<bbb-R\><rsup|3>>
  matrice <math|S<around*|(|v|)>> è antisimmetrica se è nella forma:

  <\equation*>
    S<around*|(|v|)>=<matrix|<tformat|<table|<row|<cell|0>|<cell|-v<rsub|z>>|<cell|v<rsub|y>>>|<row|<cell|v<rsub|z>>|<cell|0>|<cell|-v<rsub|x>>>|<row|<cell|-v<rsub|y>>|<cell|v<rsub|x>>|<cell|0>>>>>
  </equation*>

  Dato un vettore genera la corrispondente matrice antisimmetrica. Inoltre,
  occorre controllare in maniera opportuna gli input in ingresso.

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      skewMatrix(v):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeV:size(v),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(v) and
      sizeV[2]=1 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m:sizeV[1],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:zeromatrix(m,m),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru m do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru m do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
      S[i][j]:0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*v[m-remainder(i+j,m)][1],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))else return("Insert
      column axis or a non scalar input"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:S

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|skewMatrix><around*|(|v|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|sizeV>:<math-up|size><around*|(|v|)>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|v|)>\<wedge\><math-up|sizeV><rsub|2>=1<space|0.27em><math-bf|then><space|0.27em><around*|(|m:<math-up|sizeV><rsub|1>,S:<math-up|zeromatrix><around*|(|m,m|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>m<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>m<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*<around*|(|v<rsub|m-<math-up|remainder><around*|(|i+j,m|)>>|)><rsub|1>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|return><around*|(|<text|Insert
      column axis or a non scalar input >|)>,<math-up|res>:S|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      test:matrix([1],[2],[3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>|<row|<cell|3>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-3>|<cell|2>>|<row|<cell|3>|<cell|0>|<cell|-1>>|<row|<cell|-2>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      skewMatrix(a)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >Insert column axis or a non scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      skewMatrix(transpose(test))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >Insert column axis or a non scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      skewMatrix(1/2*test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<frac|3|2>>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|0>|<cell|-<frac|1|2>>>|<row|<cell|-1>|<cell|<frac|1|2>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      test:matrix([a],[a[1]],[b+c*sqrt(2)])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<sqrt|2>*c-b>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>|<cell|0>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      test:matrix([1],[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|2>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      skewMatrix(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>>|<row|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      stringout("skew.mac",functions)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/skew.mac >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|input>
      \;
    </input>
  </session>

  <center|<strong|Vettore da matrice antisimmetrica>>

  Data una matrice qualsiasi, verificare se essa è antisimmetrica e ritornare
  l'effettivo valore.

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      checkSkew(M):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeV:size(M),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(M) and
      sizeV[1]=sizeV[2] and sizeV[1]#1 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru sizeV[1] do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:i thru sizeV[1] do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j and M[i][j]#0
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:false

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif i#j and
      M[i][j]#-M[j][i] then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:false

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if res=false then
      \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if res=false then
      \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ), if res=false then
      \ return(res),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:true,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return(res)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else return("Input non è una
      matrice")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><math-up|checkSkew><around*|(|M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|sizeV>:<math-up|size><around*|(|M|)>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|M|)>\<wedge\><math-up|sizeV><rsub|1>=<math-up|sizeV><rsub|2>\<wedge\><math-up|sizeV><rsub|1>\<neq\>1<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|sizeV><rsub|1><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-bf|for><space|0.27em>j<space|0.27em><math-bf|from><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|sizeV><rsub|1><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-bf|if><space|0.27em>i=j\<wedge\><around*|(|M<rsub|i>|)><rsub|j>\<neq\>0<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<math-bf|false><space|0.27em><math-bf|elseif><space|0.27em>i\<neq\>j\<wedge\><around*|(|M<rsub|i>|)><rsub|j>\<neq\>-<around*|(|M<rsub|j>|)><rsub|i><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<math-bf|false>,<math-bf|if><space|0.27em><math-up|res>=<math-bf|false><space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<math-up|res>|)>|)>,<math-bf|if><space|0.27em><math-up|res>=<math-bf|false><space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<math-up|res>|)>|)>,<math-bf|if><space|0.27em><math-up|res>=<math-bf|false><space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<math-up|res>|)>,<math-up|res>:<math-bf|true>,<math-up|return><around*|(|<math-up|res>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|return><around*|(|<text|Input
      non è una matrice >|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      test:matrix([1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >Input non è una matrice >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      test:matrix([0, -(3/2), 1], [(3/2), 0, -(1/2)], [-1, (1/2), 0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<frac|3|2>>|<cell|1>>|<row|<cell|<frac|3|2>>|<cell|0>|<cell|-<frac|1|2>>>|<row|<cell|-1>|<cell|<frac|1|2>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      test:matrix([0, -sqrt(2)*c-b, a[1]], [sqrt(2)*c+b, 0, -a], [-a[1], a,
      0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<sqrt|2>*c-b>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>|<cell|0>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><math-bf|true>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      test:test+ident(3)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|-<sqrt|2>*c-b>|<cell|a<rsub|1>>>|<row|<cell|<sqrt|2>*c+b>|<cell|1>|<cell|-a>>|<row|<cell|-a<rsub|1>>|<cell|a>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      test:zeromatrix(3,3)+matrix([0,1,0],[0,0,a],[0,0,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|a>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      checkSkew(test)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      stringout("checkskew.mac",functions)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/checkskew.mac >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
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