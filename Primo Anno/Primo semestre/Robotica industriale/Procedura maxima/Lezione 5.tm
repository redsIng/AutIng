<TeXmacs|1.99.13>

<style|<tuple|generic|italian|maxima>>

<\body>
  <\eqnarray*>
    <tformat|<table|<row|<cell|R<around*|(|t|)>=e<rsup|st>>|<cell|>|<cell|>>>>
  </eqnarray*>

  Laplace

  Autovalori, Autovettori

  Calcola matrice esponenziale per matrice nxn tramite funzione block

  <math|>

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
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      R:matrix([cos(theta),-sin(theta)],[sin(theta),cos(theta)]);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>69) >
    <|unfolded-io>
      laplace(f,t,s)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>70) >
    <|unfolded-io>
      laplace(1,t,s)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>71) >
    <|unfolded-io>
      laplace(exp(alpha*t),t,s)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>72) >
    <|unfolded-io>
      laplace(sin(omega*t),t,s)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>73) >
    <|unfolded-io>
      laplace(cos(omega*t),t,s)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>74) >
    <|unfolded-io>
      ilt(F,s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>75) >
    <|unfolded-io>
      ilt(1/s,s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>76) >
    <|unfolded-io>
      ilt(1/((s-a)*(s-b)*(s-c)),s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>77) >
    <|unfolded-io>
      ilt(1/(s^2+1),s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>78) >
    <|unfolded-io>
      ilt(1/(s^2+s+1),s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>79) >
    <|unfolded-io>
      ilt(s/(s^2+1),s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>80) >
    <|unfolded-io>
      ilt(1/((s+1)^2*(s+2)),s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|input>
      \;
    </input>

    <\input|Maxima] >
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>81) >
    <|unfolded-io>
      A:matrix([1,1,1],[0,-1,2],[0,0,2]);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>82) >
    <|unfolded-io>
      I:matrix([1,0,0],[0,1,0],[0,0,1]);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>83) >
    <|unfolded-io>
      SA:s*(I-A)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>84) >
    <|unfolded-io>
      SAI:invert(SA)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>85) >
    <|unfolded-io>
      SA:s*I-A
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>86) >
    <|unfolded-io>
      SAI:invert(SA)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>87) >
    <|unfolded-io>
      ilt(SAI,s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>88) >
    <|unfolded-io>
      ilt(SAI[1][1],s,t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>89) >
    <|unfolded-io>
      SAI
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>90) >
    <|unfolded-io>
      SAIC:SAI
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>91) >
    <|unfolded-io>
      for i:1 thru 3 do

      \ \ \ \ for j:1 thru 3 do

      \ \ \ \ (

      \ \ \ \ \ a:SAI[i,j],

      \ \ \ \ \ b:ilt(a,s,t),

      \ \ \ \ \ SAIC[i,j]:b

      \ \ \ \ \ )
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>92) >
    <|unfolded-io>
      SAIC
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>93) >
    <|unfolded-io>
      A
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>94) >
    <|unfolded-io>
      eigenvalues(A)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>95) >
    <|unfolded-io>
      B:eigenvectors(A)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>96) >
    <|unfolded-io>
      B[2]
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>97) >
    <|unfolded-io>
      B[2][1]
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>98) >
    <|unfolded-io>
      v1:transpose(matrix(B[2][1][1]))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>99) >
    <|unfolded-io>
      v2:transpose(matrix(B[2][2][1]))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>100) >
    <|unfolded-io>
      v3:transpose(matrix(B[2][3][1]))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>101) >
    <|unfolded-io>
      matAutovalori:matrix([v1,v2,v3])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>102) >
    <|unfolded-io>
      V:addcol(v1,v2,v3)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>103) >
    <|unfolded-io>
      Vi:invert(V)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>104) >
    <|unfolded-io>
      D:Vi.A.V
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>105) >
    <|unfolded-io>
      eD:D
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>106) >
    <|unfolded-io>
      for i:1 thru 3 do

      \ \ \ eD[i,i]:exp(eD[i,i]*t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>107) >
    <|unfolded-io>
      eD
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>108) >
    <|unfolded-io>
      V.eD.Vi
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>109) >
    <|unfolded-io>
      expand(matrixexp(A*t))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>110) >
    <|unfolded-io>
      <text|>SAI
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>111) >
    <|unfolded-io>
      matrix([0, -s, -s], [0, 2*s, -2*s], [0, 0, -s])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>112) >
    <|unfolded-io>
      matrix([s-1, -1, -1], [0, s+1, -2], [0, 0, s-2])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>113) >
    <|unfolded-io>
      SAI:matrix([s-1, -1, -1], [0, s+1, -2], [0, 0, s-2]);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>114) >
    <|unfolded-io>
      adjSAI:adjoint(SAI);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>115) >
    <|unfolded-io>
      adjAut1: subst(s=1,adjSAI);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>116) >
    <|unfolded-io>
      adjAut2: subst(s=-1,adjSAI);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>117) >
    <|unfolded-io>
      adjAut3: subst(s=2, adjSAI);
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>

    <\textput>
      uvbkhb
    </textput>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|input>
      \;
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>118) >
    <|unfolded-io>
      S:matrix(
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|input>
      \;
    </input>

    <\textput>
      Definiamo S antuisimmetrica
    </textput>

    <\input|Maxima] >
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>118) >
    <|unfolded-io>
      S:matrix([0,-omega],[omega,0])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>119) >
    <|unfolded-io>
      eS:matrixexp(S*t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>120) >
    <|unfolded-io>
      eS:expand(demoivre(expand(eS)))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>121) >
    <|unfolded-io>
      eS:expand(demoivre(expand(eS)))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>122) >
    <|unfolded-io>
      es
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>123) >
    <|unfolded-io>
      eS
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>124) >
    <|unfolded-io>
      es:lambda*matrix([1,0],[0,1])-S
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>125) >
    <|unfolded-io>
      eSi:invert(es)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>126) >
    <|unfolded-io>
      eSiC: eSi
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>129) >
    <|unfolded-io>
      assume(omega\<gtr\>0)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>132) >
    <|unfolded-io>
      for i:1 thru 2 do

      \ \ \ \ for j:1 thru 2 do

      \ \ \ \ (

      \ \ \ \ \ a:eSi[i,j],

      \ \ \ \ \ b:ilt(a,lambda,t),

      \ \ \ \ \ eSiC[i,j]:b

      \ \ \ \ \ )
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>133) >
    <|unfolded-io>
      eSiC
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>134) >
    <|unfolded-io>
      nonzero
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>135) >
    <|unfolded-io>
      eSiC
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>136) >
    <|input>
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>136) >
    <|unfolded-io>
      assume(omega\<gtr\>0)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>137) >
    <|input>
      \;
    </input>

    <\input|Maxima] >
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      S:matrix([0,-omega],[omega,0])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      eS:matrixexp(S*t)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      eS:expand(demoivre(expand(eS)))
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      es:lambda*matrix([1,0],[0,1])-S
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      eSi:invert(es)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      eSiC: eSi
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      assume(omega\<gtr\>0)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      for i:1 thru 2 do

      \ \ \ \ for j:1 thru 2 do

      \ \ \ \ (

      \ \ \ \ \ a:eSi[i,j],

      \ \ \ \ \ b:ilt(a,lambda,t),

      \ \ \ \ \ eSiC[i,j]:b

      \ \ \ \ \ )
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      eSiC
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      c[1]
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      let(cos(q[1]),c[1])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      let(sin(q[1]),s[1])
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      expr:sin(q[1])*cos(q[1])-sin(q[1])^2
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      letsimp(expr)
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      \;
    <|unfolded-io>
      <script-dead>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|input>
      \;
    </input>

    <\input|Maxima] >
      \;
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      let(cos(q[1]),c[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>cos <around*|(|q<rsub|1>|)>\<longrightarrow\>c<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      let(sin(q[1]),s[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>sin <around*|(|q<rsub|1>|)>\<longrightarrow\>s<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      expr:sin(q[1])*cos(q[1])-sin(q[1])^2
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>cos <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>-sin
      <around*|(|q<rsub|1>|)><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      letsimp(expr)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>c<rsub|1>*s<rsub|1>-s<rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      diff(expr,q[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>-sin <around*|(|q<rsub|1>|)><rsup|2>-2*cos
      <around*|(|q<rsub|1>|)>*sin <around*|(|q<rsub|1>|)>+cos
      <around*|(|q<rsub|1>|)><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      diff(letsimp(expr),q[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>0>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|input>
      \;
    </input>
  </session>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>