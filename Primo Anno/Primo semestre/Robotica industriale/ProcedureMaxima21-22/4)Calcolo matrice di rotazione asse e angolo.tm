<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima|old-lengths>>

<\body>
  <\with|par-mode|center>
    <with|font-series|bold|Procedura matrice di rotazione tramite asse>
    <with|font-series|bold|e un angolo>
  </with>

  <\with|par-mode|left>
    Scrivere una procedura che prenda in input:

    - un asse <math|k\<epsilon\><around*|{|x,y,z|}>>;

    -un angolo \<theta\> simbolico o numerico;

    \ e in output si produca la corrispettiva matrice di rotazione.

    Nel caso in cui venga immesso un asske <math|k\<nin\><around*|{|x,y,z|}>
    >si mostri un messaggio di errore.
  </with>

  Al fine di definire una funzione che può essere richiamata utilizziamo
  l'istruzione block composta da due campi. Il primo, all'interno di [],
  viene utilizzato per salvare il risultato della procedura; il secondo si
  scrive l'implementazione effettiva della procedura che, in questo caso,
  sarà composta da una combinazione di if, elseif e else per verificare la
  corretta immissione dell'asse k.\ 

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      Raxis(k,theta):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if not symbolp(theta) and not
      subvarp(theta) and

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ nonscalarp(theta)then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return("Insert scalar input")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )else(

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

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|Raxis><around*|(|k,\<vartheta\>|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em>\<neg\><math-up|symbolp><around*|(|\<vartheta\>|)>\<wedge\>\<neg\><math-up|subvarp><around*|(|\<vartheta\>|)>\<wedge\><math-up|nonscalarp><around*|(|\<vartheta\>|)><space|0.27em><math-bf|then><space|0.27em><math-up|return><around*|(|<text|Insert
      scalar input >|)><space|0.27em><math-bf|else><space|0.27em><around*|(|<math-bf|if><space|0.27em>k=x<space|0.27em><math-bf|then><space|0.27em><math-up|res>:<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
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
      axis of rotation >|)>|)>>>
    </unfolded-io>

    <\textput>
      Immissione in input dei tre assi ed angolo numerico:
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      Raxis(x, %pi/2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      Raxis(y,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      Raxis(z,%pi/2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Immissione in input dei tre assi e angolo simbolico
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      Raxis(x,theta[x])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|x>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|x>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|x>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      Raxis(y,theta[y])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\><rsub|y>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\><rsub|y>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\><rsub|y>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      Raxis(z,theta[z])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|-sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|cos
      <around*|(|\<vartheta\><rsub|z>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Caso di immissione di un asse non corretto
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Raxis(q,%pi/2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >Incorrect axis of rotation >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      Raxis(x,matrix([1,0]))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >Insert scalar input >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      Raxis(x,-gamma)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|sin <around*|(|\<gamma\>|)>>>|<row|<cell|0>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      Raxis(x,sqrt(2))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|<sqrt|2>|)>>|<cell|-sin <around*|(|<sqrt|2>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|<sqrt|2>|)>>|<cell|cos <around*|(|<sqrt|2>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      Raxis(x,sqrt(2)*a)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|<sqrt|2>*a|)>>|<cell|-sin
      <around*|(|<sqrt|2>*a|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|<sqrt|2>*a|)>>|<cell|cos <around*|(|<sqrt|2>*a|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Raxis(x,%pi)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      Raxis(x,2.345)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-0.699146940936783>|<cell|-0.7149780101364926>>|<row|<cell|0>|<cell|0.7149780101364926>|<cell|-0.699146940936783>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      Raxis(y,(a+b)^2*sqrt(2/%pi)*%i*h)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|cosh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>|<cell|0>|<cell|\<mathi\>*sinh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-\<mathi\>*sinh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>|<cell|0>|<cell|cosh
      <around*|(|<frac|<sqrt|2>*<around*|(|b+a|)><rsup|2>*h|<sqrt|\<pi\>>>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      Raxis(z,b*sqrt(a))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|<sqrt|a>*b|)>>|<cell|-sin
      <around*|(|<sqrt|a>*b|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|<sqrt|a>*b|)>>|<cell|cos
      <around*|(|<sqrt|a>*b|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      Raxis(x,b[1]*2)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|2*b<rsub|1>|)>>|<cell|-sin
      <around*|(|2*b<rsub|1>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|2*b<rsub|1>|)>>|<cell|cos <around*|(|2*b<rsub|1>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      atom(sqrt(2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      symbolp(theta[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><math-bf|false>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      subvarp(theta[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
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