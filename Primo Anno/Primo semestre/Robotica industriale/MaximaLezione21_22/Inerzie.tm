<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp CLISP 2.49 (2010-07-07)

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      antysim(x,y,z):=matrix([0,-z,y],[z,0,-x],[-y,x,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|antysim><around*|(|x,y,z|)>\<assign\><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      S:antysim(x,y,z)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      ST:transpose(S)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|z>|<cell|-y>>|<row|<cell|-z>|<cell|0>|<cell|x>>|<row|<cell|y>|<cell|-x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      S+ST
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      S1:ST.S
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>>
    </unfolded-io>

    <\textput>
      Calcolo inerzia parallelepipedo di lungezza (X,Y,Z) sono 9 punti da
      integrare dato che S è una 3x3. Se avessi preso dei sistemi di
      riferimento differenti e non su assi di simmetria, gli elementi fuori
      diagonali sarebbero venuti diversamente.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      V:expand(integrate(integrate(integrate(1,x,-X/2,X/2),y,-Y/2,Y/2),z,-Z/2,Z/2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>X*Y*Z>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      II:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ \ \ II[i,j]:factor(expand(expand(integrate(integrate(integrate(S1[i,j],x,-X/2,X/2),y,-Y/2,Y/2),z,-Z/2,Z/2))*M/V))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      II
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|<frac|M*<around*|(|Z<rsup|2>+Y<rsup|2>|)>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|M*<around*|(|Z<rsup|2>+X<rsup|2>|)>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*<around*|(|Y<rsup|2>+X<rsup|2>|)>|12>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>
  </session>

  <\strong>
    Matrice di inerzia di un cilindro
  </strong>

  Utilizziamo le coordinate cilindriche per calcolare la matrice di inerzia

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp CLISP 2.49 (2010-07-07)

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      antysim(x,y,z):=matrix([0,-z,y],[z,0,-x],[-y,x,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|antysim><around*|(|x,y,z|)>\<assign\><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      S:antysim(x,y,z);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      S1:transpose(S).S
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      S2:0*ident(3)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|input>
      \;
    </input>

    <\textput>
      Coordinate cilindriche: asse z sull'asse del clindro e gli altri due
      sul piano che mi consente di generare una circonferenza che cresce con
      z. Sarà simmetrico al cilindro.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      Rzfun(alpha):=matrix([cos(alpha),-sin(alpha),0],[sin(alpha),cos(alpha),0],[0,0,1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><math-up|Rzfun><around*|(|\<alpha\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      Rz:Rzfun(alpha)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Il punto P ha coordinate x,y,z ottenuta coe immagine di RZ. Se sto in
      baricentro h\<in\>[-h/2,h/2],\<alpha\>

      \<in\>[0,2\<pi\>],\<rho\>\<in\>[0,R]
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      P:Rz.matrix([rho],[0],[h])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\>|)>*\<rho\>>>|<row|<cell|sin
      <around*|(|\<alpha\>|)>*\<rho\>>>|<row|<cell|h>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ S2[i,j]: trigreduce(subst(z=P[3,1],subst(y=P[2,1],subst(x=P[1,1],S1[i,j]))))

      \ \ \ )

      )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      S2
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><matrix|<tformat|<table|<row|<cell|-<frac|cos
      <around*|(|2*\<alpha\>|)>*\<rho\><rsup|2>|2>+<frac|\<rho\><rsup|2>|2>+h<rsup|2>>|<cell|-<frac|sin
      <around*|(|2*\<alpha\>|)>*\<rho\><rsup|2>|2>>|<cell|-cos
      <around*|(|\<alpha\>|)>*h*\<rho\>>>|<row|<cell|-<frac|sin
      <around*|(|2*\<alpha\>|)>*\<rho\><rsup|2>|2>>|<cell|<frac|cos
      <around*|(|2*\<alpha\>|)>*\<rho\><rsup|2>|2>+<frac|\<rho\><rsup|2>|2>+h<rsup|2>>|<cell|-sin
      <around*|(|\<alpha\>|)>*h*\<rho\>>>|<row|<cell|-cos
      <around*|(|\<alpha\>|)>*h*\<rho\>>|<cell|-sin
      <around*|(|\<alpha\>|)>*h*\<rho\>>|<cell|\<rho\><rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      dp:0*ident(3)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      for i:1 thru 3 do (dp[i,1]:diff(P[i,1],rho),

      dp[i,2]:diff(P[i,1],alpha),

      dp[i,3]:diff(P[i,1],h))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><math-bf|done>>>
    </unfolded-io>

    <\textput>
      Jacobiano poiché abbiamo cambiato le coordinate cartesiane in
      cilindriche
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      dp
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>*\<rho\>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<alpha\>|)>>|<cell|cos <around*|(|\<alpha\>|)>*\<rho\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Determinante dello Jacobiano. Serve poiché:

      <\equation*>
        <matrix|<tformat|<table|<row|<cell|A>>|<row|<cell|B>>|<row|<cell|C>>>>>=M<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>
      </equation*>

      Il <math|det<around*|(|M|)>> esprime il legame del prodotto tra
      <matrix|<tformat|<table|<row|<cell|A>>|<row|<cell|B>>|<row|<cell|C>>>>>
      e <math|<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>.
      >In particolare :

      <\equation*>
        A*B*C=det<around*|(|M|)>a*b*c*
      </equation*>

      Poiché nelle coordinate cartesiane abbiamo
      <math|\<partial\>x*\<partial\>y*\<partial\>z> (nell'integrale) ed ora
      <math|\<partial\>\<alpha\>*\<partial\>\<rho\>*\<partial\>h>.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Ddp:trigreduce(determinant(dp))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >>\<rho\>>>
    </unfolded-io>

    <\textput>
      Dobbiamo calcolare il volume in cordinate cilindriche. Dobbiamo
      moltiplicare l'argometno dell'integrale con il determinante dello
      Jacobiano
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      V:expand(integrate(integrate(integrate(1*Ddp,alpha,0,2*%pi),rho,0,R),h,-H/2,H/2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >>\<pi\>*H*R<rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      II:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\textput>
      Integro lungo gli estremi di integrazione.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ \ \ II[i,j]:factor(expand(integrate(integrate(integrate(S2[i,j]*Ddp,alpha,0,2*%pi),rho,0,R),h,-H/2,H/2)))*M/V

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|unfolded-io>
      II
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
      >><matrix|<tformat|<table|<row|<cell|<frac|M*<around*|(|3*R<rsup|2>+H<rsup|2>|)>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|M*<around*|(|3*R<rsup|2>+H<rsup|2>|)>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|M*R<rsup|2>|2>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|input>
      \;
    </input>
  </session>

  <strong|Dimostrazione poiché gli integrali fuori diagonale della matrice di
  Inerzia vengono nulli se poniamo il sistema di riferimento lungo un asse di
  simmetrica del corpo.>

  <\session|maxima|default>
    S1[1,2] è una funzione dispari rispetto x,y, ma pari rispetto a z. Quando
    viene integrata si ottiene la funzione del tipo opposto.

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      S1[1,2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >>-x*y>>
    </unfolded-io>

    <\textput>
      Funzione pari rispetto a x che implica che,integrando la funzione, i
      contributi si annullano e quindi l'elemento fuori diagonale si annulla.
      <strong|L'integrale di una funzione simmetrica rispetto a 0 è nulla.
      Ciò corrisponde al porsi lungo un asse di simmetria poiché l'intervallo
      di integrazione è simmetrico rispetto a 0>.

      Quelli sulla diagonale non si annullano poiché sono pari: in ogni
      integrazione da pari diventa dispari e il suo integrale in un
      intervallo simmetrico risulta il doppio del suo valore.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      iii:integrate(S1[1,2],x)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >>-<frac|x<rsup|2>*y|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      subst(x=a,iii)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >>-<frac|a<rsup|2>*y|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      subst(x=-a,iii)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >>-<frac|a<rsup|2>*y|2>>>
    </unfolded-io>

    <\textput>
      Stessa cosa rispetto all'asse x,y,z
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      integrate(S1[1,2],x,-a,a)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >>0>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|input>
      \;
    </input>
  </session>

  <strong|Inerzia di una Sfera>

  In questo caso si utilizzano le coordinate sferiche.

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      S1
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >><matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>>
    </unfolded-io>

    <\textput>
      Coordinate sferiche: si ottengono da due matrice di rotazione diverse
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      Ry:matrix([cos(theta),0,-sin(theta)],[0,1,0],[sin(theta),0,cos(theta)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      p:Rz.Ry.matrix([rho],[0],[0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<alpha\>|)>*\<rho\>*cos
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<alpha\>|)>*\<rho\>*cos
      <around*|(|\<vartheta\>|)>>>|<row|<cell|\<rho\>*sin
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      dp:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>35) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ for j:1 thru 3 do(

      \ \ \ \ dp[i,1]:diff(p[i,1],rho),

      dp[i,2]:diff(p[i,1],alpha),

      dp[i,3]:diff(p[i,1],theta)

      \ \ \ )

      )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      dp
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|cos <around*|(|\<alpha\>|)>*cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>*\<rho\>*cos
      <around*|(|\<vartheta\>|)>>|<cell|-cos
      <around*|(|\<alpha\>|)>*\<rho\>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin <around*|(|\<alpha\>|)>*cos
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<alpha\>|)>*\<rho\>*cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>*\<rho\>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|\<rho\>*cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      DP:trigreduce(factor(determinant(dp)))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >>\<rho\><rsup|2>*cos <around*|(|\<vartheta\>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
    <|unfolded-io>
      V:expand(integrate(integrate(integrate(1*DP,alpha,0,2*%pi),theta,-%pi/2,%pi/2),rho,0,R))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o39>)
      >><frac|4*\<pi\>*R<rsup|3>|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      II:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>41) >
    <|unfolded-io>
      S2:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o41>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>48) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ S2[i,j]: (((subst(z=p[3,1],subst(y=p[2,1],subst(x=p[1,1],S1[i,j]))))))

      \ \ \ )

      )
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o48>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>49) >
    <|unfolded-io>
      S2
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o49>)
      >><matrix|<tformat|<table|<row|<cell|\<rho\><rsup|2>*sin
      <around*|(|\<vartheta\>|)><rsup|2>+sin
      <around*|(|\<alpha\>|)><rsup|2>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-cos
      <around*|(|\<alpha\>|)>*sin <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-cos
      <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>>>|<row|<cell|-cos
      <around*|(|\<alpha\>|)>*sin <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>>|<cell|\<rho\><rsup|2>*sin
      <around*|(|\<vartheta\>|)><rsup|2>+cos
      <around*|(|\<alpha\>|)><rsup|2>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>>|<cell|-sin
      <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>>>|<row|<cell|-cos
      <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<alpha\>|)>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)>*sin <around*|(|\<vartheta\>|)>>|<cell|sin
      <around*|(|\<alpha\>|)><rsup|2>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>+cos
      <around*|(|\<alpha\>|)><rsup|2>*\<rho\><rsup|2>*cos
      <around*|(|\<vartheta\>|)><rsup|2>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>52) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ \ \ II[i,j]:factor(expand(integrate(integrate(integrate(S2[i,j]*DP,alpha,0,2*%pi),theta,-%pi/2,%pi/2),rho,0,R)))*M/V

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>53) >
    <|unfolded-io>
      II
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
      >><matrix|<tformat|<table|<row|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|2*M*R<rsup|2>|5>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>54) >
    <|input>
      \;
    </input>
  </session>

  Non è possibile posizione il sistema di riferimento in un sistema che non
  si trova lungo l'asse di simmetrica. Ora voglio trovare, ruotati due
  sistemi di riferimento, il collegamento tra le due matrici di inerzia è:

  <\equation*>
    \<bbb-I\>=\<bbb-I\><rsub|0>
  </equation*>

  <\equation*>
    T<rsub|r>=<frac|1|2>*<wide|\<omega\>|^><rsup|\<top\>><wide|\<bbb-I\>|^><wide|w|^>
  </equation*>

  <\equation*>
    <wide|\<omega\>|^>=R<rsup|\<top\>>*\<omega\>
  </equation*>

  <\equation*>
    T<rsub|r>=<frac|1|2>\<omega\>*R<rsup|\<top\>><wide|\<bbb-I\>|^>*R\<omega\>
  </equation*>

  Quindi:

  <\equation*>
    <wide|\<bbb-I\>|^>=R<rsup|T>*\<bbb-I\>*R
  </equation*>

  Il terorema di Steiner vale anche nello spazio oltre che al piano. Infatti:

  <\equation*>
    \<bbb-I\><rsub|n>=\<bbb-I\><rsub|b>+M*S<rsup|\<top\>><around*|(|p|)>*S<around*|(|p|)>
  </equation*>

  In cui <math|p> è di quanto mi sto spostando dal baricentro.

  <\equation*>
    =\<bbb-I\><rsub|b>+M*<matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>
  </equation*>

  La quantità sulla diagonale sono le distanze rispetto al baricentro. Gli
  elementi fuori diagonali sono gli spostamenti fra gli assi sottratti con il
  meno. Inoltre <math|M*S<rsup|\<top\>><around*|(|p|)>*S<around*|(|p|)>> è
  come se fosse la matrice di interzia di un punto che si trova nel centro di
  rotazione.\ 

  <strong|In traslazione semplici>:

  Traslazione solamente lungo z:

  <\equation*>
    subst<around*|(|<around*|[|x=0,y=0|]>,<tabular|<tformat|<table|<row|<cell|<matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>|<cell|>|<cell|>>>>>|)>
  </equation*>

  Traslazione lungo due assi modifica la matrice di inerzia e non è più
  diagonale.

  <strong|Calcolo matrice di interzia di un parallelepipedo cavo>

  <\itemize>
    <strong|Dati>:

    <item><math|x\<in\><around*|[|-<frac|X|2>,<frac|X|2>|]>>(se fosse pieno).
    Dato che però è vuoto: <math|><math|x\<in\><around*|[|-<frac|X|2>,-<frac|X|2>+d<rsub|x>|]>\<cup\><around*|[|<frac|X|2>-d<rsub|x>,<frac|X|2>|]>>

    <item><math|y\<in\><around*|[|-<frac|Y|2>,<frac|Y|2>+d<rsub|y>|]>\<cup\><around*|[|<frac|Y|2>-d<rsub|y>,<frac|Y|2>|]>>

    <item><math|z\<in\><around*|[|0,Z|]>>
  </itemize>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>54) >
    <|unfolded-io>
      antysim(x,y,z):=matrix([0,-z,y],[z,0,-x],[-y,x,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o54>)
      >><math-up|antysim><around*|(|x,y,z|)>\<assign\><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>55) >
    <|unfolded-io>
      S:antysim(x,y,z)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o55>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-z>|<cell|y>>|<row|<cell|z>|<cell|0>|<cell|-x>>|<row|<cell|-y>|<cell|x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>56) >
    <|unfolded-io>
      ST:transpose(S)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o56>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|z>|<cell|-y>>|<row|<cell|-z>|<cell|0>|<cell|x>>|<row|<cell|y>|<cell|-x>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>57) >
    <|unfolded-io>
      S+ST
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o57>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>58) >
    <|unfolded-io>
      S1:ST.S
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o58>)
      >><matrix|<tformat|<table|<row|<cell|z<rsup|2>+y<rsup|2>>|<cell|-x*y>|<cell|-x*z>>|<row|<cell|-x*y>|<cell|z<rsup|2>+x<rsup|2>>|<cell|-y*z>>|<row|<cell|-x*z>|<cell|-y*z>|<cell|y<rsup|2>+x<rsup|2>>>>>>>>
    </unfolded-io>

    <\textput>
      Spessore parallelepipedo interno pari a <math|d<rsub|x>> lungo x e
      <math|d<rsub|y>> lungo y
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>59) >
    <|input>
      \;
    </input>

    <\textput>
      Calcolo inerzia parallelepipedo di lungezza (X,Y,Z) sono 9 punti da
      integrare dato che S è una 3x3. Se avessi preso dei sistemi di
      riferimento differenti e non su assi di simmetria, gli elementi fuori
      diagonali sarebbero venuti diversamente.
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>74) >
    <|unfolded-io>
      Vg:expand(integrate(integrate(integrate(1,x,-A/2,A/2),y,-B/2,B/2),z,-C/2,C/2))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o74>)
      >>A*B*C>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>75) >
    <|unfolded-io>
      Vp:expand(integrate(integrate(integrate(1,x,-a/2,a/2),y,-b/2,b/2),z,-c/2,c/2))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o75>)
      >>a*b*c>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>76) >
    <|unfolded-io>
      II:0*ident(3)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o76>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>77) >
    <|unfolded-io>
      for i:1 thru 3 do(

      \ \ \ \ for j:1 thru 3 do(

      \ \ \ \ \ \ \ II[i,j]:factor(expand(expand(integrate(integrate(integrate(S1[i,j],x,-X/2,X/2),y,-Y/2,Y/2),z,-Z/2,Z/2))))*rho

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

      \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o77>)
      >><math-bf|done>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>78) >
    <|unfolded-io>
      II
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o78>)
      >><matrix|<tformat|<table|<row|<cell|<frac|X*Y*Z*<around*|(|Z<rsup|2>+Y<rsup|2>|)>*\<rho\>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|X*Y*Z*<around*|(|Z<rsup|2>+X<rsup|2>|)>*\<rho\>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|X*Y*<around*|(|Y<rsup|2>+X<rsup|2>|)>*Z*\<rho\>|12>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>79) >
    <|unfolded-io>
      IIg:subst([X=A,Y=B,Z=C],II)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o79>)
      >><matrix|<tformat|<table|<row|<cell|<frac|A*B*C*<around*|(|C<rsup|2>+B<rsup|2>|)>*\<rho\>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|A*B*C*<around*|(|C<rsup|2>+A<rsup|2>|)>*\<rho\>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|A*B*<around*|(|B<rsup|2>+A<rsup|2>|)>*C*\<rho\>|12>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>80) >
    <|unfolded-io>
      IIp:subst([X=a,Y=b,Z=c],II)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o80>)
      >><matrix|<tformat|<table|<row|<cell|<frac|a*b*c*<around*|(|c<rsup|2>+b<rsup|2>|)>*\<rho\>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|a*b*c*<around*|(|c<rsup|2>+a<rsup|2>|)>*\<rho\>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|a*b*<around*|(|b<rsup|2>+a<rsup|2>|)>*c*\<rho\>|12>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>81) >
    <|unfolded-io>
      IIf:IIg-IIp
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o81>)
      >><matrix|<tformat|<table|<row|<cell|<frac|A*B*C*<around*|(|C<rsup|2>+B<rsup|2>|)>*\<rho\>|12>-<frac|a*b*c*<around*|(|c<rsup|2>+b<rsup|2>|)>*\<rho\>|12>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|<frac|A*B*C*<around*|(|C<rsup|2>+A<rsup|2>|)>*\<rho\>|12>-<frac|a*b*c*<around*|(|c<rsup|2>+a<rsup|2>|)>*\<rho\>|12>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|<frac|A*B*<around*|(|B<rsup|2>+A<rsup|2>|)>*C*\<rho\>|12>-<frac|a*b*<around*|(|b<rsup|2>+a<rsup|2>|)>*c*\<rho\>|12>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>82) >
    <|unfolded-io>
      rho1:(M[1]-M[2])/(Vg-Vp)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o82>)
      >><frac|M<rsub|1>-M<rsub|2>|A*B*C-a*b*c>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>86) >
    <|unfolded-io>
      fullratsimp(IIf*rho1)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o86>)
      >><matrix|<tformat|<table|<row|<cell|-<frac|<around*|(|<around*|(|M<rsub|2>-M<rsub|1>|)>*a*b*c<rsup|3>+<around*|(|M<rsub|2>-M<rsub|1>|)>*a*b<rsup|3>*c+<around*|(|M<rsub|1>-M<rsub|2>|)>*A*B*C<rsup|3>+<around*|(|M<rsub|1>-M<rsub|2>|)>*A*B<rsup|3>*C|)>*\<rho\>|12*a*b*c-12*A*B*C>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|<around*|(|<around*|(|M<rsub|2>-M<rsub|1>|)>*a*b*c<rsup|3>+<around*|(|M<rsub|2>-M<rsub|1>|)>*a<rsup|3>*b*c+<around*|(|M<rsub|1>-M<rsub|2>|)>*A*B*C<rsup|3>+<around*|(|M<rsub|1>-M<rsub|2>|)>*A<rsup|3>*B*C|)>*\<rho\>|12*a*b*c-12*A*B*C>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-<frac|<around*|(|<around*|(|<around*|(|M<rsub|2>-M<rsub|1>|)>*a*b<rsup|3>+<around*|(|M<rsub|2>-M<rsub|1>|)>*a<rsup|3>*b|)>*c+<around*|(|<around*|(|M<rsub|1>-M<rsub|2>|)>*A*B<rsup|3>+<around*|(|M<rsub|1>-M<rsub|2>|)>*A<rsup|3>*B|)>*C|)>*\<rho\>|12*a*b*c-12*A*B*C>>>>>>>>
    </unfolded-io>
  </session>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
  </collection>
</references>