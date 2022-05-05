(: The goal is to see how many times each character says the word honor across the whole collection :)
xquery version "3.1";
declare variable $ySpacer := 10;
declare variable $xSpacer := 30;
<svg width="1000" height="1000">
<g transform="translate(30, 600)">
{
    let $avatar := collection('/db/avatar/TransformedScripts')
       let $character := $avatar//speech[matches(.,'[Hh]on[ou]r')]/@speaker ! normalize-space() => distinct-values() => sort() 
       let $charactersSortedByCount := 
            for $c in $character 
            let $honorCount := $avatar//speech[.//matches(.,'[Hh]on[ou]r')][@speaker ! normalize-space()=$c] => count()
            order by $honorCount descending
            return $c
        for $a at $pos in $charactersSortedByCount
        let $honorCount := $avatar//speech[.//matches(.,'[Hh]on[ou]r')][@speaker ! normalize-space()=$a] => count()
        return
        (:return concat($pos,".) ",$a,": ",$honorCount:)
<g>
    <line x1="{$pos * $xSpacer}" x2="{$pos * $xSpacer}" y1="0" y2="-{2* $honorCount * $ySpacer}" stroke="red" stroke-width="10"/>
</g>
}
<line x1="20" y1="-450" x2="20" y2="0" stroke="black"/>
<line x1="20" y1="0" x2="1000" y2="0" stroke="black"/>
<text x="450" y="50">Character</text>
<text x="400" y="-450">Times Honor is Said by Characters</text>
<text x="-30" y="-200">Honor Count</text>

</g>
</svg>