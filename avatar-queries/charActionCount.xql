xquery version "3.1";
declare variable $ySpacer := 1;
declare variable $xSpacer := 10;

<svg width="650" height="360">
<defs>
    <linearGradient id="grad2" x1="0%" y1="0%" x2="0%" y2="100%">
      <stop offset="40%" style="stop-color:rgb(162, 217, 127 );stop-opacity:1" />
      <stop offset="100%" style="stop-color:rgb(84, 140, 49);stop-opacity:1" />
    </linearGradient>
  </defs>
<g>
{
let $avatar := collection('/db/avatar/AvatarScripts')/root

let $distinctSpk := $avatar//speech/@speaker ! string()
let $spk := $avatar//speech/@speaker ! string() => sort() => distinct-values()

for $d at $pos in $avatar
    let $charAction := $d//charAction => count()
    let $title := $d//metadata/title ! string()
    let $date := $d//metadata/date
    let $episode := $d//metadata/title/@episode ! number()
    order by $episode
    
return 
    
<g transform="translate(30, 336)">
   <polygon transform="scale(-1, 1) translate(-590,-2)" points="{$pos * $xSpacer - 5},0 {$pos * $xSpacer - 5 + 5}, 0 {$pos * $xSpacer - 5 + 5}, -{$charAction * $ySpacer} {$pos * $xSpacer - 5}, -{$charAction * $ySpacer + 2}" fill="url(#grad2)" stroke="black"/>
   <line x1="0" x2="600" y1="-2.5" y2="-2.5" stroke-width="5" stroke="black"/>
   <line x1="-3" x2="600" y1="-308" y2="-308" stroke-width="5" stroke="black"/>
   <line x1="0" x2="0" y1="0" y2="-305" stroke-width="5" stroke="black"/>
   <line x1="597" x2="597" y1="0" y2="-305" stroke-width="5" stroke="black"/>
   
   
   <line x1="-5" x2="5" y1="-100" y2="-100" stroke-width="5" stroke="black"/>
   <line x1="-5" x2="5" y1="-200" y2="-200" stroke-width="5" stroke="black"/>
   <line x1="-5" x2="5" y1="-300" y2="-300" stroke-width="5" stroke="black"/>
   
   
   
   <text x="-20" y="-94" font-size="20" font-family="georgia">5</text>
   <text x="-30" y="-194" font-size="20" font-family="georgia">10</text>
   <text x="-30" y="-294" font-size="20" font-family="georgia">15</text>
   
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="100" y="20">Book 1</text>
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="300" y="20">Book 2</text>
   <text transform="translate(-10, 0)" font-size="15" font-family="georgia" x="500" y="20">Book 3</text>
   
   <line x1="208" x2="208" y1="-11" y2="8" stroke-width="3" stroke="black"/>
   <line x1="408" x2="408" y1="-11" y2="8" stroke-width="3" stroke="black"/>
   
   <text x="160" y="-320" font-size="20" font-family="georgia">Character Actions Per Episode</text>
</g>
}
</g>
</svg>