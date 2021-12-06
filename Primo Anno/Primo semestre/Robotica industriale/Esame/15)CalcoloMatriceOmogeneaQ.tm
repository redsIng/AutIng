<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <space|17em><strong|Calcolare <math|Q<rsub|i-1,i>>>

  La matrice di trasformazione omogenea <math|Q<rsub|i-1,i>> consente di
  sovrappore il sistema di riferimento <math|R<rsub|i-1>> con il sistema di
  riferimento <math|R<rsub|i>> tramite 2 matrici di avvitamento
  <math|A<rsub|v><around*|(|z,\<theta\>,d|)>,A<rsub|v><around*|(|x,\<alpha\>,a|)>>
  nel seguente ordine.

  Per ogni grado di libertà:

  <\equation*>
    Q<rsub|i-1,i>=A<rsub|v><around*|(|z,\<theta\><rsub|i>,d<rsub|i>|)>*A<rsub|v><around*|(|x,\<alpha\><rsub|i>,a<rsub|i>|)>
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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:trigsimp(trigrat(trigreduce(trigexpand(A))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|Av><around*|(|v,\<vartheta\>,d|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|Trot>:<math-up|rotLaplace><around*|(|v,\<vartheta\>|)>,<math-up|row>:<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>,<math-up|Atemp>:<math-up|addcol><around*|(|<math-up|Trot>,d*<math-up|transpose><around*|(|v|)>|)>,A:<math-up|addrow><around*|(|<math-up|Atemp>,<math-up|row>|)>,<math-up|res>:<math-up|trigsimp><around*|(|<math-up|trigrat><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|A|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      Az(theta,d):=Av([0,0,1],theta,d);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><math-up|Az><around*|(|\<vartheta\>,d|)>\<assign\><math-up|Av><around*|(|<around*|[|0,0,1|]>,\<vartheta\>,d|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      Az(theta,d);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|d>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      Ax(alpha,a):=Av([1,0,0],alpha,a);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><math-up|Ax><around*|(|\<alpha\>,a|)>\<assign\><math-up|Av><around*|(|<around*|[|1,0,0|]>,\<alpha\>,a|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      Ax(alpha,a);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>|<cell|a>>|<row|<cell|0>|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      La matrice Q riceve in input \<theta\>,d,\<alpha\>,a:

      <nbhyph>\<theta\>,\<alpha\> sono angoli corrispondenti alle rotazioni
      necessarie a far sovrapporre il sistema di riferimento
      <math|R<rsub|i-1>> con il sistema di riferimento <math|R<rsub|i>>
      rispettivamente con la matrice di avvitamento
      <math|A<rsub|v><around*|(|z,\<theta\>,d|)>> e
      <math|A<rsub|v><around*|(|x,\<alpha\>,a|)>>;

      -d,a sono posizioni che corrispondo alle traslazioni necessarie a far
      sovrapporre il sistema di riferimento <math|R<rsub|i-1>> con il sistema
      di riferimento <math|R<rsub|i>> rispettivamente lungo l'asse z e x
      corrispondenti alle matrici di avvitamento
      <math|A<rsub|v><around*|(|z,\<theta\>,d|)>> e
      <math|A<rsub|v><around*|(|x,\<alpha\>,a|)>>;
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Q(theta,d,alpha,a):=block([res], \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:trigexpand(trigsimp(trigrat(trigreduce(trigexpand(Az(theta,d).Ax(alpha,a))))))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>Q<around*|(|\<vartheta\>,d,\<alpha\>,a|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|res>:<math-up|trigexpand><around*|(|<math-up|trigsimp><around*|(|<math-up|trigrat><around*|(|<math-up|trigreduce><around*|(|<math-up|trigexpand><around*|(|<math-up|Az><around*|(|\<vartheta\>,d|)>\<cdot\><math-up|Ax><around*|(|\<alpha\>,a|)>|)>|)>|)>|)>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      Q(theta,d,alpha,a)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-cos <around*|(|\<alpha\>|)>*sin
      <around*|(|\<vartheta\>|)>>|<cell|sin <around*|(|\<alpha\>|)>*sin
      <around*|(|\<vartheta\>|)>>|<cell|a*cos
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin <around*|(|\<alpha\>|)>*cos
      <around*|(|\<vartheta\>|)>>|<cell|a*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|d>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
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