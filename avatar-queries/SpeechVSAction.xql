xquery version "3.1";
declare variable $ySpacer := 0.22;
declare variable $xSpacer1 := 70;
declare variable $xSpacer2 := 12;
(:  declare variable $ThisFileContent := :)

<svg width="900" height="500">
  <defs>
    <linearGradient id="RedFront" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(228, 113, 102);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(170, 61, 47);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="RedSide" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(126, 51, 38);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(84, 29, 21);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="BlueFront" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(102, 169, 228);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(58, 122, 178);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="BlueSide" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(56, 110, 157);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(37, 78, 114);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="RedSquare" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(228, 113, 102);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(170, 61, 47);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="BlueSquare" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:rgb(102, 169, 228);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(58, 122, 178);stop-opacity:1" />
    </linearGradient>
  </defs>
  
<g>
{
let $avatar := collection('/db/avatar/AvatarScripts')/root

let $aangSP := $avatar//section/speech[.//@speaker = "Aang"] => count()
    let $aangAC := $avatar//section/speech[.//@speaker = "Aang"]/charAction => count()

let $sokkaSP := $avatar//section/speech[.//@speaker = "Sokka"] => count()
    let $sokkaAC := $avatar//section/speech[.//@speaker = "Sokka"]/charAction => count()

let $kataraSP := $avatar//section/speech[.//@speaker = "Katara"] => count()
    let $kataraAC := $avatar//section/speech[.//@speaker = "Katara"]/charAction => count()

let $zukoSP := $avatar//section/speech[.//@speaker = "Zuko"] => count()
    let $zukoAC := $avatar//section/speech[.//@speaker = "Zuko"]/charAction => count()

let $tophSP := $avatar//section/speech[.//@speaker = "Toph"] => count()
    let $tophAC := $avatar//section/speech[.//@speaker = "Toph"]/charAction => count()

let $irohSP := $avatar//section/speech[.//@speaker = "Iroh"] => count()
    let $irohAC := $avatar//section/speech[.//@speaker = "Iroh"]/charAction => count()

let $azulaSP := $avatar//section/speech[.//@speaker = "Azula"] => count()
    let $azulaAC := $avatar//section/speech[.//@speaker = "Azula"]/charAction => count()

let $jetSP := $avatar//section/speech[.//@speaker = "Jet"] => count()
    let $jetAC := $avatar//section/speech[.//@speaker = "Jet"]/charAction => count()

let $zhaoSP := $avatar//section/speech[.//@speaker = "Zhao"] => count()
    let $zhaoAC := $avatar//section/speech[.//@speaker = "Zhao"]/charAction => count()
    
let $sukiSP := $avatar//section/speech[.//@speaker = "Suki"] => count()
    let $sukiAC := $avatar//section/speech[.//@speaker = "Suki"]/charAction => count()
    
for $dash at $pos in $avatar

return 
    (:concat($aangSP, "  ", $sokkaSP, "  ", $kataraSP, "  ", $zukoSP, "  ", $tophSP, "  ", $irohSP, "  ", $azulaSP, "  ", $jetSP, "  ", $zhaoSP, "  ", $sukiSP):)
<g transform="translate(150 450)">
    
    <!--Aang-->
    <polygon points="30,0 30,-{$aangSP*$ySpacer} 38,-{$aangSP*$ySpacer + 6} 38,0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="55,0 55,-{$aangAC*$ySpacer} 63,-{$aangAC*$ySpacer + 6} 63,0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="10,0 10,-{$aangSP*$ySpacer} 30,-{$aangSP*$ySpacer} 30,0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="35,0 35,-{$aangAC*$ySpacer} 55,-{$aangAC*$ySpacer} 55,0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="10,-{$aangSP*$ySpacer} 30,-{$aangSP*$ySpacer} 38,-{$aangSP*$ySpacer + 6} 18,-{$aangSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="35,-{$aangAC*$ySpacer} 55,-{$aangAC*$ySpacer} 63,-{$aangAC*$ySpacer + 6} 43,-{$aangAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Sokka-->
    <polygon points="{30+$xSpacer1},0 {30+$xSpacer1},-{$sokkaSP*$ySpacer} {38+$xSpacer1},-{$sokkaSP*$ySpacer + 6} {38+$xSpacer1},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+$xSpacer1},0 {55+$xSpacer1},-{$sokkaAC*$ySpacer} {63+$xSpacer1},-{$sokkaAC*$ySpacer + 6} {63+$xSpacer1},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+$xSpacer1},0 {10+$xSpacer1},-{$sokkaSP*$ySpacer} {30+$xSpacer1},-{$sokkaSP*$ySpacer} {30+$xSpacer1},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+$xSpacer1},0 {35+$xSpacer1},-{$sokkaAC*$ySpacer} {55+$xSpacer1},-{$sokkaAC*$ySpacer} {55+$xSpacer1},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+$xSpacer1},-{$sokkaSP*$ySpacer} {30+$xSpacer1},-{$sokkaSP*$ySpacer} {38+$xSpacer1},-{$sokkaSP*$ySpacer + 6} {18+$xSpacer1},-{$sokkaSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+$xSpacer1},-{$sokkaAC*$ySpacer} {55+$xSpacer1},-{$sokkaAC*$ySpacer} {63+$xSpacer1},-{$sokkaAC*$ySpacer + 6} {43+$xSpacer1},-{$sokkaAC*$ySpacer + 6}" stroke="black" fill="url(#BlueFront)"/>
    
    <!--Katara-->
    <polygon points="{30+($xSpacer1*  2  )},0 {30+($xSpacer1*  2  )},-{$kataraSP*$ySpacer} {38+($xSpacer1*  2  )},-{$kataraSP*$ySpacer + 6} {38+($xSpacer1*  2  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  2  )},0 {55+($xSpacer1*  2  )},-{$kataraAC*$ySpacer} {63+($xSpacer1*  2  )},-{$kataraAC*$ySpacer + 6} {63+($xSpacer1*  2  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  2  )},0 {10+($xSpacer1*  2  )},-{$kataraSP*$ySpacer} {30+($xSpacer1*  2  )},-{$kataraSP*$ySpacer} {30+($xSpacer1*  2  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  2  )},0 {35+($xSpacer1*  2  )},-{$kataraAC*$ySpacer} {55+($xSpacer1*  2  )},-{$kataraAC*$ySpacer} {55+($xSpacer1*  2  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  2  )},-{$kataraSP*$ySpacer} {30+($xSpacer1*  2  )},-{$kataraSP*$ySpacer} {38+($xSpacer1*  2  )},-{$kataraSP*$ySpacer + 6} {18+($xSpacer1*  2  )},-{$kataraSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  2  )},-{$kataraAC*$ySpacer} {55+($xSpacer1*  2  )},-{$kataraAC*$ySpacer} {63+($xSpacer1*  2  )},-{$kataraAC*$ySpacer + 6} {43+($xSpacer1*  2  )},-{$kataraAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Zuko-->
    <polygon points="{30+($xSpacer1*  3  )},0 {30+($xSpacer1*  3  )},-{$zukoSP*$ySpacer} {38+($xSpacer1*  3  )},-{$zukoSP*$ySpacer + 6} {38+($xSpacer1*  3  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  3  )},0 {55+($xSpacer1*  3  )},-{$zukoAC*$ySpacer} {63+($xSpacer1*  3  )},-{$zukoAC*$ySpacer + 6} {63+($xSpacer1*  3  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  3  )},0 {10+($xSpacer1*  3  )},-{$zukoSP*$ySpacer} {30+($xSpacer1*  3  )},-{$zukoSP*$ySpacer} {30+($xSpacer1*  3  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  3  )},0 {35+($xSpacer1*  3  )},-{$zukoAC*$ySpacer} {55+($xSpacer1*  3  )},-{$zukoAC*$ySpacer} {55+($xSpacer1*  3  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  3  )},-{$zukoSP*$ySpacer} {30+($xSpacer1*  3  )},-{$zukoSP*$ySpacer} {38+($xSpacer1*  3  )},-{$zukoSP*$ySpacer + 6} {18+($xSpacer1*  3  )},-{$zukoSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  3  )},-{$zukoAC*$ySpacer} {55+($xSpacer1*  3  )},-{$zukoAC*$ySpacer} {63+($xSpacer1*  3  )},-{$zukoAC*$ySpacer + 6} {43+($xSpacer1*  3  )},-{$zukoAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Toph-->
    <polygon points="{30+($xSpacer1*  4  )},0 {30+($xSpacer1*  4  )},-{$tophSP*$ySpacer} {38+($xSpacer1*  4  )},-{$tophSP*$ySpacer + 6} {38+($xSpacer1*  4  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  4  )},0 {55+($xSpacer1*  4  )},-{$tophAC*$ySpacer} {63+($xSpacer1*  4  )},-{$tophAC*$ySpacer + 6} {63+($xSpacer1*  4  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  4  )},0 {10+($xSpacer1*  4  )},-{$tophSP*$ySpacer} {30+($xSpacer1*  4  )},-{$tophSP*$ySpacer} {30+($xSpacer1*  4  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  4  )},0 {35+($xSpacer1*  4  )},-{$tophAC*$ySpacer} {55+($xSpacer1*  4  )},-{$tophAC*$ySpacer} {55+($xSpacer1*  4  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  4  )},-{$tophSP*$ySpacer} {30+($xSpacer1*  4  )},-{$tophSP*$ySpacer} {38+($xSpacer1*  4  )},-{$tophSP*$ySpacer + 6} {18+($xSpacer1*  4  )},-{$tophSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  4  )},-{$tophAC*$ySpacer} {55+($xSpacer1*  4  )},-{$tophAC*$ySpacer} {63+($xSpacer1*  4  )},-{$tophAC*$ySpacer + 6} {43+($xSpacer1*  4  )},-{$tophAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Iroh-->
    <polygon points="{30+($xSpacer1*  5  )},0 {30+($xSpacer1*  5  )},-{$irohSP*$ySpacer} {38+($xSpacer1*  5  )},-{$irohSP*$ySpacer + 6} {38+($xSpacer1*  5  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  5  )},0 {55+($xSpacer1*  5  )},-{$irohAC*$ySpacer} {63+($xSpacer1*  5  )},-{$irohAC*$ySpacer + 6} {63+($xSpacer1*  5  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  5  )},0 {10+($xSpacer1*  5  )},-{$irohSP*$ySpacer} {30+($xSpacer1*  5  )},-{$irohSP*$ySpacer} {30+($xSpacer1*  5  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  5  )},0 {35+($xSpacer1*  5  )},-{$irohAC*$ySpacer} {55+($xSpacer1*  5  )},-{$irohAC*$ySpacer} {55+($xSpacer1*  5  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  5  )},-{$irohSP*$ySpacer} {30+($xSpacer1*  5  )},-{$irohSP*$ySpacer} {38+($xSpacer1*  5  )},-{$irohSP*$ySpacer + 6} {18+($xSpacer1*  5  )},-{$irohSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  5  )},-{$irohAC*$ySpacer} {55+($xSpacer1*  5  )},-{$irohAC*$ySpacer} {63+($xSpacer1*  5  )},-{$irohAC*$ySpacer + 6} {43+($xSpacer1*  5  )},-{$irohAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Azula-->
    <polygon points="{30+($xSpacer1*  6  )},0 {30+($xSpacer1*  6  )},-{$azulaSP*$ySpacer} {38+($xSpacer1*  6  )},-{$azulaSP*$ySpacer + 6} {38+($xSpacer1*  6  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  6  )},0 {55+($xSpacer1*  6  )},-{$azulaAC*$ySpacer} {63+($xSpacer1*  6  )},-{$azulaAC*$ySpacer + 6} {63+($xSpacer1*  6  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  6  )},0 {10+($xSpacer1*  6  )},-{$azulaSP*$ySpacer} {30+($xSpacer1*  6  )},-{$azulaSP*$ySpacer} {30+($xSpacer1*  6  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  6  )},0 {35+($xSpacer1*  6  )},-{$azulaAC*$ySpacer} {55+($xSpacer1*  6  )},-{$azulaAC*$ySpacer} {55+($xSpacer1*  6  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  6  )},-{$azulaSP*$ySpacer} {30+($xSpacer1*  6  )},-{$azulaSP*$ySpacer} {38+($xSpacer1*  6  )},-{$azulaSP*$ySpacer + 6} {18+($xSpacer1*  6  )},-{$azulaSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  6  )},-{$azulaAC*$ySpacer} {55+($xSpacer1*  6  )},-{$azulaAC*$ySpacer} {63+($xSpacer1*  6  )},-{$azulaAC*$ySpacer + 6} {43+($xSpacer1*  6  )},-{$azulaAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Jet-->
    <polygon points="{30+($xSpacer1*  7  )},0 {30+($xSpacer1*  7  )},-{$jetSP*$ySpacer} {38+($xSpacer1*  7  )},-{$jetSP*$ySpacer + 6} {38+($xSpacer1*  7  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  7  )},0 {55+($xSpacer1*  7  )},-{$jetAC*$ySpacer} {63+($xSpacer1*  7  )},-{$jetAC*$ySpacer + 6} {63+($xSpacer1*  7  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  7  )},0 {10+($xSpacer1*  7  )},-{$jetSP*$ySpacer} {30+($xSpacer1*  7  )},-{$jetSP*$ySpacer} {30+($xSpacer1*  7  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  7  )},0 {35+($xSpacer1*  7  )},-{$jetAC*$ySpacer} {55+($xSpacer1*  7  )},-{$jetAC*$ySpacer} {55+($xSpacer1*  7  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  7  )},-{$jetSP*$ySpacer} {30+($xSpacer1*  7  )},-{$jetSP*$ySpacer} {38+($xSpacer1*  7  )},-{$jetSP*$ySpacer + 6} {18+($xSpacer1*  7  )},-{$jetSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  7  )},-{$jetAC*$ySpacer} {55+($xSpacer1*  7  )},-{$jetAC*$ySpacer} {63+($xSpacer1*  7  )},-{$jetAC*$ySpacer + 6} {43+($xSpacer1*  7  )},-{$jetAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Zhao-->
    <polygon points="{30+($xSpacer1*  8  )},0 {30+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer} {38+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer + 6} {38+($xSpacer1*  8  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  8  )},0 {55+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer} {63+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer + 6} {63+($xSpacer1*  8  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  8  )},0 {10+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer} {30+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer} {30+($xSpacer1*  8  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  8  )},0 {35+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer} {55+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer} {55+($xSpacer1*  8  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer} {30+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer} {38+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer + 6} {18+($xSpacer1*  8  )},-{$zhaoSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer} {55+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer} {63+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer + 6} {43+($xSpacer1*  8  )},-{$zhaoAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <!--Suki-->
    <polygon points="{30+($xSpacer1*  9  )},0 {30+($xSpacer1*  9  )},-{$sukiSP*$ySpacer} {38+($xSpacer1*  9  )},-{$sukiSP*$ySpacer + 6} {38+($xSpacer1*  9  )},0" stroke="black" fill="url(#RedSide)"/>
    <polygon points="{55+($xSpacer1*  9  )},0 {55+($xSpacer1*  9  )},-{$sukiAC*$ySpacer} {63+($xSpacer1*  9  )},-{$sukiAC*$ySpacer + 6} {63+($xSpacer1*  9  )},0" stroke="black" fill="url(#BlueSide)"/>
    
    <polygon points="{10+($xSpacer1*  9  )},0 {10+($xSpacer1*  9  )},-{$sukiSP*$ySpacer} {30+($xSpacer1*  9  )},-{$sukiSP*$ySpacer} {30+($xSpacer1*  9  )},0" stroke="black" fill="url(#RedFront)"/>
    <polygon points="{35+($xSpacer1*  9  )},0 {35+($xSpacer1*  9  )},-{$sukiAC*$ySpacer} {55+($xSpacer1*  9  )},-{$sukiAC*$ySpacer} {55+($xSpacer1*  9  )},0" stroke="black" fill="url(#BlueFront)"/>
    
    <polygon points="{10+($xSpacer1*  9  )},-{$sukiSP*$ySpacer} {30+($xSpacer1*  9  )},-{$sukiSP*$ySpacer} {38+($xSpacer1*  9  )},-{$sukiSP*$ySpacer + 6} {18+($xSpacer1*  9  )},-{$sukiSP*$ySpacer + 6}" stroke="black" fill="rgb(200, 100, 90)"/>
    <polygon points="{35+($xSpacer1*  9  )},-{$sukiAC*$ySpacer} {55+($xSpacer1*  9  )},-{$sukiAC*$ySpacer} {63+($xSpacer1*  9  )},-{$sukiAC*$ySpacer + 6} {43+($xSpacer1*  9  )},-{$sukiAC*$ySpacer + 6}" stroke="black" fill="rgb(102, 169, 228)"/>
    
    <line x1="0" x2="700" y1="0" y2="0" stroke="black" stroke-width="6"/>
    <line x1="0" x2="0" y1="3" y2="-400" stroke="black" stroke-width="6"/>
    
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+10}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -22)"/>
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+10}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -113)"/>
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+10}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -220)"/>
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+10}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -330)"/>
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+10}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -396)"/>
    
    <text x="10" y="20" font-size="20">Aang</text>
    <text x="80" y="20" font-size="20">Sokka</text>
    <text x="150" y="20" font-size="20">Katara</text>
    <text x="225" y="20" font-size="20">Zuko</text>
    <text x="294" y="20" font-size="20">Toph</text>
    <text x="367" y="20" font-size="20">Iroh</text>
    <text x="430" y="20" font-size="20">Azula</text>
    <text x="511" y="20" font-size="20">Jet</text>
    <text x="575" y="20" font-size="20">Zhao</text>
    <text x="647" y="20" font-size="20">Suki</text>
    
    <text x="710" y="-16" font-size="18">100</text>
    <text x="710" y="-107" font-size="18">500</text>
    <text x="710" y="-213" font-size="18">1000</text>
    <text x="710" y="-323" font-size="18">1500</text>
    <text x="710" y="-389" font-size="18">1700</text>
    
    <text x="-130" y="-225" font-size="25">Speech</text>
    <text x="-128" y="-165" font-size="25">Action</text>
    
    <rect x="-50" y="-185" width="25" height="25" stroke="black" fill="url(#BlueSquare)"/>
    <rect x="-50" y="-245" width="25" height="25" stroke="black" fill="url(#RedSquare)"/>
    
    <text x="168" y="-410" font-size="30">Speech Count vs Action Count</text>
    
</g>
}
</g>
</svg> (:;



let $filename := "SpeechVsAction.svg"
let $doc-db-uri := xmldb:store("/db/avatar-queries", $filename, $ThisFileContent, "xml")
return $doc-db-uri:)

