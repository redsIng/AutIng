<TeXmacs|1.99.20>

<style|<tuple|generic|italian|maxima>>

<\body>
  <center|<strong|Calcolo Autovettori>>

  \;

  <\session|maxima|default>
    <\output>
      \;

      Maxima 5.44.0 http://maxima.sourceforge.net

      using Lisp SBCL 2.0.0

      Distributed under the GNU Public License. See the file COPYING.

      Dedicated to the memory of William Schelter.

      The function bug_report() provides bug reporting information.
    </output>

    <\textput>
      Procedura per il calcolo della dimensione di una matrice
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      size(A):=block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if nonscalarp(A) then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ row: length(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ col: length(transpose(A)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[row,col])

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ else res:[1,1]

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >><math-up|size><around*|(|A|)>\<assign\><math-bf|block><space|0.27em><around*|(|<around*|[|<math-up|res>|]>,<math-bf|if><space|0.27em><math-up|nonscalarp><around*|(|A|)><space|0.27em><math-bf|then><space|0.27em><around*|(|<math-up|row>:<math-up|length><around*|(|A|)>,<math-up|col>:<math-up|length><around*|(|<math-up|transpose><around*|(|A|)>|)>,<math-up|res>:<around*|[|<math-up|row>,<math-up|col>|]>|)><space|0.27em><math-bf|else><space|0.27em><math-up|res>:<around*|[|1,1|]>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      A1:matrix([1,1,0],[0,1,0],[0,0,1]);
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >><matrix|<tformat|<table|<row|<cell|1>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|1>>>>>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|input>
      A:matrix([1,0,2],[1,2,3],[0,0,3])$
    </input>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>45) >
    <|input>
      eigenvect(A):= block([res],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:[],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ size:size(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if size[1]=size[2] and nonscalarp(A)
      then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeM: size(A),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sA : lambda*ident(sizeM[1])-A,

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ polA: expand(determinant(sA)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(polA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ autval:solve(polA=0,lambda),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(autval),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjA: adjoint(sA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeAut: size(autval),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for i:1 thru sizeAut[2] do

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ adjAaut: subst(autval[i],adjA),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(adjAaut),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ autvect: args(columnspace(adjAaut)),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ sizeAutvect: size(autvect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ mg:sizeAutvect[2],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if mg=0 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:append(res,[[autval[i],

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ args(nullspace(subst(autval[i],sA)))]]),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ print(res))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elseif mg#0 then(

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ disp(autvect),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res:append(res,[[autval[i],autvect[1]]]))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ))else print("Insert a Matrix"),

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ res

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ )$
    </input>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>46) >
    <|unfolded-io>
      autovalori:eigenvect(A)$
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|\<lambda\>>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\>+1>>>>>>>

      \;

      <math|<with|math-display|true|\<lambda\><rsup|3>+\<lambda\><rsup|2>-\<lambda\>-1>>

      \;

      <math|<with|math-display|true|<around*|[|\<lambda\>=1,\<lambda\>=-1|]>>>

      \;

      \;

      \ <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|\<lambda\>*<around*|(|\<lambda\>+1|)>>|<cell|\<lambda\>+1>|<cell|0>>|<row|<cell|\<lambda\>+1>|<cell|\<lambda\>*<around*|(|\<lambda\>+1|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\><rsup|2>-1>>>>>>>

      \;

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|0>>|<row|<cell|2>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      \;

      <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>>>

      \;

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      \;

      <math|<with|math-display|true|<around*|[|<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>47) >
    <|unfolded-io>
      autovalori
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o47>)
      >><around*|[|<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>48) >
    <|unfolded-io>
      stringout("autovectors.mac",functions)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o48>)
      >C:/Users/loryb/Desktop/Magistrale-Tor-Vergata/Primo Anno/Primo
      semestre/Robotica industriale/ProcedureMaxima21-22/autovectors.mac >>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>49) >
    <|unfolded-io>
      eigenvect(2)
    <|unfolded-io>
      <math|<with|math-display|true|<text|Insert a Matrix >>>

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o49>)
      >><around*|[||]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>50) >
    <|unfolded-io>
      A:matrix([0,1,0],[1,0,0],[0,0,-1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o50>)
      >><matrix|<tformat|<table|<row|<cell|0>|<cell|1>|<cell|0>>|<row|<cell|1>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|-1>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>51) >
    <|unfolded-io>
      bb:eigenvect(A)
    <|unfolded-io>
      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|\<lambda\>>|<cell|-1>|<cell|0>>|<row|<cell|-1>|<cell|\<lambda\>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\>+1>>>>>>>

      \;

      <math|<with|math-display|true|\<lambda\><rsup|3>+\<lambda\><rsup|2>-\<lambda\>-1>>

      \;

      <math|<with|math-display|true|<around*|[|\<lambda\>=1,\<lambda\>=-1|]>>>

      \;

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|\<lambda\>*<around*|(|\<lambda\>+1|)>>|<cell|\<lambda\>+1>|<cell|0>>|<row|<cell|\<lambda\>+1>|<cell|\<lambda\>*<around*|(|\<lambda\>+1|)>>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|\<lambda\><rsup|2>-1>>>>>>>

      \;

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|2>|<cell|2>|<cell|0>>|<row|<cell|2>|<cell|2>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      \;

      <math|<with|math-display|true|<around*|[|<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>>>

      \;

      <math|<with|math-display|true|<matrix|<tformat|<table|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>|<row|<cell|0>|<cell|0>|<cell|0>>>>>>>

      \;

      <math|<with|math-display|true|<around*|[|<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>|]>>>

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o51>)
      >><around*|[|<around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>,<around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>52) >
    <|unfolded-io>
      bb[1]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o52>)
      >><around*|[|\<lambda\>=1,<matrix|<tformat|<table|<row|<cell|2>>|<row|<cell|2>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>53) >
    <|unfolded-io>
      bb[2]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o53>)
      >><around*|[|\<lambda\>=-1,<around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>16) >
    <|unfolded-io>
      bb[3]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o16>)
      >><around*|[|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>|<row|<cell|1>>>>>,<matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|-1>>|<row|<cell|0>>>>>|]>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>17) >
    <|input>
      \;
    </input>
  </session>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  <center|<strong|Calcolo Energia Cinetica 3 Link Planare>>

  <center|<\render-small-figure|||<image|<tuple|<#89504E470D0A1A0A0000000D49484452000001780000018D08060000001BC26A0C00000006624B474400FF00FF00FFA0BDA7930000200049444154789CEDDD79B4246599E7F16F15D4450A8A52501637928606452D570414A4E8121770415906101D97565B59141D6807D0963EEAA8AD0CF6348E322EB8A2282D8D8A2D088242890A2A368DA068270225202094085441D59D3FDE374F06492E9191B165E4F773CE3D9137E3CD8C971EE777A39E78E20D28CFA9C015251E4F925492D5C03CF0F8AA272249B3606149C7D90558125F1F50D231254925F827601DE10CFEA715CF459294A3DF13C27D1E588F651A492A5C19259A67038F4BFCBE1E786509C795A4995646C01F04DC9FF87D01706809C79524152C599EB14C23492529FA0C7E171E5C9EE9B04C2349051B16F02B800B811F032B81670C19BB14783FB05BCFFBBDE5990ECB34925491E700DF06362784F1F5C02A60F180F1FF4C28BD9CD1F37EBFF28C651A49AAC852E017C01689F7AE2784F2EE033EF3ABB8FFD8C47BBB3038DCE7810780B7E7397149D270C702C7257EDF8E6E283FA1CFF84727F627CB381F06D63238E0D711CA3F92A4925C056C95F8FD784220FFE780F187C7FD77F0E09A7EE7AC7FD88F651A492AD1BE3DBF5F4D08E3770D18FF99B8FFACC47BA3CA33C932CDDBF29AB82429BD67D03DD36E0D18D38E63DE9A78EFC384EE995101BF0EB82CFF694B9246F92821882F19B07F7BFAD7E7D394672CD34852857E4708E12306EC7F63DC7F53E2BDB4E519CB349254A061373A2D2574D0005C3A60CCDFC4ED8589F706DDDC3488373D4952C99E4BB74EBEF18031B7C431AF4DBC374E792659A6E9B7A4812429A36167F09D7D7F00EEEDB3FFD9C096F175E70C7E17B2D5D35D9B46924AB48470F67E37B0A867DF62C203B4E781DF24DE1F757393DD34925413EF2504707249819D81F3815BE3BE4F26F66529CF58A691A40A2C005E47385BFF39701EE1C6A6ED80D584603E288E7D16D9C3BDD34D737409FF4D92A4213A1760EFA47B01F604260BF879E03BA5FD174852C36D98F1739DE50CCEA07B01F6D3C0AF877CE6B5849BA1062D790061554A4952813E0CDC45B893B5D786841B9BD631FC2120BD4E012E9F7C6A92A4AC9E48B764D26F39DF63E2BEFF39E6F71AF09254B1DD08017E23F0FC9E7D7B102EAE9E99E17B0D7849AAD81CA1277DCFC47B8B8037112EAA1ECF43FBE2D330E025A944FD2EB2AE055E01FC23F0BEF8FB3D8485C79E055C57DAEC2449990DEAA2F90361A54849D2941AB6168D24698A19F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F092D45006BC243594012F490D65C04B524319F052FD6C059C0E5C07DC0C5C039C022CAE704ED250A70097573D09A9E6FE015807CCF7F9590B1C56DDD4A4C10C7869B8F7D23FD8933FEB81032B9A9F3490012F0DB61583CFDC7B7FEE0136AC669A9A26D6E0A57AF808E9FFFFE3C6C09105CE450D61C04BF5B0C798E35F56C82CD42806BC540F9B8C397EF34266A14631E0A57AB86BCCF1B716320B358A012FD5C3F7C61C7F4621B39032B28B461A6C33E07ED275D1FCA9A2396ACA78062FD5C36AE02D29C6AD07F62B782E6A08035EAA8F4F01AF06EE1BB0FF2E602F606569339252B24423A533077C95508E590D5C00BCB1D219692A79062FD5CF5AE0AAF8FAF3C00AE0FF55371D4D2B035EAAA76DE3F6FA4A67A1A966C04BF5D48ADB768573D09433E0A57A6AC56DBBC23968CA19F052FD6C003C2EBE6E57380F4D39035EAA9F47133A69FE02FCB1E2B9688A19F052FDB4E2B65DE11CD40006BC543FADB86D5738073580012FD54F2B6EDB15CE410D60C04BF5630FBC7261C04BF5D38ADB768573500318F052FDB4E2B65DE11CD40006BC542FF6C02B3706BC542FF6C02B3706BC542FADB86D5738073584012FD54B2B6EDB15CE410D61C04BF5D28ADB768573504318F052BDD803AFDC18F052BDB4E2B65DE11CD41006BC542FADB86D5738073584012FD5873DF0CA95012FD5873DF0CA95012FD5472B6EDB15CE410D62C04BF5D18ADB768573508318F0527DB4E2B65DE11CD42006BC541FF6C02B5706BC541FADB86D5738073588012FD5472B6EDB15CE410D62C04BF5600FBC7267C04BF5600FBC7267C04BF5D08ADB76857350C318F0523DB4E2B65DE11CD43006BC540FADB86D573807358C012FD5833DF0CA9D012FD5432B6EDB15CE410D63C04BF5D08ADB76857350C318F052F526E981DF083801F80170057019B03CAF8949699D025C5EF524A41A7A1C300FDC3DE6E79601D70067034BE37BAF07EE0376C96D76520A06BCD4DF9E8480BF6A8CCF3C857043D415841BA43A1600770117E4363B4D2D4B3452F55A71DB4E397E2BE07CE061C021C0DAC4BE79E05A602FBA67F59A5106BC54BD56DCB6538EFF3421E43F04FCA6CFFE7B0875FDE513CE4B53CE8097AA374E0FFC6B81FD086BD67C7CC09847C4EDE3279B96A69D012F55AF15B7ED11E3E68093E2EB4F01770C18B775DC3E62C07ECD08035EAA5E2B6EDB23C6BD9970563E4F685AE86729F0A8F8FACE4927A6E966C04BD51AA707FE6D71FB932163772374D280CB0ECF3C035EAA56DA75E09F0B6C1F5F9F3364DC7312AF6F986C6A9A761B563D0169C6B5E2B63D62DCAB13AF57025B0C18F7BCB8BD9FD023AF1966C04BD56AC56D7BC4B87D12AFBF9FE27B7F06DC9B613E6A104B3452B55A71DB1E32666BE0AFE2EB330835F67E3FC93F02DFEDF33D3B03A7C57DDF022E02CE030EC42C6824FF1F554D3247B84D7F0DB01AB80D58157FFE48E82AB98750BEF8604573EC95A6077EB7C4EB4B878CDB37F1FA0B3DFB5600FF029C0CBC107809B03721E4BF067C9170C157CAC4B56854868D0967BCBB030F105A0AE781130967B0DB009B5636BB87FA1E617E070D197324DDFF8EA70F19774D1CB3B2CFBE9F10FE88ECDCF3FE02C21FBE79C20D546A10CFE0D534F70237037FA07B467A25F03EE0EAF8FEB8AB3616A915B7ED21633A7DED7F017E3960CCAEC04EF1F547FBEC7F04A187FE193DEFCF0337C5D74F1D32074D212FB2AAA9F64EBC3EBFB2590C97B6077E4962CCBA01638E8EDB2B817FEDB3FFE584003FABE7FD39BAED973F1E32074D21035E4D950CF8345D275548DB037F7BDCDE3A60FF36744B3CC713CECA7B5D1D7F7A1D417868C8D9B8C470E318F06AAA4EC03F00FCB0CA890CD18ADBF68871ABE276F580FDC7008B80CF02E7A638EE1CA15C7328F04EE07F037F9FE2739A3206BC9A6807E0B1F1F515C09F2B9CCB30ADB86D8F187761DCF65BDF7D77E01DC0EF80B7A738E632C205E78D8027131EF57736A1B3480DE3455635D1349467207DC05F4FE840DBA1E7FD4D09ED907F009ECFE033FCA45F0207136AF2DB13AE4F5C0C7C9ED08194F4B784F28F34926D922ACB97E8B615BEA0E2B90CF329C21C8F4D31761FC205D64E2BE32309E17C25B0E384F33837CEE3D4C47B2F26FCE130E0958A01AFB2AC2204D65A60938AE7324C9A1EF8A49712FAD92F21DCA0742CA1F63EA9A3E23CD613D6B8792C700BE15F05522A06BCCAB013DDB3F761777DD6C1758479EE52F0710E27FCD13B61C0FE57D2FDBFD91E848BD2EF29784E2A81357835CDB4D4DFC759077E52FB114A2D870FD8DF8ADB75C001840BAEEF2F784E2A815D346A9A6909F8B43DF079B89070667EF480FD9DEB14DF030E21DCED3AE8862A4D11035E4DB33C6ED7D27F4D9671ED4C683FDC967066BB69FCEED308778CAECFF8BDADB86D4F36BD543E03EC45B8707A35DDA5091602C711161FFB0121D80F235C5C95C6620D5E457B12DD5AF2C5637EB65F7D7A05E1ECF70989F716D0BD5BF4CB645F81F1D5F13BBE95F1F3E35A4008F86FD0BD487B29F04D4259C6BABB2662C0AB68C95517DF3BC6E7961396CCED55E40A8CEF8E9FFF978C9FCFD387087FC85C2EB861BCC8AA26C95A7F3F02F85C9FF78B5C8131CD3AF0657831F01AE0555877D7043C83579116101EF0314F583278A3949FDB11B891FED7A37626ACD732D7F3FE1C705F3CD68A2C9365FC1EF822D8EFAEDC18F02AD232BAE599B4AB222E245C883D79CC631D138FF38D313F9754560FFC201B62DD5D3932E055A4B7F1E0A737A571621CFFB41463E7086BC1BC9B507F3F99EC77916E4078ACE03CDD877994CDBABB7265C0AB48E7F0E0BB3187594C78EAD13C612D975196016702FF06FC361EEB7999671A6E709AA7BA274BB9CE8C7267C02B6F4B08CF5F3D986E4D7C1ED88ED0AFBE49FC793861E5C41584876DAF4A8C7D4786E376D66EE9B702631A7BC6CF5F95E1B393B2EEAE4218F0CAD307E88674D69F3B802D331EBFDF0A8C6995DD03DF61DD7DC6D826A969753CA17366929FCD19FC18BC51BE13B76F21ACC0388E56DCB6331E3BABF7E33A3333C58097FA1BB50263A70F7E01E3AFC75E450FBCFDEE33C88097FA1B6705C6FF18F3BB3B9F6D8F3BA98C1E0B9C4E280DB9CECC0C31E0A5FE2E24DC00356A05C6D319BF1BA615B7ED712795C186C019846B05DF2BE1789A515E64D534D900F822A1DFFD3189F71702EF225C24FD2EE9EF984D7EBECC1E78FBDD6798CB054BFDAD2394345E445810EC51C003849B9BEE005E019C9DE17B1F4379EBC077EAEEAEEFAEC279062F95D703DFE977DFA7E0E3A8C6ACC14BE56AC56DBBC06374EAEE1F07CE2FF038AA394B3452B95A71FB74E013840E9C4BE336AF32CAFB09E5A4F7E5F47D9A529EC14BE5EAF4C07F07B816D895F0B0913F111E01F8B764BFBB16BA75F7C3B0EEAE1259839706AF03BF0DF006E02C603561198383186FC54AEBEEAA8C012FA55B077E3342D8AF047E4F7830F66623BEB7B3CECC3FE43047696C06BC665D961EF85D094B15DF0A1CCBE0D52B3F44784CA1FDEEAA8401AF5937C93AF04F25946DDAC0CB7BF6B9BEBB2A67C06BD6E5D103BF2FA1CC7336E162AC75770D64178D549E56DCB627F88E738127139E2C7565FCDD7E77F5651FBC549E56DCB627FC9EFB807712963DD80EFBDD3580012F9527CF75E05F0CEC85EBCC6808035E2A4F2B6EDB137E4F677DF7C3717D770D610D5E2A4F2B6EDB137C87EBCC2835035E2AC742429B244C16F0AE33A3D42CD148E5C8631D78D777D7580C78A91CADB86D67FCBC75778DCD128D548E56DCB6337CD6BABB3231E0A572B4E2B69DE1B3D6DD9589251AA91C597BE0ADBB2B33035E2A472B6EDB637CC6BABB266289462A472B6EDB29C75B77D7C40C78A978597AE0ADBB6B629668A4E28DDB036FDD5DB930E0A5E2B5E2B69D62AC7577E5C6128D54BC56DCB6478CB3EEAE5C19F052F15A71DB1E31CEBABB726589462A5E9A1E78EBEECA9D012F15AF15B7ED01FBADBBAB109668A4E2B5E2B6DD679F757715C680978A35AA07DEBABB0A6389462AD6B01E78EBEE2A94012F15AB15B7ED9EF7ADBBAB709668A462B5E2B69D78CFBABB4A61C04BC56AC56D3BF19E757795C2128D54ACDE1E78EBEE2A8D012F15AB15B76DACBBAB649668A462B5E2F606ACBBAB6406BC549C640FFCABB0EEAE9259A2918AD3E981BF0F3810EBEE2A9967F052715A71BB21E1C2AA757795CA80978AB3226E7F87757755C080978AF112E0DDF1F53F563911A90CA70097573D09A9044F04EE04E6818F543C17A91406BC66C116C0758470FF0EB041B5D3D12CB34423E56711F075607BE057C021D835A30A19F0527E4E059603B7032F03EEAA74369A7906BC948F63813702F7030711CA34D2CCB006AFA67A11E12ED579E04D15CF45AA8401AF26B26346C28057F3D831A35AB3062F6563C78C6ACF8097B2B16346B567C04BE3B36346EA610D5E4D60C78CD48701AF6967C78C348001AF6966C78CA68E357869343B6634950C7869343B6634950C7869B864C7CC81D83123F5650D5ED3C68E192925035ED36467BA1D33FF54F15CA4DA33E0352DEC9851235883971ECC8E19358601AFBCCD11BA4CD600AB81DB8055F1E78F84B2C73D848B961FAC688EC3D8312365608966766C0C6C0DEC4EF722E53C7022A1B6BD0DB06965B31BEC58C23CD712425E524A06FCEC69D10DF75F543B9591EC9851E358A25191F64EBC3EBFB2598CB633F015C2C5D48F00A7553B1D291F06BC8A940CF8EF57368BE1B600CE019602FF0EBCABDAE948D3C912CDECB98150F2B81F5852F15CFA5944F8C3330F5C4D0879A9313C83575176001E1B5F5F01FCB9C2B90C62C78C1ACD805751EA5E9E718D19359E01AFA22C4FBCAE5BC0BF08F85FF1F591C045D54D456A066BF0B36515DD9EF24D2A9E4B926BCC480530E067C74E74FBDF2FAD782E49AE31A39962894645A863FDDD356634730C781521CF80DF16F834F073E06642387F1DD863CCEFB163462A90259AD9710BA10CB286B02E4D562F027E04EC032C061600CB804BE2F7A7BDE3D43566A48219F0B3E14974EBEF178FF9D91312AF1F09FC1278449F711B01BF8BC778FB88EF748D19CD2C4B34CA5BD6F2CC72E06989DF57103A5EFE6F9FB16B12EFBF66C877BAC68C669A01AFBC650DF82380CF257E7F142198F71A30FED771BB0CD8B0CF7ED798914A6489A6F916101EF0310FDC4B28A5A4B12370230F0EEAC5C03B81E70CF8CC5BE3716EECB3CF3566A49219F0CDB78C6EFDFD82949F5908AC044E1EF358DF8CC7F9789F7DA7C57DB711D6C419652342FDFF078475732EC38BB1D2580CF8E67B1B0F7E7A531A27C6F14F1B3530E1D9C07A42B7CE963DFBC6ED9859065C039C4DF74CFFF5C07DC02E63CC499A69067CF39D4337E047F5A92F063E1AC75E39C63196123A68EE049ED1B36FDC8E99A7109E137B05E159B21D0B087DF269FF1522CD3C03BE9996109EBF7A30E1ACB713F0DB119EBBBA49FC7938E12ED21584876DAF4A8C7D47CA63CD119618B81E7872CFBE71D798D98A70E3D49F81BFEEB3FF27843F16D6EFA5140CF8E6F900DD90CEFA73070F2DB3F43347A8BB5F4E78687752963566BEC5F052D24571FFCB537C9734F30C7865B508F8B7F8D3BB32E54174C3386DC7CC6BE3F8BB81CD078CB9328E396AECD94A33C88057168B0817403F46FFFB36EE60BC8E99394289679EF0BFC9413ACB2DBC679CC94A75E28D4EAAB345C01984F6C577102E7E6E003C8C50F7FF02612983719ECAF466E0F10C0FF8A5841BAD20D4F5258DE019BCC6B1217016E9EAF8E3AC31D3A9D55F3664CC0B13DF7DE8B81397EAC23378D5D561C02B538CBB80F46BCC3C97D0C903A1A57390E4DDB337A4FC6E69A67906AF3C4CF254A64FD03D335F1EBFABDF4F679983B54CB6DCB134330C784D6AD235667ECB782D9CC3CA3852ED59A2D134493E95E9A58CF754A6AD81BF8AAFCF205CB0EDF7B34FE233DFEDF33D793D614A6A14CFE03589499FCAB43FDD33F323868C3B3931AEB7ED32AF274C498D63C02BAB1733F953998EA41BDC4F1F32EE9A386665CFFB793D614A6A24035E598CBBC6CC2027D1BD7B75D085D95DE9FE1138A067DF7F23FC91F9CA80CF76FE85F1B309E628E5CA1ABCEA2CCFA7322D89DB36B06EC098A3E3F64AE05F7BF64DFA8429A974FE0F5175B58870F1727BC285CC43181CCC69DC1EB7B70ED8BF0D615D1B80E30967E3499F2194627E34E0F38F89DB9B0967FA52E50C78D5D5241D33FDAC8ADBD503F61F43F8A3F259E0DC3EFBEF21AC5F3FC88BE376D80D5452635983575A9376CCF4B36DFCCE7E0F02DF9D70D6FD5B60B30CDF3DEC0953D24C30E095461E1D3383FC94872E3DB029E1CED81B080F2919D7B0274C4933C380D7287975CC0CB20FA18EBF5FFCFD91C0F9848BAA3B66F8BE614F9892668A01AF61926BCC5C4E782847115E4A781CDF258407851C4BA8BD8F6BD813A63A7600F6CCF0DDD2D431E03548EF1A33CF066E02DE52E5A48618F684A983093DF3E7132E101F57EED4A46A18F01AE434BA4F65EA2CE7FB04E046E0AD554D6A80414F98DA81F030F1FB09FF3B7F130F0D7FA9B10C78F533AC63E6898433F9BC2FB666D5E9CD7F07E1A6A78D0967EB1710DA38CF275CC895668E01AF5E693A667622B41FBEA4AC490D90F60953A7563541A94A06BC92C6E998D99350BE5956F4A486783DE9D6903FB2AA094A5532E0D591E5A94C6F00AEA5BBA64C593AB5F59BB1B62E0D64C00B267B2AD3E9C0970B9853AF39C2BA34E7037F023E093CB584E34A53CB8017F4EF98496B3161398197E53DA9C8B3752923035E79AC31F342C29DA39BE63427CFD6A51C18F0B32DCF3566BE027C64C2EFF06C5DCA91013FBBF25E63661B4289E769637ECEB375A9206506FC1CE1C6933584F5BF6F23AC07BE0AF823216CEE21DC75F8C192E634ABB274CCA4F1F6F87D6978B62E15ACEC33F88D81ADE9AEF5DDE9533E917046B90DF9D571D5DF241D33A33C8CF0077BD012BD9EAD4B25AAAA44D3A21BEEBFA8E0F8B36C928E99344E00CEE879CFB375A9025505FCEBE8067C116B8CABBF229ECAD46B2961C5C69DF16C5DAA545501FF79BA01BF6F05C79F45453E95296907E087846B2A9EAD4B15AA2AE06F2004CDFD947F9BFB2C2AFAA94CD6D6A51AAA22E077A07BF67E59C9C79E454575CC40B7B67E0B9EAD4BA96C58F5040AB677E2F5F72B9BC56C5844584E777BE057C02184E79F4E620E783921CC9F059C09BC80F00C55493552C519FC97E89EC1BFA0E463CF9A3C3B663C5B97A64C1501BF8A6E278701519CE398BC63C6DABA34C5CA0EF89DE89EBD5F5AE271674DB263E68D193EEFD9BAD4006507FCDFD10DF8F79578DC5992B563C6B375A961CA0EF8AFD20DF815397CDF42E09984676EDE92C3F74DBB2C1D339EAD4B0D5576C0DF42089F35847569B23A14F82F60257012F097F8BDB36C117011E9D698F16C5D9A016506FC93E89EBD5F3CE6674F18B1FF4F18F0693A663C5B972AD6D43EF8ACFDEFCB197F8DF159731CE162EAFDC0818447E875D8B72ECDA832CFE0CFA27B06BFD7189FFB1AF092116366F90C7E50C78C67EBD28C2B2BE017104A07F3C0BDC046293FB7237023A3FF5533AB01DFDB31636D5DAAB92696689E42E8F0807061744D8ACF2C044E2794141E28665A536D0BE01CC2C5D41F00EB098BB8DD40A8C7EF4FB8F82CA9469A18F059EAEFC7139EFCF4D6FCA733F5B606BE4EB8987A37E12CFD1AACAD4B4A28AB44730EDDFAFB1E23C62E063E1AC7A60DAB5929D13C1BF802E15F409D6508FE0793B59C4A2A5153CEE097102EEA3D8F072F2A7613E1B9AB9D405E442837B4807D80D7109ECD0AF0B932265A737384CE98A3815D13EF5F487842D3CFAA9894A4FA2BEA0CFE0374CFD8B3FEDC016C99F2784D3C83DF12F87BE0F774FF6F721FE16958CB2A9C97A42951D5139DF2D6A4807F26A1FBE51EBAC17E13F05EBA17AA25692403BE1E92ED8DC97FC55C12DF6F4AD94E52890CF86A59869154982604FCE309DD24F384F5E6A781651849859BD6807F26F06BC2DDB177027F046E8DAF6F8FFBF61EF8E96A58869154AA690DF86962194652250CF8E25886915429033E5F966124D586019F0FCB30926AC7809F8C651849B565C08FCF328CA4A960C0A7671946D25431E047B30C23692A19F0FD59869134F50CF8071BB70CB3117002E1917957009701CBCB98A8248D62C00759CA30CB088FC93B9BF05C5480D713FE20EC52E05C252995590EF849CA304F21AC7F7345FC9E8E05C05DC00505CC5792C6328B013F6937CC56C0CDC09F81BFEEB3FF27C00374CFEA25A912B314F07975C37C2B7EF6C401FB2F8AFB5F9E719E92948BA6077CDEDD30AF8D9FBF1BD87CC0982BE398A3C69FAE24E5A7A901DFAF0CB31EF802D96F4A9A03AE8FDF75CA9071B7C431EFC9781C49CA45D3027E5819E6E7C0FE137CF75174FF50B4068C591AF7CF03474F702C499A5813023E6D19E68DC0B72738CE75F17B2F1B32E68589E31F3AC1B1246962D31CF0E376C32C0156C7CF8DEBB989631C3F64DC4989717B64388E24E5661A037E926E98AF016FC970CC4F248EB53C1EA7DFCFF7E398B5C0C6198E2349B9999680CFAB1BE640421BE3B87EDB73DC513FC3CA3892548ABA077CDE4BF42E26B4388ED3F7BE75E2D85F1E32EEF98971270D18B390F02F905309DD36925498BA06FC33286E89DE7F070E1963FCFE89391C3164DCC989713BF4EC3B14F82F602521FCFF12C7495261EA14F0652DD1FB36E073638C3F323197A70F19774D1CB332C577FE09035E52C1EA10F0653F296967E08631C6773A63EE063618306657BA733F20C5771AF0920A5765C01759861966016125C86D538EEF945EAE1A32E64B71CC2FE2F78F62C04B33AAC94F0B9A232CC2F526C245C98E4B818F01DF20ACC458A44E97CB1E84A50746B93D6E6F1DB07F1B420909428FBCC12D69A02606FC96C0EB0817291F17DF5B039C097C04F865C9F3B98CF0508E2FA518BB2A6E570FD87F0CB008F82C70EEE45393A47C145DA2A9AA0C33CA4B800B538EDD9630EFEFF7D9B73BE15F1CBF05361BE3F896682415AE88805F44FD1F58BD2DDDD24B1A3FE5A117663725AC4F7303B0DD98C737E025152ECF802FBB1B66120B082597AD528EDF075807EC177F7F24E10FD895C08E198E6FC04B2A5C1E015FD732CC285712DA1BD37A29E1717C9710963B3896F0AF952C0C78A95EE60877AABF0BD8BEE2B9E4266BC04F43196694B319EF8ED63C19F052BD6C43F7790FF384C68FA90FFB71037E9ACA30A39C42F86FA982012FD54B27E0934F807B20BEBE965091D8A9AAC9659536E0A7B50C33CC098416CD2A18F052BDF4067C23C27E58C037A10C33CC9B81D32B38EEE309EBC5CF3325FF239166C0B0809FDAB0EF17F04D2AC30C7300F0CD928EF54CE0D7C06DC09D84A5126E8DAF6F8FFBF62E692E921E2A6DC0F7867DE764AD96619F0CF826966186D917F85ED59390540B5902BEF661FFCF84BB309B5A86196605F0C3AA2721A916260DF85161FF84CE81D2AC4698978F0147C563AE273C65E87AC2D2B84DB794D002F5B3AA2722A9721B017B16F4DDF3848C5D05EC5266C003FC281EFC1AC2026092346B16038717F0BD9D705F075C01BCA88063489286C8B344B396501159037C1B780DB0A4BCFF144952D2A4017F3F86BA24D552968037D425690AA40D78435D92A6CCB08037D425698AF506FCFD74EFE23F0B3818D8A4B2D94992324B06FC7DC0D709377B2EAE725292A4C96D00BC0F435D922449922449922449922449D3EE30E0C784551B7F49E888E95848E892398FF004B58F0173654F509234BE770117028F89BF1F4158A277FFF8FBC781BF89AFB700AE263CF0489254636F20847BF209740B098F1CBD8AF0BCE3E313FBFE0E584D789A9D24A9A636273CACE8917DF65D40F7D9D29BC5F79600F7C6F77F5FC6047B2DACE2A09234858E033E0BDCD667DF56730A9ECC000000F84944415471FB53C2193BC05F08CF62FE0D7064E1B3932465761EDDB3F3A44D0835F879E055A5CE489254A8FD09E17E0FB069C5739124E5E84C42C07FB5EA894892F293BC90FA8A8AE72249CAD17F2784FB7AE0E17DF66F017CABD41925D8452349A31D00DC025C4C58CFBDE390B8BD0AB8B3CFE78E022E2F766A92A449DC42F74C7D697C6F6BE0D6F8FE797D3EB325706D62BC24A9866E05EE06DE9E78EF54603FE03F813B8005897D8B0867FBAF2E6B8292A46C4E07FE83EED9F8EB802FC6D7BB016B8043E3EF8F26DCD9FACE12E72749CA6853E093C0AF082B48FE1F1EBC1ECD6E8433F6CBE2CF21BD5F2049922449922449929AE3FF03AE91E5267E73901C0000000049454E44AE426082>|Immagine3DOF.png>|376px|397px||>>
    <\math>
      L<rsub|1>,L<rsub|2>,L<rsub|3>:lunghezza dei link
    </math>

    <math|\<theta\><rsub|1>,\<theta\><rsub|2>,\<theta\><rsub|3>>: angoli
  </render-small-figure>>

  Definiamo <math|z<rsub|1>,z<rsub|2>,z<rsub|3>> i punti che si trovano alla
  fine del link:

  \;

  <\eqnarray*>
    <tformat|<table|<row|<cell|z<rsub|1>>|<cell|=>|<cell|L<rsub|1>*e<rsup|i\<theta\><rsub|1>>>>|<row|<cell|z<rsub|2>>|<cell|=>|<cell|L<rsub|2>*e<rsup|i<around*|(|\<theta\><rsub|1>+\<theta\><rsub|2>|)>>>>|<row|<cell|z<rsub|3>>|<cell|=>|<cell|L<rsub|3>*e<rsup|i<around*|(|\<theta\><rsub|1>+\<theta\><rsub|2>+\<theta\><rsub|3>|)>>>>>>
  </eqnarray*>

  <\session|maxima|default>
    <\textput>
      <strong|Terzo metodo>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>1) >
    <|unfolded-io>
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o1>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>2) >
    <|unfolded-io>
      z[1]:L[1]*exp(II*alpha[1])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o2>)
      >>\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>3) >
    <|unfolded-io>
      z[2]:L[2]*exp(II*(alpha[1]+alpha[2]));
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o3>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>4) >
    <|unfolded-io>
      z[3]:L[3]*exp((II*(alpha[1]+alpha[2]+alpha[3])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o4>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>5) >
    <|unfolded-io>
      z:z[1]+z[2]+z[3]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o5>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>6) >
    <|unfolded-io>
      zp:diff(z,alpha[1])*omega[1]+diff(z,alpha[2])*omega[2]+diff(z,alpha[3])*omega[3]
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o6>)
      >>\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|1>*<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>+\<omega\><rsub|2>*<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>7) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o7>)
      >>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|1>*<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>|)>+\<omega\><rsub|2>*<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>|)>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>8) >
    <|unfolded-io>
      zp2: <code*|expand>(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o8>)
      >>L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+2*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+2*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>9) >
    <|unfolded-io>
      zp2: ratsimp(trigsimp(factor(trigreduce(demoivre(zp2)))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o9>)
      >><around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+<around*|(|<around*|(|2*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1>*L<rsub|2>|)>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>|)>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+<around*|(|2*\<omega\><rsub|2>+2*\<omega\><rsub|1>|)>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>10) >
    <|unfolded-io>
      T:(1/2)*M*zp2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o10>)
      >><frac|<around*|(|<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+<around*|(|<around*|(|2*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1>*L<rsub|2>|)>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>|)>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+<around*|(|2*\<omega\><rsub|2>+2*\<omega\><rsub|1>|)>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>*M|2>>>
    </unfolded-io>

    <\textput>
      <strong|Secondo Metodo>
    </textput>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>11) >
    <|unfolded-io>
      II:sqrt(-1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o11>)
      >>\<mathi\>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>12) >
    <|unfolded-io>
      defrule(atanalpha1,atan2(L[1]*sin(alpha[1]),L[1]*cos(alpha[1])),alpha[1])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o12>)
      >><with|math-font-family|rm|atanalpha1>:<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>13) >
    <|unfolded-io>
      defrule(atanalpha12,atan2(L[2]*sin (alpha[1]+alpha[2]),L[2]*cos
      (alpha[1]+alpha[2])),alpha[1]+alpha[2])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o13>)
      >><with|math-font-family|rm|atanalpha12>:<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|2>+\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>14) >
    <|unfolded-io>
      defrule(atanalpha123,atan2(L[3]*sin
      (alpha[1]+alpha[2]+alpha[3]),L[3]*cos
      (alpha[1]+alpha[2]+alpha[3])),alpha[1]+alpha[2]+alpha[3])
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o14>)
      >><with|math-font-family|rm|atanalpha123>:<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>15) >
    <|unfolded-io>
      disprule(all)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t15>)
      >><with|math-font-family|rm|trigrule1>:tan
      <around*|(|a|)>\<rightarrow\><frac|sin <around*|(|a|)>|cos
      <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t16>)
      >><with|math-font-family|rm|trigrule2>:sec
      <around*|(|a|)>\<rightarrow\><frac|1|cos <around*|(|a|)>>>>

      \;

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t17>)
      >><with|math-font-family|rm|trigrule3>:csc
      <around*|(|a|)>\<rightarrow\><frac|1|sin <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t18>)
      >><with|math-font-family|rm|trigrule4>:cot
      <around*|(|a|)>\<rightarrow\><frac|cos <around*|(|a|)>|sin
      <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t19>)
      >><with|math-font-family|rm|htrigrule1>:tanh
      <around*|(|a|)>\<rightarrow\><frac|sinh <around*|(|a|)>|cosh
      <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t20>)
      >><with|math-font-family|rm|htrigrule2>:<math-up|sech><space|0.27em>a\<rightarrow\><frac|1|cosh
      <around*|(|a|)>>>>

      \;

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t21>)
      >><with|math-font-family|rm|htrigrule3>:<math-up|csch><space|0.27em>a\<rightarrow\><frac|1|sinh
      <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t22>)
      >><with|math-font-family|rm|htrigrule4>:coth
      <around*|(|a|)>\<rightarrow\><frac|cosh <around*|(|a|)>|sinh
      <around*|(|a|)>>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t23>)
      >><with|math-font-family|rm|atanalpha1>:<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|1>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t24>)
      >><with|math-font-family|rm|atanalpha12>:<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|2>+\<alpha\><rsub|1>>>

      \;

      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%t25>)
      >><with|math-font-family|rm|atanalpha123>:<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>\<rightarrow\>\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>>>

      \;

      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o25>)
      >><around*|[|<with|math-font-family|rm|%t15>,<with|math-font-family|rm|%t16>,<with|math-font-family|rm|%t17>,<with|math-font-family|rm|%t18>,<with|math-font-family|rm|%t19>,<with|math-font-family|rm|%t20>,<with|math-font-family|rm|%t21>,<with|math-font-family|rm|%t22>,<with|math-font-family|rm|%t23>,<with|math-font-family|rm|%t24>,<with|math-font-family|rm|%t25>|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>26) >
    <|unfolded-io>
      assume(L[1]\<gtr\>0,L[2]\<gtr\>0,L[3]\<gtr\>0)
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o26>)
      >><around*|[|L<rsub|1>\<gtr\>0,L<rsub|2>\<gtr\>0,L<rsub|3>\<gtr\>0|]>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>27) >
    <|unfolded-io>
      z[1]:trigsimp(polarform(L[1]*cos(alpha[1])+II*L[1]*sin(alpha[1])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o27>)
      >>L<rsub|1>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|1>*sin
      <around*|(|\<alpha\><rsub|1>|)>,L<rsub|1>*cos
      <around*|(|\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>28) >
    <|unfolded-io>
      z[1]:apply1(z[1],atanalpha1)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o28>)
      >>\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>29) >
    <|unfolded-io>
      z[2]:trigsimp(polarform(L[2]*cos(alpha[2]+alpha[1])+

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ II*L[2]*sin(alpha[1]+alpha[2])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o29>)
      >>L<rsub|2>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|2>*sin
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|2>*cos
      <around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>30) >
    <|unfolded-io>
      z[2]:applyb1(z[2],atanalpha1,atanalpha12)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o30>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>31) >
    <|unfolded-io>
      z[3]:trigsimp(polarform(L[3]*cos(alpha[3]+alpha[2]+alpha[1])+

      \ \ \ \ \ \ \ \ \ \ \ \ \ II*L[3]*sin(alpha[3]+alpha[1]+alpha[2])))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o31>)
      >>L<rsub|3>*\<mathe\><rsup|\<mathi\>*<math-up|atan2><around*|(|L<rsub|3>*sin
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>,L<rsub|3>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>|)>>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>32) >
    <|unfolded-io>
      z[3]:apply1(z[3],atanalpha123)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o32>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>33) >
    <|unfolded-io>
      z:z[1]+z[2]+z[3]
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o33>)
      >>\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*<around*|(|\<alpha\><rsub|2>+\<alpha\><rsub|1>|)>>*L<rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>34) >
    <|unfolded-io>
      zp:trigsimp(diff(z,alpha[1])*omega[1]+diff(z,alpha[2])*omega[2]+diff(z,alpha[3])*omega[3])
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o34>)
      >>\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>|)>*L<rsub|3>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*L<rsub|2>*\<omega\><rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>+\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|2>+\<mathi\>*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>*\<omega\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>35) >
    <|unfolded-io>
      zpstar:subst(II=-II,zp)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o35>)
      >>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>|)>*L<rsub|3>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|2>*\<omega\><rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>-\<mathi\>*\<alpha\><rsub|1>>*\<omega\><rsub|1>*L<rsub|2>-\<mathi\>*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|1>>*L<rsub|1>*\<omega\><rsub|1>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>36) >
    <|unfolded-io>
      zp2:expand(zp*zpstar)
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o36>)
      >>L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+2*\<omega\><rsub|2>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+2*\<omega\><rsub|1>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+\<omega\><rsub|2><rsup|2>*L<rsub|3><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3><rsup|2>+\<omega\><rsub|1><rsup|2>*L<rsub|3><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*L<rsub|2>*\<omega\><rsub|2><rsup|2>*L<rsub|3>+2*\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+2*\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>>*\<omega\><rsub|1><rsup|2>*L<rsub|2>*L<rsub|3>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|3>+\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|3>-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|3>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+\<mathe\><rsup|\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+\<mathe\><rsup|-\<mathi\>*\<alpha\><rsub|2>>*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>37) >
    <|unfolded-io>
      zp2: ratsimp(trigsimp(factor(trigreduce(demoivre(zp2)))))
    <|unfolded-io>
      <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o37>)
      >><around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+<around*|(|<around*|(|2*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1>*L<rsub|2>|)>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>|)>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+<around*|(|2*\<omega\><rsub|2>+2*\<omega\><rsub|1>|)>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>>>
    </unfolded-io>

    <\unfolded-io>
      <with|color|red|(<with|math-font-family|rm|%i>38) >
    <|unfolded-io>
      T:(1/2)*M*zp2
    <|unfolded-io>
      \;

      \ <math|<with|math-display|true|<text|<with|font-family|tt|color|red|(<with|math-font-family|rm|%o38>)
      >><frac|<around*|(|<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>+\<alpha\><rsub|2>|)>+<around*|(|<around*|(|2*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1>*L<rsub|2>|)>*L<rsub|3>*\<omega\><rsub|3>+<around*|(|2*L<rsub|2>*\<omega\><rsub|2><rsup|2>+4*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*L<rsub|3>|)>*cos
      <around*|(|\<alpha\><rsub|3>|)>+<around*|(|2*L<rsub|1>*\<omega\><rsub|1>*L<rsub|2>*\<omega\><rsub|2>+2*L<rsub|1>*\<omega\><rsub|1><rsup|2>*L<rsub|2>|)>*cos
      <around*|(|\<alpha\><rsub|2>|)>+L<rsub|3><rsup|2>*\<omega\><rsub|3><rsup|2>+<around*|(|2*\<omega\><rsub|2>+2*\<omega\><rsub|1>|)>*L<rsub|3><rsup|2>*\<omega\><rsub|3>+<around*|(|\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>|)>*L<rsub|3><rsup|2>+L<rsub|2><rsup|2>*\<omega\><rsub|2><rsup|2>+2*\<omega\><rsub|1>*L<rsub|2><rsup|2>*\<omega\><rsub|2>+\<omega\><rsub|1><rsup|2>*L<rsub|2><rsup|2>+L<rsub|1><rsup|2>*\<omega\><rsub|1><rsup|2>|)>*M|2>>>
    </unfolded-io>

    <\input>
      <with|color|red|(<with|math-font-family|rm|%i>39) >
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

<\references>
  <\collection>
    <associate|auto-1|<tuple|?|3>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|>
      <\tuple|normal>
        <\with|mode|<quote|math>>
          L<rsub|1>,L<rsub|2>,L<rsub|3>:lunghezza dei link
        </with>

        <with|mode|<quote|math>|\<theta\><rsub|1>,\<theta\><rsub|2>,\<theta\><rsub|3>>:
        angoli
      </tuple|<pageref|auto-1>>
    </associate>
  </collection>
</auxiliary>