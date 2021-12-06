<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <center|<strong|Procedura per la verifica di una matrice di rotazione in
  <math|\<bbb-R\><rsup|3>>>>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      checkR3(R):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ dim:size(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(R) and dim[1]=dim[2]
      and not symbolp(R) and not subvarp(R) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ RRt: trigsimp(R.transpose(R)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeR:size(R),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ detR: trigsimp(determinant(R)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if sizeR[1]=sizeR[2] then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if
      is(equal(trigsimp(RRt),ident(sizeR[1]))) and detR=1\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then return(true)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else \ return(false)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><with|math-font-family|rm|checkR3><around*|(|R|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|dim>:<math-up|size><around*|(|R|)>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|R|)>\<wedge\><math-up|dim><rsub|1>=<math-up|dim><rsub|2>\<wedge\>\<neg\><math-up|symbolp><around*|(|R|)>\<wedge\>\<neg\><math-up|subvarp><around*|(|R|)><space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|RRt>:<math-up|trigsimp><around*|(|R\<cdot\><math-up|transpose><around*|(|R|)>|)>,<math-up|sizeR>:<math-up|size><around*|(|R|)>,<math-up|detR>:<math-up|trigsimp><around*|(|<math-up|determinant><around*|(|R|)>|)>,<math-bf|if><space|0.27em><math-up|sizeR><rsub|1>=<math-up|sizeR><rsub|2><space|0.27em><math-bf|then><space|0.27em><around*|(|<math-bf|if><space|0.27em><math-up|is><around*|(|<math-up|equal><around*|(|<math-up|trigsimp><around*|(|<math-up|RRt>|)>,<math-up|ident><around*|(|<math-up|sizeR><rsub|1>|)>|)>|)>\<wedge\><math-up|detR>=1<space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<math-bf|true>|)>|)>|)><space|0.27em><math-bf|else><space|0.27em><math-up|return><around*|(|<math-bf|false>|)>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      R:Raxis(x,theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      checkR3(R)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><math-bf|true>>>
    </unfolded-io>
  </session>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>