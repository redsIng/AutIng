<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima|vact>>

<\body>
  <\strong>
    <space|5em>Procedura 7: il prodotto vettoriale <math|=> prodotto
    matriciale

    \;
  </strong>

  Scrivere una procedura che calcoli il prodotto vettoriale
  <math|v\<times\>w> come prodotto matriciale

  <space|17em><math|v\<times\>w=S<around*|(|v|)>.w>

  In particolare, vi è una corrispondenza biunivoca tra il vettore v e la
  matrice antisimmetrica S(v):

  <\eqnarray*>
    <tformat|<table|<row|<cell|v =<matrix|<tformat|<table|<row|<cell|a>>|<row|<cell|b>>|<row|<cell|c>>>>>\<Leftrightarrow\>S<around*|(|v|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>-c<space|1em>b>>|<row|<cell|c<space|1em>0<space|1em>-a>>|<row|<cell|-b<space|1em>a<space|1em>0>>>>>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Ipotizzando che:

  <space|16em><math|v=a*e<rsub|x>+b*e<rsub|y>+c*e<rsub|z>>

  <space|16em><math|w=\<alpha\>*e<rsub|x>+\<beta\>*e<rsub|y>+\<gamma\>*e<rsub|z>>

  Il prodotto vettoriale <math|v\<times\>w> è pari a:

  <space|9em><math|v\<times\>w=v\<times\><around*|(|\<alpha\>*e<rsub|x>+\<beta\>*e<rsub|y>+\<gamma\>*e<rsub|z>|)>=\<alpha\>*v\<times\>e<rsub|x>+\<beta\>*v\<times\>e<rsub|y>+\<gamma\>*v\<times\>e<rsub|z>>

  Che in forma matriciale:

  <space|11em><math|v\<times\>w=<matrix|<tformat|<table|<row|<cell|\<space\>\<space\>\<vdots\><space|3em>\<vdots\><space|1em><space|2em>\<vdots\>\<space\>>>|<row|<cell|v<rsub|>\<times\>*e<rsub|x<rsub|>><space|1em>v\<times\>e<rsub|y><space|1em>v\<times\>e<rsub|z>>>|<row|<cell|\<space\>\<space\>\<vdots\><space|3em>\<vdots\><space|1em><space|2em>\<vdots\>\<space\>>>>>>*<matrix|<tformat|<table|<row|<cell|\<alpha\>>>|<row|<cell|\<beta\>>>|<row|<cell|\<gamma\>>>>>>=S<around*|(|v|)>.w>

  In cui:

  <\math>
    v<rsub|>\<times\>*e<rsub|x<rsub|>>=c*e<rsub|y>-b**e<rsub|z>=<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|c>>|<row|<cell|-b>>>>>;v<rsub|>\<times\>*e<rsub|y>=-c*e<rsub|x>+a*e<rsub|z>=<matrix|<tformat|<table|<row|<cell|-c>>|<row|<cell|0>>|<row|<cell|a>>>>>;v<rsub|>\<times\>*e<rsub|z>=b*e<rsub|x>-a*e<rsub|y>=<matrix|<tformat|<table|<row|<cell|b>>|<row|<cell|-a>>|<row|<cell|0>>>>>;
  </math>

  Quindi:

  <space|15em><math|S<around*|(|v|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>-c<space|1em>b>>|<row|<cell|c<space|1em>0<space|1em>-a>>|<row|<cell|-b<space|1em>a<space|1em>0>>>>>>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <\session|maxima|default>
    <\session|maxima|default>
      <\textput>
        La funzione vect(v,w) prende in input due vettori
        <math|s,t\<in\>\<bbb-R\><rsup|3> >e restituisce in output il prodotto
        vettoriale <math|v\<times\>w> effettuato tramite la matrice S
        antisimmetrica, popolata da due cicli for.

        In particolare, gli indici <math|s<rsub|1,3-remainder<around*|(|i+j,3|)>>>
        permetteno di scegliere ed inserire correttamente all'interno della
        matrice S i valori <math|a,b,c> al fine di ottenere:

        <math|S<around*|(|v|)>=<matrix|<tformat|<table|<row|<cell|0<space|1em>-c<space|1em>b>>|<row|<cell|c<space|1em>0<space|1em>-a>>|<row|<cell|-b<space|1em>a<space|1em>0>>>>>>

        Infine, viene effettuato il prodotto punto S.t e restituito in output
        tramite la variabile res.

        \;
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>12) >
      <|unfolded-io>
        vect(v,w):=block([res],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S:ident(3),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru 3 do

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j:1 thru 3 do

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if i=j

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then
        S[i][j]:0

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif j\<gtr\>i

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ then (

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp:(-1)^(j-i)*v[1][3-remainder(i+j,3)],

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[i][j]:temp,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ S[j][i]:-temp

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

        \ \ \ \ \ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:S.w

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
        >><math-up|vect><around*|(|v,w|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,S:<math-up|ident><around*|(|3|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|for><space|0.27em>j<space|0.27em><math-bf|thru><space|0.27em>3<space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>i=j<space|0.27em><math-bf|then><space|0.27em><around*|(|S<rsub|i>|)><rsub|j>:0<space|0.27em><math-bf|elseif><space|0.27em>j\<gtr\>i<space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|temp>:<around*|(|-1|)><rsup|j-i>*<around*|(|v<rsub|1>|)><rsub|3-<math-up|remainder><around*|(|i+j,3|)>>,<around*|(|S<rsub|i>|)><rsub|j>:<math-up|temp>,<around*|(|S<rsub|j>|)><rsub|i>:-<math-up|temp>|)>,<math-up|res>:S\<cdot\>w|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>13) >
      <|unfolded-io>
        v:matrix([a,b,c]);
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
        >><matrix|<tformat|<table|<row|<cell|a>|<cell|b>|<cell|c>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>14) >
      <|unfolded-io>
        w:matrix([alpha,beta,gamma]);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
        >><matrix|<tformat|<table|<row|<cell|\<alpha\>>|<cell|\<beta\>>|<cell|\<gamma\>>>>>>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>15) >
      <|unfolded-io>
        vectMatrix:vect(v,w);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o15>)
        >><matrix|<tformat|<table|<row|<cell|b*\<gamma\>-\<beta\>*c>>|<row|<cell|\<alpha\>*c-a*\<gamma\>>>|<row|<cell|a*\<beta\>-\<alpha\>*b>>>>>>>
      </unfolded-io>

      <\textput>
        Prodotto vettoriale di Maxima
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>16) >
      <|unfolded-io>
        load(vect)
      <|unfolded-io>
        <math|<with|math-display|true|<text|vect: warning: removing existing
        rule or rules for ".". >>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>16) >
      <|unfolded-io>
        e:[a,b,c];
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
        >C:/Maxima/bin/../share/maxima/5.44.0/share/vector/vect.mac >>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>18) >
      <|unfolded-io>
        d:[alpha,beta,gamma];
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o18>)
        >><around*|[|\<alpha\>,\<beta\>,\<gamma\>|]>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>19) >
      <|unfolded-io>
        e~d;
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o19>)
        >><nbsp><around*|(|<around*|[|a,b,c|]>,<around*|[|\<alpha\>,\<beta\>,\<gamma\>|]>|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>20) >
      <|unfolded-io>
        vectMaxima:express(%)
      <|unfolded-io>
        \;

        \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o20>)
        >><around*|[|b*\<gamma\>-\<beta\>*c,\<alpha\>*c-a*\<gamma\>,a*\<beta\>-\<alpha\>*b|]>>>
      </unfolded-io>

      <\textput>
        La fuznione checkVectors(x,y) verifica se due vettori sono uguali: si
        scorre, tramite un ciclo for, tutto il vettore x e si confrontano
        tutti gli elementi di x con il corrispettivo elemento di y. Nel caso
        in cui vemga trovato un elemento <math|x<rsub|i>\<neq\>y<rsub|i >
        >con <math|i\<in\><around*|{|1,2,3|}>> la funzione termina e
        restituisce in output un messaggio di errore.\ 

        Altrimenti, il ciclo for viene terminato ed i vettori risultano
        uguali.
      </textput>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>21) >
      <|unfolded-io>
        checkVectors(x,y):=block([res],\ 

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ size:length(x),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ tempVect:
        transpose(y),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru size
        do(

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if(x[i]!=y[i])
        then ( res:"Vectors are not equals",

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ return)

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ),

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:"Vectors are
        equals"

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o21>)
        >><math-up|checkVectors><around*|(|x,y|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-up|size>:<math-up|length><around*|(|x|)>,<math-up|tempVect>:<math-up|transpose><around*|(|y|)>,<math-bf|for><space|0.27em>i<space|0.27em><math-bf|thru><space|0.27em><math-up|size><space|0.27em><math-bf|do><space|0.27em><math-bf|if><space|0.27em>x<rsub|i>!=y<rsub|i><space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|res>:<text|Vectors
        are not equals >,<math-up|return>|)>,<math-up|res>:<text|Vectors are
        equals >|)>>>
      </unfolded-io>

      <\unfolded-io>
        <with|color|red|(<with|math-font-family|rm|%i>22) >
      <|unfolded-io>
        checkVectors(vectMatrix,vectMaxima);
      <|unfolded-io>
        <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o22>)
        >Vectors are equals >>>
      </unfolded-io>
    </session>

    <\output>
      \;

      \;
    </output>
  </session>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>