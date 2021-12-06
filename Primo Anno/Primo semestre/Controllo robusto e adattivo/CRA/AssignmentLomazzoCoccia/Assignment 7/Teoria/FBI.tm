<TeXmacs|1.99.13>

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

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      /* Parametri */

      M: 1$

      l: 1$

      F: 1$

      g: 9.81$

      omega: 0.1$

      /* Matrici */

      A: matrix([0, 1, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, -F/M, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 0, 1],

      \ \ \ \ \ \ \ \ \ \ [0, F/(M*l), g/l, 0])$

      B: transpose([0, 1/M, 0, -1/(M*l)])$

      P: matrix([0, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 1/M],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, -1/(M*l)])$

      C: matrix([1, 0, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 1, 0])$

      C_bar: submatrix(2, C)$

      S: matrix([0, 1, 0],

      \ \ \ \ \ \ \ \ \ \ [-omega^2, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 0])$

      Q: matrix([-1, 0, 0],

      \ \ \ \ \ \ \ \ \ \ [0, 0, 0])$

      Q_bar: submatrix(2, Q)$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|input>
      /* Risoluzione equazioni FBI */

      fbiSolve(A, B, C, P, Q, S) := block(

      \ \ \ \ [n, m, r, Pi, Gamma, varsList, eqsList, member1, member2,
      sols],

      \ \ \ \ /* Definisco dimensioni matrciali */

      \ \ \ \ n: matrix_size(A)[1],

      \ \ \ \ m: matrix_size(B)[2],

      \ \ \ \ r: matrix_size(S)[1],

      \ \ \ \ eqsList: [],

      \ \ \ \ varsList:[],

      \ \ \ \ Pi: zeromatrix(n, r),

      \ \ \ \ for i: 1 thru n do (

      \ \ \ \ \ \ for j: 1 thru r do(

      \ \ \ \ \ \ \ \ \ \ \ \ Pi[i, j]: eval_string(simplode(["pi_", i, j]))

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ Gamma: zeromatrix(m, r),

      \ \ \ \ for i: 1 thru m do (

      \ \ \ \ \ \ for j: 1 thru r do(

      \ \ \ \ \ \ \ \ \ \ \ \ Gamma[i, j] :eval_string(simplode(["gamma_", i,
      j]))

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ varsList :append(varsList, list_matrix_entries(Pi)),

      \ \ \ \ varsList :append(varsList, list_matrix_entries(Gamma)),

      \ \ \ \ /* Calcolo membri equazione */

      \ \ \ \ member1: Pi.S - (A.Pi + B.Gamma + P),

      \ \ \ \ member2: C.Pi + Q,

      \ \ \ \ for i: 1 thru n do(

      \ \ \ \ \ \ \ \ for j: 1 thru r do (

      \ \ \ \ \ \ \ \ \ \ \ \ eqsList: append(eqsList, [member1[i, j]])

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ for i: 1 thru matrix_size(Q)[1] do(

      \ \ \ \ \ \ \ \ for j: 1 thru matrix_size(Q)[2] do (

      \ \ \ \ \ \ \ \ \ \ \ \ eqsList: append(eqsList, [member2[i, j]])

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ /* Risoluzione equazioni */

      \ \ \ \ sols: solve(eqsList, varsList)[1],

      \ \ \ \ for i: 1 thru n do (

      \ \ \ \ \ \ for j: 1 thru r do(

      \ \ \ \ \ \ \ \ \ \ \ \ Pi[i, j]: part(sols[j + (i - 1)*r], 2)

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ for i: 1 thru m do (

      \ \ \ \ \ \ for j: 1 thru r do(

      \ \ \ \ \ \ \ \ \ \ \ \ Gamma[i, j]: part(sols[n*r + j + (i - 1)*r], 2)

      \ \ \ \ \ \ \ \ )

      \ \ \ \ ),

      \ \ \ \ [Pi, Gamma]

      )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      [Pi_fbi, Gamma_fbi]: fbiSolve(A, B, C_bar, P, Q_bar, S)$

      print(Pi,"=",Pi_fbi)$

      print(Gamma,"=",Gamma_fbi)$
    <|unfolded-io>
      \;

      rat: replaced -0.01 by -1/100 = -0.01

      \;

      rat: replaced -0.01 by -1/100 = -0.01

      \;

      rat: replaced -0.01 by -1/100 = -0.01

      \;

      rat: replaced -9.81 by -981/100 = -9.81

      \;

      rat: replaced -0.01 by -1/100 = -0.01

      \;

      rat: replaced -9.81 by -981/100 = -9.81

      \;

      rat: replaced -9.81 by -981/100 = -9.81

      <math|<with|math-display|true|\<Pi\><text|=
      ><matrix|<tformat|<table|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|-<frac|1|982>>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|-<frac|1|982>>|<cell|0>>>>>>>

      <math|<with|math-display|true|\<Gamma\><text|=
      ><matrix|<tformat|<table|<row|<cell|-<frac|1|100>>|<cell|1>|<cell|-1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>18) >
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