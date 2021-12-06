<TeXmacs|1.99.13>

<style|<tuple|generic|maxima>>

<\body>
  <\doc-data|<doc-title|Esercizi>>
    \;
  </doc-data>

  <space|35em>Coccia Gianluca\ 

  Esercizio 1.

  Data una matrice A <math|n\<times\>n > scrivere una procedura che vede le
  dimensioni e calcola la matrice esponenziale tramite Laplace e tramite
  autovettori.Verifcare poi la correttezza dei due procedimenti.

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.43.0 http://maxima.sourceforge.net

      using Lisp SBCL 1.5.3

      \;

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|input>
      A:matrix([0,0,0], [0,5,6],[0, 0,7/3])$
    </input>

    \;

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      <code|size(M):=[length(M),length(transpose(M))]$>
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      size(A)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><around*|[|3,3|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|input>
      expLaplace(M):=block(

      [dime,n,m,II,sAi,sAiL],

      \ \ \ \ dime:size(M),

      \ \ \ \ n:dime[1],

      \ \ \ \ m:dime[2],

      \ \ \ \ if(n#m) then(

      \ \ \ \ \ \ \ \ error ("Matrice non quadrata")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ \ \ II:matrix([1,0,0],[0,1,0],[0,0,1]),

      \ \ \ \ sAi:invert(s*II-M),

      \ \ \ \ sAiL:zeromatrix(dime[1],dime[2]),

      \ \ \ \ for i:1 thru dime[1] do (

      \ \ \ \ \ \ \ for j:1 thru dime[2] do (

      \ \ \ \ \ \ \ sAiL[i,j]:ilt(sAi[i,j],s,t)

      \ \ )

      ),

      return(sAiL)

      )$
    </input>

    \;

    \;

    \;

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      expLaplace(A)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<mathe\><rsup|5*t>>|<cell|<frac|9*\<mathe\><rsup|5*t>|4>-<frac|9*\<mathe\><rsup|<frac|7*t|3>>|4>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|<frac|7*t|3>>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|input>
      expVectors(M):=block(

      [dime,B, V, Vi, D,eD, mat],

      \ \ dime:size(M),

      \ \ B:eigenvectors(M),

      \ \ V:zeromatrix(dime[1],0),

      \ \ for i:1 thru dime[1] do(

      \ \ V:addcol(V,transpose(matrix(B[2][i][1])))

      \ \ \ \ \ \ \ \ \ \ ),

      \ \ Vi:invert(V),

      \ \ D:Vi.M.V,

      \ \ eD:D,

      \ \ for i:1 thru dime[1] do(

      \ \ \ \ eD[i,i]:exp(eD[i,i]*t)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ mat:V.eD.Vi,

      \ \ return(mat)

      \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      expVectors(A)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|\<mathe\><rsup|5*t>>|<cell|<frac|9*\<mathe\><rsup|5*t>|4>-<frac|9*\<mathe\><rsup|<frac|7*t|3>>|4>>>|<row|<cell|0>|<cell|0>|<cell|\<mathe\><rsup|<frac|7*t|3>>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      expLaplace(A)-expVectors(A)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|input>
      \;
    </input>
  </session>

  Verificato.

  \;

  Esercizio 2

  Scrivere tre procedure che prenda in ingresso un angolo tra
  \<theta\><math|<rsub|x>,>\<theta\><math|<rsub|y>> e
  \<theta\><math|<rsub|z>> e restituisce la rispettiva matrice di rotazione.

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.43.0 http://maxima.sourceforge.net

      using Lisp SBCL 1.5.3

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      Rxmatrix(theta):=matrix([1,0,0],[0,cos(theta),-sin(theta)],[0,sin(theta),cos(theta)])

      \;
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><math-up|Rxmatrix><around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      Rymatrix(theta):=matrix([cos(theta),0,sin(theta)],[0,1,0],[-sin(theta),0,cos(theta)])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><math-up|Rymatrix><around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      Rzmatrix(theta):=matrix([cos(theta),-sin(theta),0],[sin(theta),cos(theta),0],[0,0,1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><math-up|Rzmatrix><around*|(|\<vartheta\>|)>\<assign\><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      \;
    </input>
  </session>

  \;

  Esercizio 3

  Scrivere una procedura che restituisce la matrice di rotazione rispetto
  all'asse selezionato.Se l'asse non esiste torna errore.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|input>
      Rmatrixsolver(asse,theta):=block(

      if(asse#x and asse#y and asse#z) then (

      \ \ error("Asse non valido.Asse=(x,y,z)")),

      if(asse=x) then return(Rxmatrix(theta)),

      if(asse=y) then return(Rymatrix(theta)),

      if(asse=z) then return(Rzmatrix(theta))

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      Rmatrixsolver(x,theta)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      Rmatrixsolver(y,theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      Rmatrixsolver(z,theta)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      Rmatrixsolver(beta,theta)
    <|unfolded-io>
      \;

      Asse non valido.Asse=(x,y,z)

      #0: Rmatrixsolver(asse=beta,theta=theta)

      \ -- an error. To debug this try: debugmode(true);
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      \;
    </input>
  </session>

  Esercizio 4

  Dimostare che R<math|<rsub|x><around*|(|\<alpha\>|)>>R<math|<rsub|y><around*|(|\<beta\>|)>\<neq\>>R<math|<rsub|y><around*|(|\<beta\>|)>>R<math|<rsub|x><around*|(|\<alpha\>|)>>
  quindi non commutano.Ritorna vero se sono diverse.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      Rcomm():=block(

      if(Rmatrixsolver(x,alpha).Rmatrixsolver(y,beta)#Rmatrixsolver(y,beta).Rmatrixsolver(x,alpha))

      \ \ then return(true)

      \ \ else return(false)

      \ \ 

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      Rcomm()
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><math-bf|true>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      \;
    </input>
  </session>

  Esercizio 5

  Utilizzando le procedure scritte calcolare
  R<math|<rsub|z><around*|(|\<gamma\>|)>> attraverso due matrici:

  <space|9em>1)R<math|<rsub|x><around*|(|<frac|\<pi\>|2>|)>>R<math|<rsub|y><around*|(|\<gamma\>|)>>R<math|<rsub|x><around*|(|-<frac|\<pi\>|2>|)>>

  <space|9em>2)R<math|<rsub|x><around*|(|-<frac|\<pi\>|2>|)>>R<math|<rsub|y><around*|(|-\<gamma\>|)>>R<math|<rsub|x><around*|(|<frac|\<pi\>|2>|)>>

  Eseguire poi la differenza delle due matrici = 0.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      Rmolt():=block(

      [A1,A2,B,E1,E2,ZM],

      A1:Rmatrixsolver(x,%pi/2).Rmatrixsolver(y,gamma).Rmatrixsolver(x,%pi/-2),

      print(A1),

      A2:Rmatrixsolver(x,%pi/-2).Rmatrixsolver(y,-gamma).Rmatrixsolver(x,%pi/2),

      print(A2),

      B:Rmatrixsolver(z,gamma),

      print(B),

      E1:B-A1,

      print(E1),

      E2:B-A2,

      print(E2),

      ZM:matrix([0,0,0],[0,0,0],[0,0,0]),

      if E1#ZM then return(false) else

      if E2#ZM then return(false) else return(true)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|unfolded-io>
      Rmolt()
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<gamma\>|)>>|<cell|-sin
      <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<gamma\>|)>>|<cell|cos <around*|(|\<gamma\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
      >><math-bf|true>>>
    </unfolded-io>
  </session>

  \;

  Esercizio 6

  Scrivere una procedura che calcoli la matrice esponenziale
  <math|e<rsup|S<around*|(|v|)>\<theta\> >> tramite Laplace e tramite il
  metodo degli autovettori.Verificare poi la correttezza del risultato.

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.43.0 http://maxima.sourceforge.net

      using Lisp SBCL 1.5.3

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      v:matrix([1],[0],[0])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|input>
      S_function(w):=block(

      \ [s1,s2,s3,S],

      \ s1:matrix([0],[w[3,1]],[-w[2,1]]),

      \ s2:matrix([-w[3,1]],[0],[w[1,1]]),

      \ s3:matrix([w[2,1]],[-w[1,1]],[0]),

      \ S:zeromatrix(3,0),

      \ S:addcol(S,s1),

      \ S:addcol(S,s2),

      \ S:addcol(S,s3),

      \ return(S)

      \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      SM:S_function(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|input>
      size(M):=[length(M),length(transpose(M))]$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|input>
      <\code>
        expLaplace(M):=block(

        [dime,n,m,II,sAi,sAiL], \ \ \ 

        \;

        \ \ \ \ dime:size(M),

        \ \ \ \ n:dime[1],

        \ \ \ \ m:dime[2],

        \ \ \ \ if(n#m) then(

        \ \ \ \ \ \ \ \ error ("Matrice non quadrata")

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ II:ident(n),

        \ \ \ \ sAi:invert(s*II-M),

        \ \ \ \ sAiL:zeromatrix(n,n),

        \ \ \ \ for i:1 thru n do (

        \ \ \ \ \ \ \ for j:1 thru n do (

        \ \ \ \ \ \ \ sAiL[i,j]:ilt(sAi[i,j],s,t)

        \ \ )

        ),

        return(sAiL)

        )$
      </code>
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      expLaplace(SM)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|t|)>>|<cell|-sin <around*|(|t|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|t|)>>|<cell|cos <around*|(|t|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|input>
      expVectors(M):=block(

      [dime,B, V, Vi, D,eD, mat],

      \ \ dime:size(M),

      \ \ B:eigenvectors(M),

      \ \ V:zeromatrix(dime[1],0),

      \ \ for i:1 thru dime[1] do(

      \ \ V:addcol(V,transpose(matrix(B[2][i][1])))

      \ \ \ \ \ \ \ \ \ \ ),

      \ \ Vi:invert(V),

      \ \ D:Vi.M.V,

      \ \ eD:D,

      \ \ for i:1 thru dime[1] do(

      \ \ \ \ eD[i,i]:exp(eD[i,i]*t)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

      \ \ mat:V.eD.Vi,

      \ \ 

      \ \ return(expand(demoivre(mat)))

      \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      expVectors(SM)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|t|)>>|<cell|-sin <around*|(|t|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|t|)>>|<cell|cos <around*|(|t|)>>>>>>>>
    </unfolded-io>
  </session>

  <\session|maxima|default>
    \;
  </session>

  Esercizio 7

  Calcolare il prodotto vettoriale <math|v\<times\>w=S<around*|(|v|)>\<times\>w>
  e confrontarlo con il prodotto vettoriale di Maxima.

  <\session|maxima|default>
    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|input>
      v:matrix([v1],[v2],[v3])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      w:matrix([w1],[w2],[w3])$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      Sv:S_function(v)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-<with|math-font-family|rm|v3>>|<cell|<with|math-font-family|rm|v2>>>|<row|<cell|<with|math-font-family|rm|v3>>|<cell|0>|<cell|-<with|math-font-family|rm|v1>>>|<row|<cell|-<with|math-font-family|rm|v2>>|<cell|<with|math-font-family|rm|v1>>|<cell|0>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      Sv.w
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >><matrix|<tformat|<table|<row|<cell|<with|math-font-family|rm|v2>*<with|math-font-family|rm|w3>-<with|math-font-family|rm|v3>*<with|math-font-family|rm|w2>>>|<row|<cell|<with|math-font-family|rm|v3>*<with|math-font-family|rm|w1>-<with|math-font-family|rm|v1>*<with|math-font-family|rm|w3>>>|<row|<cell|<with|math-font-family|rm|v1>*<with|math-font-family|rm|w2>-<with|math-font-family|rm|v2>*<with|math-font-family|rm|w1>>>>>>>>
    </unfolded-io>
  </session>

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      v:[v1,v2,v3]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><around*|[|<with|math-font-family|rm|v1>,<with|math-font-family|rm|v2>,<with|math-font-family|rm|v3>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      w: [w1, w2, w3]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><around*|[|<with|math-font-family|rm|w1>,<with|math-font-family|rm|w2>,<with|math-font-family|rm|w3>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      load(vect)
    <|unfolded-io>
      <math|<with|math-display|true|<text|vect: warning: removing existing
      rule or rules for ".". >>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >/Applications/Maxima.app/Contents/Resources/opt/share/maxima/5.43.0/share/vector/vect.mac
      >>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|input>
      res:v~w$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      res:express(%)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >><matrix|<tformat|<table|<row|<cell|<with|math-font-family|rm|v2>*<with|math-font-family|rm|w3>-<with|math-font-family|rm|v3>*<with|math-font-family|rm|w2>>|<cell|<with|math-font-family|rm|v3>*<with|math-font-family|rm|w1>-<with|math-font-family|rm|v1>*<with|math-font-family|rm|w3>>|<cell|<with|math-font-family|rm|v1>*<with|math-font-family|rm|w2>-<with|math-font-family|rm|v2>*<with|math-font-family|rm|w1>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      transpose(res)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >><matrix|<tformat|<table|<row|<cell|<with|math-font-family|rm|v2>*<with|math-font-family|rm|w3>-<with|math-font-family|rm|v3>*<with|math-font-family|rm|w2>>>|<row|<cell|<with|math-font-family|rm|v3>*<with|math-font-family|rm|w1>-<with|math-font-family|rm|v1>*<with|math-font-family|rm|w3>>>|<row|<cell|<with|math-font-family|rm|v1>*<with|math-font-family|rm|w2>-<with|math-font-family|rm|v2>*<with|math-font-family|rm|w1>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>38) >
    <|input>
      \;
    </input>
  </session>

  I due prodotti vettoriali coincidono.

  Esercizio 8

  Dimostrare la formula di Rodrigues ovvero :
  R<math|<rsub|v><around*|(|\<theta\>|)>=>I<math|+>S<math|<rsup|2><rsub|><around*|(|v|)><around*|(|1-cos<around*|(|\<theta\>|)>|)>>+S<math|<around*|(|v|)>sin<around*|(|\<theta\>|)>>

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.43.0 http://maxima.sourceforge.net

      using Lisp SBCL 1.5.3

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      v:matrix([1],[0],[0])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      S_function(w):=block(

      \ [s1,s2,s3,S],

      \ s1:matrix([0],[w[3,1]],[-w[2,1]]),

      \ s2:matrix([-w[3,1]],[0],[w[1,1]]),

      \ s3:matrix([w[2,1]],[-w[1,1]],[0]),

      \ S:zeromatrix(3,0),

      \ S:addcol(S,s1),

      \ S:addcol(S,s2),

      \ S:addcol(S,s3),

      \ return(S)

      \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>40) >
    <|unfolded-io>
      Sv:S_function(v)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o40>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|0>|<cell|1>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      rodrigues(M):=block(

      [dime,n,I,Rv],

      size(M):=[length(M),length(transpose(M))],

      dime:size(M),

      n:dime[1],

      Rv:ident(n)+(M^^2)*(1-cos(theta))+M*sin(theta),

      return(Rv)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      rodrigues(Sv)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos <around*|(|\<vartheta\>|)>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      A:expLaplace(Sv)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|cos
      <around*|(|t|)>>|<cell|-sin <around*|(|t|)>>>|<row|<cell|0>|<cell|sin
      <around*|(|t|)>>|<cell|cos <around*|(|t|)>>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      \;
    </input>
  </session>

  Verificato.Il valore di Laplace è in t ma modificando la procedura 1 con
  \<theta\> invece di t i risultati coincidono.

  Esercizio 9

  Dati <math|v,\<theta\>> calcolare R<math|<rsub|v><around*|(|\<theta\>|)>>.Calcolare
  <math|v,\<theta\>> a partire da R<math|<rsub|v><around*|(|\<theta\>|)>>.

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      R1:matrix([0,1,0],[0,0,-1],[-1,0,0])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>|<row|<cell|-1>|<cell|0>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      norms(w):=block(

      [m,i],

      m:0,

      for i:1 thru 3 do(

      m:m+w[i]^2

      ),

      m:sqrt(m),

      return(expand(trigsimp(m)))

      )$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|input>
      inv(A):=block(

      [Madj,i,asse,ang,Sasse,M1,M2,seno,coseno],

      if((expand(trigsimp(A.transpose(A)))#ident(3)) or
      (expand(trigsimp(determinant(A)#1)))) then return("Matrice inserita non
      e' di rotazione"),

      \ \ Madj: transpose(adjoint(ident(3)-A)),

      \ \ for i:1 thru 3 do(

      \ \ \ \ if(norms(Madj[1])#0) then (asse:(Madj[i]/norms(Madj[i])))

      ),

      \ \ asse:expand(trigsimp(asse)),

      \ \ if(asse=[0,0,0]) then return("nullo"),

      \ \ Sasse:matrix([0,-asse[3],asse[2]],[asse[3],0,-asse[1]],[-asse[2],asse[1],0]),

      \ \ M1:(A-transpose(A))/2,

      \ \ if(M1[1,2]#0) then (seno:M1[1,2]/Sasse[1,2]),

      \ \ if(M1[1,3]#0) then (seno:M1[1,3]/Sasse[1,3]),

      \ \ if(M1[2,3]#0) then (seno:M1[2,3]/Sasse[2,3]),

      \ \ M2:((A+transpose(A))/2)-ident(3),

      \ \ Sasse2:Sasse^^2,

      \ \ if(M2[1,2]#0) then (coseno:1-(M2[1,2]/Sasse2[1,2])),

      \ \ if(M2[1,3]#0) then (coseno:1-(M2[1,3]/Sasse2[1,3])),

      \ \ if(M2[2,3]#0) then (coseno:1-(M2[2,3]/Sasse2[2,3])),

      \ \ print([seno,coseno]),

      \ \ ang:atan2(seno,coseno),

      \ \ return([asse,ang])

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      inv(R1)
    <|unfolded-io>
      <math|<with|math-display|true|<around*|[|-<frac|<sqrt|3>|2>,-<frac|1|2>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >><around*|[|<around*|[|-<frac|1|<sqrt|3>>,-<frac|1|<sqrt|3>>,<frac|1|<sqrt|3>>|]>,-<frac|2*\<pi\>|3>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>
  </session>

  \;

  Esercizio 9

  Data una matrice antisimmetrica S calcola la matrice di rotazione R
  corrispondente usando la formula di Cayley

  <\session|maxima|default>
    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      s1:matrix([0,-1,-3],[1,0,2],[3,-2,0])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|-1>|<cell|-3>>|<row|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|3>|<cell|-2>|<cell|0>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      cayley(S):=block(

      [res],

      res:(ident(3)+S).(invert(ident(3)-S)),

      return(res)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      R:cayley(s1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|-<frac|1|3>>|<cell|<frac|2|3>>|<cell|-<frac|2|3>>>|<row|<cell|<frac|14|15>>|<cell|<frac|1|3>>|<cell|-<frac|2|15>>>|<row|<cell|<frac|2|15>>|<cell|-<frac|2|3>>|<cell|-<frac|11|15>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      inv(R)
    <|unfolded-io>
      <math|<with|math-display|true|<around*|[|<frac|2*<sqrt|14>|15>,-<frac|13|15>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><around*|[|<around*|[|-<frac|2|<sqrt|14>>,-<frac|3|<sqrt|14>>,<frac|1|<sqrt|14>>|]>,\<pi\>-arctan
      <around*|(|<frac|2*<sqrt|14>|13>|)>|]>>>
    </unfolded-io>
  </session>

  \;

  Esercizio 10

  Verificare tramite Maxima i conti della cinematica diretta nel piano.

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.43.0 http://maxima.sourceforge.net

      using Lisp SBCL 1.5.3

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\textput>
      Cinematica diretta 1 DOF P Traslazione lungo e<math|<rsub|x>>
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|input>
      cinematica1(q1,q2):=block(

      [R,tr,Lr,T],

      R:ident(2),

      Lr:matrix([0,0,1]),

      tr:matrix([q1],[q2]),

      T:zeromatrix(2,0),

      T:addcol(T,R),

      T:addcol(T,tr),

      T:addrow(T,Lr),

      return(T)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      cinematica1(q[1],0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Cinematica diretta 1 DOF R
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|input>
      cinematica2(l1):=block(

      [R,Rr,Tr,Lr,Rt,Tt,T,To1],

      Rr:matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)]),

      Tr:matrix([0],[0]),

      Lr:matrix([0,0,1]),

      R:zeromatrix(2,0),

      R:addcol(R,Rr),

      R:addcol(R,Tr),

      R:addrow(R,Lr),

      print(R),

      Rt:ident(2),

      Tt:matrix([l1],[0]),

      T:zeromatrix(2,0),

      T:addcol(T,Rt),

      T:addcol(T,Tt),

      T:addrow(T,Lr),

      print(T),

      To1:R.T,

      return(To1)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      cinematica2(l[1])
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|-sin
      <around*|(|\<vartheta\>|)>>|<cell|l<rsub|1>*cos
      <around*|(|\<vartheta\>|)>>>|<row|<cell|sin
      <around*|(|\<vartheta\>|)>>|<cell|cos
      <around*|(|\<vartheta\>|)>>|<cell|l<rsub|1>*sin
      <around*|(|\<vartheta\>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Cinematica Diretta 2DOF RR
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|input>
      cinematica4(index,angolo):=block(

      [R,Rr,Tr,Lr,Rt,Tt,T,To1],

      Rr:matrix([cos(angolo),-sin(angolo)],[sin(angolo),cos(angolo)]),

      Tr:matrix([0],[0]),

      Lr:matrix([0,0,1]),

      R:zeromatrix(2,0),

      R:addcol(R,Rr),

      R:addcol(R,Tr),

      R:addrow(R,Lr),

      print(R),

      Rt:ident(2),

      Tt:matrix([index],[0]),

      T:zeromatrix(2,0),

      T:addcol(T,Rt),

      T:addcol(T,Tt),

      T:addrow(T,Lr),

      print(T),

      To1:R.T,

      return(To1)

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      T01:cinematica4(l[1],q[1])$
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|cos <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      T12:cinematica4(l[2],q[2])$
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|-sin
      <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|2>|)>>|<cell|cos <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|2>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|input>
      T02:T01.T12$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      trigreduce(T02)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|l<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+l<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>>|<cell|l<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+l<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Cinematica diretta 3DOF RRR
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      T01:cinematica4(l[1],q[1])$
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|cos <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      T12:cinematica4(l[2],q[2])$
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|-sin
      <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|2>|)>>|<cell|cos <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|2>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      T23:cinematica4(l[3],q[3])$
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|3>|)>>|<cell|-sin
      <around*|(|q<rsub|3>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|3>|)>>|<cell|cos <around*|(|q<rsub|3>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|3>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|input>
      T03:T01.T12.T23$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|unfolded-io>
      trigreduce(expand((T03)))
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o17>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>|<cell|l<rsub|3>*cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+l<rsub|2>*cos
      <around*|(|q<rsub|2>+q<rsub|1>|)>+l<rsub|1>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>|<cell|cos
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>>|<cell|l<rsub|3>*sin
      <around*|(|q<rsub|3>+q<rsub|2>+q<rsub|1>|)>+l<rsub|2>*sin
      <around*|(|q<rsub|2>+q<rsub|1>|)>+l<rsub|1>*sin
      <around*|(|q<rsub|1>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      \;

      \;

      Cinematica diretta 2DOF PP
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
    <|input>
      T01:cinematica1(0,q[2])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>19) >
    <|input>
      T12:cinematica1(q[1],0)$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>20) >
    <|unfolded-io>
      T02:T01.T12
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|q<rsub|2>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Cinematica diretta 2DOF RP
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>21) >
    <|unfolded-io>
      T01:cinematica4(l[1],q[1])$
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|cos <around*|(|q<rsub|1>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>22) >
    <|unfolded-io>
      T12:cinematica1(0,q[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|q<rsub|2>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>23) >
    <|unfolded-io>
      T02:T01.T12
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o23>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|1>|)>>|<cell|-sin
      <around*|(|q<rsub|1>|)>>|<cell|l<rsub|1>*cos
      <around*|(|q<rsub|1>|)>-q<rsub|2>*sin
      <around*|(|q<rsub|1>|)>>>|<row|<cell|sin
      <around*|(|q<rsub|1>|)>>|<cell|cos <around*|(|q<rsub|1>|)>>|<cell|l<rsub|1>*sin
      <around*|(|q<rsub|1>|)>+q<rsub|2>*cos
      <around*|(|q<rsub|1>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\textput>
      Cinematica diretta 2 DOF PR
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>24) >
    <|unfolded-io>
      T01:cinematica1(q[1],0)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o24>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|q<rsub|1>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>25) >
    <|unfolded-io>
      T12:cinematica4(l[2],q[2])$
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|-sin
      <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|sin
      <around*|(|q<rsub|2>|)>>|<cell|cos <around*|(|q<rsub|2>|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|l<rsub|2>>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      T02:T01.T12
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><matrix|<tformat|<table|<row|<cell|cos
      <around*|(|q<rsub|2>|)>>|<cell|-sin
      <around*|(|q<rsub|2>|)>>|<cell|l<rsub|2>*cos
      <around*|(|q<rsub|2>|)>+q<rsub|1>>>|<row|<cell|sin
      <around*|(|q<rsub|2>|)>>|<cell|cos <around*|(|q<rsub|2>|)>>|<cell|l<rsub|2>*sin
      <around*|(|q<rsub|2>|)>>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|input>
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>