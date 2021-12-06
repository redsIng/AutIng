<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <strong|<space|15em>Procedura 4>

  Dimostrare che:

  <space|11em> <math|R<rsub|z><around*|(|\<gamma\>|)>=R<rsub|x><around*|(|\<pm\><frac|\<pi\>|2>|)>*R<rsub|y><around*|(|\<gamma\>|)>*R<rsub|x><around*|(|\<mp\><frac|\<pi\>|2>|)><space|1em>\<forall\>\<gamma\>>

  Occorre dimostrare che tramite la rappresentazione delle rotazioni nello
  spazio tramite angoli di Eulero è possibile ottentere un qualsiasi
  orientamento arbitrario.

  Ricordiamo, inoltre, che le rotazioni effettuate tramite angoli di Eulero
  prendono in considerazione solamente rotazioni attorno all'asse x e y.

  Quindi il problema si riconduce a quello di dimostrare che è possibile
  ottenere un qualsiasi orientamento dell'asse z tramite rotazioni dei
  restanti due assi.\ 

  <\session|maxima|default>
    \;

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      Reulero(a,b,c,sign,theta):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ axes:[x,y,z],

      \ \ \ \ \ \ \ \ \ \ \ if member(a,axes) and member(b,axes) and
      member(c,axes) and a=c

      \ \ \ \ \ \ \ \ \ \ \ and (symbolp(theta) or subvarp(theta))

      \ \ \ \ \ \ \ \ \ \ \ then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if scalarp(sign) and \ sign=+1 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:Raxis(a,%pi/2).Raxis(b,theta).Raxis(c,-%pi/2))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif scalarp(sign) and sign=-1 \ then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:Raxis(a,-%pi/2).Raxis(b,-theta).Raxis(c,%pi/2))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else(print("Incorrect Sign"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return([])))

      \ \ \ \ \ \ \ \ \ \ \ else (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print("Check Arguments"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return([]))

      \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      combination:[[x,z,y,z],[x,y,z,y],[y,z,x,z],[y,x,z,x],[z,y,x,y],[z,x,y,x]];
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><around*|[|<around*|[|x,z,y,z|]>,<around*|[|x,y,z,y|]>,<around*|[|y,z,x,z|]>,<around*|[|y,x,z,x|]>,<around*|[|z,y,x,y|]>,<around*|[|z,x,y,x|]>|]>>>
    </unfolded-io>

    <\textput>
      Verifica che è possibile esprimere <math|R<rsub|x><around*|(|\<theta\>|)>,R<rsub|y><around*|(|\<theta\>|)>,R<rsub|z><around*|(|\<theta\>|)>>
      secondo le terne di Eulero.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      checkEulero():=block([res],res:[],for i:1 thru 6 do(

      \ \ Rfinal:Raxis(combination[i][1],theta),

      \ \ Reul:Reulero(combination[i][2],combination[i][3],combination[i][4],1,theta),

      \ \ Reul2:Reulero(combination[i][2],combination[i][3],combination[i][4],-1,theta),

      \ \ if Rfinal-Reul = zeromatrix(3,3) \ then (

      \ \ \ \ res:append(res,[combination[i][1],combination[i][2],combination[i][3],combination[i][4]])

      )elseif Rfinal-Reul2 = zeromatrix(3,3) then (

      \ \ \ \ res:append(res,[combination[i][1],combination[i][2],combination[i][3],combination[i][4]])

      )else(

      print([combination[i][1],combination[i][2],combination[i][3],combination[i][4]])

      ),

      \ res))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><math-up|checkEulero><around*|(||)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|res>:<around*|[||]>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>6<space|0.27em><math-bf|do><space|0.27em><around*|(|<math-up|Rfinal>:<math-up|Raxis><around*|(|<around*|(|<math-up|combination><rsub|i>|)><rsub|1>,\<vartheta\>|)>,<math-up|Reul>:<math-up|Reulero><around*|(|<around*|(|<math-up|combination><rsub|i>|)><rsub|2>,<around*|(|<math-up|combination><rsub|i>|)><rsub|3>,<around*|(|<math-up|combination><rsub|i>|)><rsub|4>,1,\<vartheta\>|)>,<with|math-font-family|rm|Reul2>:<math-up|Reulero><around*|(|<around*|(|<math-up|combination><rsub|i>|)><rsub|2>,<around*|(|<math-up|combination><rsub|i>|)><rsub|3>,<around*|(|<math-up|combination><rsub|i>|)><rsub|4>,-1,\<vartheta\>|)>,<math-bf|if><space|0.27em><math-up|Rfinal>-<math-up|Reul>=<math-up|zeromatrix><around*|(|3,3|)><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<math-up|append><around*|(|<math-up|res>,<around*|[|<around*|(|<math-up|combination><rsub|i>|)><rsub|1>,<around*|(|<math-up|combination><rsub|i>|)><rsub|2>,<around*|(|<math-up|combination><rsub|i>|)><rsub|3>,<around*|(|<math-up|combination><rsub|i>|)><rsub|4>|]>|)><space|0.27em><math-bf|elseif><space|0.27em><math-up|Rfinal>-<with|math-font-family|rm|Reul2>=<math-up|zeromatrix><around*|(|3,3|)><space|0.27em><math-bf|then><space|0.27em><math-up|res>:<math-up|append><around*|(|<math-up|res>,<around*|[|<around*|(|<math-up|combination><rsub|i>|)><rsub|1>,<around*|(|<math-up|combination><rsub|i>|)><rsub|2>,<around*|(|<math-up|combination><rsub|i>|)><rsub|3>,<around*|(|<math-up|combination><rsub|i>|)><rsub|4>|]>|)><space|0.27em><math-bf|else><space|0.27em><math-up|print><around*|(|<around*|[|<around*|(|<math-up|combination><rsub|i>|)><rsub|1>,<around*|(|<math-up|combination><rsub|i>|)><rsub|2>,<around*|(|<math-up|combination><rsub|i>|)><rsub|3>,<around*|(|<math-up|combination><rsub|i>|)><rsub|4>|]>|)>,<math-up|res>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      avaiabletriple:checkEulero()
    <|unfolded-io>
      <math|<with|math-display|true|<around*|[|x,z,y,z|]>>>

      <math|<with|math-display|true|<around*|[|y,x,z,x|]>>>

      <math|<with|math-display|true|<around*|[|z,y,x,y|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      avaiabletriple
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      R[z]:Raxis(z,theta)-Raxis(x,%pi/2).Raxis(y,theta).Raxis(x,-%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      Raxis(z,theta)-Raxis(x,-%pi/2).Raxis(y,-theta).Raxis(x,%pi/2)<with|font-series|bold|>
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Raxis(z,theta)-Raxis(y,-%pi/2).Raxis(x,-theta).Raxis(y,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-2*sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|2*sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      Raxis(x,theta)-Raxis(y,-%pi/2).Raxis(z,-theta).Raxis(y,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      Raxis(x,theta)-Raxis(y,%pi/2).Raxis(z,theta).Raxis(y,-%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      Raxis(z,theta)-Raxis(x,%pi/2).Raxis(y,theta).Raxis(x,-%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      Raxis(z,theta)-Raxis(x,-%pi/2).Raxis(y,-theta).Raxis(x,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Raxis(x,theta)-Raxis(z,%pi/2).Raxis(y,theta).Raxis(z,-%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-2*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|2*sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      Raxis(x,theta)-Raxis(y,-%pi/2).Raxis(z,-theta).Raxis(y,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
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