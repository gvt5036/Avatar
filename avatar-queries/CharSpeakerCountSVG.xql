xquery version "3.1";
declare variable $ySpacer := 1;
declare variable $xSpacer := 10;

<svg width="650" height="360">
<defs>
    <linearGradient id="grad2" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="40%" style="stop-color:rgb(111, 128, 242);stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(45, 57, 139);stop-opacity:1" />
    </linearGradient>
  </defs>
<g>
{
let $avatar := collection('/db/avatar/AvatarScripts')/root

let $distinctSpk := $avatar//speech/@speaker ! string() => distinct-values() => sort()

for $d at $pos in $avatar
    let $spkCount := $d//speech/@speaker => count()
    let $title := $d//metadata/title ! string()
    let $date := $d//metadata/date
    let $episode := $d//metadata/title/@episode ! number()
    order by $episode
    
return

<g transform="translate(50, 336)">
   <polygon transform="scale(-1, 1) translate(-590,-2)" points="{$pos * $xSpacer - 5},0 {$pos * $xSpacer - 5 + 5}, 0 {$pos * $xSpacer - 5 + 5}, -{$spkCount * $ySpacer} {$pos * $xSpacer - 5}, -{$spkCount * $ySpacer + 2}" fill="url(#grad2)" stroke="black"/>
   <line x1="0" x2="600" y1="-2.5" y2="-2.5" stroke-width="5" stroke="black"/>
   <line x1="-3" x2="600" y1="-308" y2="-308" stroke-width="5" stroke="black"/>
   <line x1="0" x2="0" y1="0" y2="-305" stroke-width="5" stroke="black"/>
   <line x1="597" x2="597" y1="0" y2="-305" stroke-width="5" stroke="black"/>
   
   
   <line x1="-5" x2="5" y1="-100" y2="-100" stroke-width="5" stroke="black"/>
   <line x1="-5" x2="5" y1="-200" y2="-200" stroke-width="5" stroke="black"/>
   <line x1="-5" x2="5" y1="-300" y2="-300" stroke-width="5" stroke="black"/>
   
   
   
   <text x="-40" y="-94" font-size="20" font-family="georgia">100</text>
   <text x="-45" y="-194" font-size="20" font-family="georgia">200</text>
   <text x="-45" y="-294" font-size="20" font-family="georgia">300</text>
   
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="100" y="20">Book 1</text>
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="300" y="20">Book 2</text>
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="500" y="20">Book 3</text>
   
   <line x1="208" x2="208" y1="-11" y2="8" stroke-width="3" stroke="black"/>
   <line x1="408" x2="408" y1="-11" y2="8" stroke-width="3" stroke="black"/>
   
   <text x="177" y="-320" font-size="20" font-family="georgia">Speech Count Per Episode</text>
</g>
}
</g>
</svg>
