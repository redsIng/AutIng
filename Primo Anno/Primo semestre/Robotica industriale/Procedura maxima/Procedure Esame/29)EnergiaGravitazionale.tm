<TeXmacs|1.99.17>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|15em><with|font-series|bold|Energia Gravitazionale>

  <em|Scrivere una procedura Maxima che, prendendo in ingresso la tabella di
  Denavit-Harten-berg e le informazioni necessarie per individuare i
  baricentri dei link, restituisca: energia gravitazionale per ogni link e
  per l'intero robot.>

  Si definisce energia potenziale ed in particolare dovuta alla forza di
  gravità:

  <\equation*>
    U=-M*g<rsup|T>d<space|2em>
  </equation*>

  <math|In cui:g=9,8*e<rsub|z>\<backsimeq\>10e<rsub|z>;d\<assign\>coordinate
  nel baricentro.>

  Inoltre, l'energia gravitazionale di u robot equivale a:

  <\equation*>
    U=<big|sum><rsub|i=1<rsup|>><rsup|n>U<rsub|i><space|1em>con
    n\<assign\>numero di link del robot
  </equation*>

  <\session|maxima|default>
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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:A

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|Av><around*|(|v,\<vartheta\>,d|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|Trot>:<math-up|rotLaplace><around*|(|v,\<vartheta\>|)>,<math-up|row>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<math-up|Atemp>:<math-up|addcol><around*|(|<math-up|Trot>,d*<math-up|transpose><around*|(|v|)>|)>,A:<math-up|addrow><around*|(|<math-up|Atemp>,<math-up|row>|)>,<math-up|res>:A|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      Q(theta,d,alpha,a):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ tempMat:Av([0,0,1],theta,d).Av([1,0,0],alpha,a),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtrasf:zeromatrix(4,4),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 4 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 4 do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtrasf[i][j]:trigreduce(tempMat[i][j])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:Qtrasf

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>Q<around*|(|\<vartheta\>,d,\<alpha\>,a|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|tempMat>:<math-up|Av><around*|(|<around*|[|0,0,1|]>,\<vartheta\>,d|)>\<cdot\><math-up|Av><around*|(|<around*|[|1,0,0|]>,\<alpha\>,a|)>,<math-up|Qtrasf>:<math-up|zeromatrix><around*|(|4,4|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>4<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>4<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Qtrasf><rsub|i>|)><rsub|j>:<math-up|trigreduce><around*|(|<around*|(|<math-up|tempMat><rsub|i>|)><rsub|j>|)>,<math-up|res>:<math-up|Qtrasf>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      DH:[[q[1],0,0,L[1]],[q[2],0,0,L[2]]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><around*|[|<around*|[|q<rsub|1>,0,0,L<rsub|1>|]>,<around*|[|q<rsub|2>,0,0,L<rsub|2>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      distance:[matrix([-L[1]/2],[0],[0]),matrix([-L[2]/2],[0],[0])];
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|1>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>,<matrix|<tformat|<table|<row|<cell|-<frac|L<rsub|2>|2>>>|<row|<cell|0>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      ep(DH,dist,M):=block([Q,Qtemp,Qcap,traslBC,g,U,Utemp,dTemp,prev,Utot],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:[],
      Qcap:[],U:[],Utot:zeromatrix(3,3),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ g:10*matrix([0],[0],[1]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prev:ident(4),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(DH) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qtemp:Q(DH[i][1],DH[i][2],DH[i][3],DH[i][4]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Q:append(Q,[trigsimp(trigreduce(prev.Qtemp))]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ prev:Qtemp

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru length(Q) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ traslBC:addrow(addcol(ident(3),dist[j]),[0,0,0,1]),
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Qcap:append(Qcap,[trigsimp(Q[j].traslBC)])
      \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(Qcap)
      do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      gravitazionale link",i),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dTemp:matrix([Qcap[i][1][4]],[Qcap[i][2][4]],
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ [Qcap[i][3][4]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(transpose(g)),print(dTemp),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utemp:-M*transpose(g).dTemp,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ U:append(U,[Utemp]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("U[",i,"]=",Utemp)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru length(U) do(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Utot:Utot+U[i]

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Energia
      gravitazionale totale=",Utot)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ );
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >><math-up|ep><around*|(|<math-up|DH>,<math-up|dist>,M|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|Q,<math-up|Qtemp>,<math-up|Qcap>,<math-up|traslBC>,g,U,<math-up|Utemp>,<math-up|dTemp>,<math-up|prev>,<math-up|Utot>|]>,Q:<around*|[||]>,<math-up|Qcap>:<around*|[||]>,U:<around*|[||]>,<math-up|Utot>:<math-up|zeromatrix><around*|(|3,3|)>,g:10*<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<math-up|prev>:<math-up|ident><around*|(|4|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|DH>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Qtemp>:Q<around*|(|<around*|(|<math-up|DH><rsub|i>|)><rsub|1>,<around*|(|<math-up|DH><rsub|i>|)><rsub|2>,<around*|(|<math-up|DH><rsub|i>|)><rsub|3>,<around*|(|<math-up|DH><rsub|i>|)><rsub|4>|)>,Q:<math-up|append><around*|(|Q,<around*|[|<math-up|trigsimp><around*|(|<math-up|trigreduce><around*|(|<math-up|prev>\<cdot\><math-up|Qtemp>|)>|)>|]>|)>,<math-up|prev>:<math-up|Qtemp>|)>,<math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|Q|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|traslBC>:<math-up|addrow><around*|(|<math-up|addcol><around*|(|<math-up|ident><around*|(|3|)>,<math-up|dist><rsub|j>|)>,<around*|[|0,0,0,1|]>|)>,<math-up|Qcap>:<math-up|append><around*|(|<math-up|Qcap>,<around*|[|<math-up|trigsimp><around*|(|Q<rsub|j>\<cdot\><math-up|traslBC>|)>|]>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|<math-up|Qcap>|)><space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|print><around*|(|<text|Energia
      gravitazionale link >,i|)>,<math-up|dTemp>:<matrix|<tformat|<table|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|1>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|2>|)><rsub|4>>>|<row|<cell|<around*|(|<around*|(|<math-up|Qcap><rsub|i>|)><rsub|3>|)><rsub|4>>>>>>,<math-up|print><around*|(|<math-up|transpose><around*|(|g|)>|)>,<math-up|print><around*|(|<math-up|dTemp>|)>,<math-up|Utemp>:<around*|(|-M|)>*<math-up|transpose><around*|(|g|)>\<cdot\><math-up|dTemp>,U:<math-up|append><around*|(|U,<around*|[|<math-up|Utemp>|]>|)>,<math-up|print><around*|(|<text|U[
      >,i,<text|]= >,<math-up|Utemp>|)>|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|length><around*|(|U|)><space|0.27em><math-bf|do><space|0.27em><math-up|Utot>:<math-up|Utot>+U<rsub|i>,<math-up|print><around*|(|<text|Energia
      gravitazionale totale= >,<math-up|Utot>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      ep(DH,distance,M);
    <|unfolded-io>
      <math|<with|math-display|true|<text|Energia gravitazionale link >1>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|10>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|2>>>|<row|<cell|<frac|L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|2>>>|<row|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|U[ >1<text|]=
      ><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|Energia gravitazionale link >2>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|10>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|<frac|L<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1>*cos
      <around*|(|q<rsub|1>|)>|2>>>|<row|<cell|<frac|L<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+2*L<rsub|1>*sin
      <around*|(|q<rsub|1>|)>|2>>>|<row|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|U[ >2<text|]=
      ><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|Energia gravitazionale totale=
      ><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
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