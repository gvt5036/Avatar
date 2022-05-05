xquery version "3.1";
declare variable $ySpacer := 0.22;
declare variable $xSpacer1 := 70;
declare variable $xSpacer2 := 8.8;


<svg width="780" height="610">
<defs>
    <linearGradient id="grad2" x1="0%" y1="10%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(234, 57, 26);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(248, 130, 110);stop-opacity:1" />
    </linearGradient>
    <linearGradient id="grad1" x1="0%" y1="10%" x2="100%" y2="0%">
      <stop offset="0%" style="stop-color:rgb(110, 180, 248);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(78, 138, 198);stop-opacity:1" />
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


return 
    (:concat($aangSP, "  ", $sokkaSP, "  ", $kataraSP, "  ", $zukoSP, "  ", $tophSP, "  ", $irohSP, "  ", $azulaSP, "  ", $jetSP, "  ", $zhaoSP, "  ", $sukiSP):)
<g transform="translate(73 580)">
    
    <!--Aang-->
    <rect x="0" y="-490" width="{700*0.568}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.568}" y="-490" width="{700*0.432}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.568}" x2="{700*0.568}" y1="-490" y2="-450" stroke="black"/>
    
    <!--Sokka-->
    <rect x="0" y="-440" width="{700*0.5546}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5546}" y="-440" width="{700*0.4454}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5546}" x2="{700*0.5546}" y1="-440" y2="-400" stroke="black"/>
    
    <!--Katara-->
    <rect x="0" y="-390" width="{700*0.5782}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5782}" y="-390" width="{700*0.4218}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5782}" x2="{700*0.5782}" y1="-390" y2="-350" stroke="black"/>
    
    
    <!--Zuko-->
    <rect x="0" y="-340" width="{700*0.5472}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5472}" y="-340" width="{700*0.4528}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5472}" x2="{700*0.5472}" y1="-340" y2="-300" stroke="black"/>
    
    <!--Toph-->
    <rect x="0" y="-290" width="{700*0.5728}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5728}" y="-290" width="{700*0.4272}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5728}" x2="{700*0.5728}" y1="-290" y2="-250" stroke="black"/>
    
    <!--Iroh-->
    <rect x="0" y="-240" width="{700*0.5333}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5333}" y="-240" width="{700*0.4667}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5333}" x2="{700*0.5333}" y1="-240" y2="-200" stroke="black"/>
    
    <!--Azula-->
    <rect x="0" y="-190" width="{700*0.5207}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5207}" y="-190" width="{700*0.4793}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5207}" x2="{700*0.5207}" y1="-190" y2="-150" stroke="black"/>
    
    <!--Jet-->
    <rect x="0" y="-140" width="{700*0.687}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.687}" y="-140" width="{700*0.313}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.687}" x2="{700*0.687}" y1="-140" y2="-100" stroke="black"/>
    
    <!--Zhao-->
    <rect x="0" y="-90" width="{700*0.5515}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5515}" y="-90" width="{700*0.4485}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5515}" x2="{700*0.5515}" y1="-90" y2="-50" stroke="black"/>
    
    <!--Suki-->
    <rect x="0" y="-40" width="{700*0.5666}" height="40" fill="url(#grad2)"/>
    <rect x="{700*0.5666}" y="-40" width="{700*0.4334}" height="40" fill="url(#grad1)"/>
    <line x1="{700*0.5666}" x2="{700*0.5666}" y1="-40" y2="0" stroke="black"/>



    <line x1="0" x2="700" y1="-500" y2="-500" stroke="black" stroke-width="6"/>
    <line x1="0" x2="700" y1="10" y2="10" stroke="black" stroke-width="6"/>
    <line x1="0" x2="0" y1="13" y2="-503" stroke="black" stroke-width="6"/>
    <line x1="700" x2="700" y1="13" y2="-503" stroke="black" stroke-width="6"/>
    
    <text x="20" y="-464" font-size="20">{$aangSP}</text>
    <text x="20" y="-414" font-size="20">{$sokkaSP}</text>
    <text x="20" y="-364" font-size="20">{$kataraSP}</text>
    <text x="20" y="-314" font-size="20">{$zukoSP}</text>
    <text x="20" y="-264" font-size="20">{$tophSP}</text>
    <text x="20" y="-214" font-size="20">{$irohSP}</text>
    <text x="20" y="-164" font-size="20">{$azulaSP}</text>
    <text x="20" y="-114" font-size="20">{$jetSP}</text>
    <text x="20" y="-64" font-size="20">{$zhaoSP}</text>
    <text x="20" y="-14" font-size="20">{$sukiSP}</text>
    
    <text x="640" y="-464" font-size="20">{$aangAC}</text>
    <text x="640" y="-414" font-size="20">{$sokkaAC}</text>
    <text x="640" y="-364" font-size="20">{$kataraAC}</text>
    <text x="650" y="-314" font-size="20">{$zukoAC}</text>
    <text x="650" y="-264" font-size="20">{$tophAC}</text>
    <text x="650" y="-214" font-size="20">{$irohAC}</text>
    <text x="650" y="-164" font-size="20">{$azulaAC}</text>
    <text x="660" y="-114" font-size="20">{$jetAC}</text>
    <text x="660" y="-64" font-size="20">{$zhaoAC}</text>
    <text x="660" y="-14" font-size="20">{$sukiAC}</text>
    
    <text x="-55" y="-468" font-size="20">Aang</text>
    <text x="-62" y="-418" font-size="20">Sokka</text>
    <text x="-66" y="-368" font-size="20">Katara</text>
    <text x="-55" y="-318" font-size="20">Zuko</text>
    <text x="-55" y="-268" font-size="20">Toph</text>
    <text x="-48" y="-218" font-size="20">Iroh</text>
    <text x="-63" y="-168" font-size="20">Azula</text>
    <text x="-38" y="-118" font-size="20">Jet</text>
    <text x="-55" y="-68" font-size="20">Zhao</text>
    <text x="-51" y="-18" font-size="20">Suki</text>

    
    <text x="220" y="-518" font-size="25">Speech</text>
    <text x="355" y="-518" font-size="25">Action</text>
    
    <rect x="430" y="-538" width="25" height="25" stroke="black" fill="url(#BlueSquare)"/>
    <rect x="300" y="-538" width="25" height="25" stroke="black" fill="url(#RedSquare)"/>
    
    <text x="155" y="-550" font-size="30">Speech Count vs Action Count</text>
    
    <g>
    {for $dash at $pos in $avatar
        return 
    
    <line x1="{$pos*$xSpacer2}" x2="{$pos*$xSpacer2+5}" y1="0" y2="0" stroke="black" stroke-width="2" transform="translate(-8 -153) rotate(90 350 0)"/>}
    </g>
    
    
</g>

}
</g>
</svg>
