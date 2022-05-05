(: The goal is to see how many times each character says the word honor across the whole collection :)
xquery version "3.1";
let $avatar := collection('/db/avatar/TransformedScripts')
       let $character := $avatar//speech[matches(.,'[Hh]on[ou]r')]/@speaker ! normalize-space() => distinct-values() => sort() 
       let $allHonorCount := $avatar//speech[.//matches(.,'[Hh]on[ou]r')] => count()
       let $charactersSortedByCount := 
            for $c in $character 
            let $honorCount := $avatar//speech[matches(.,'[Hh]on[ou]r')][@speaker ! normalize-space()=$c] => count()
            let $percentHonor := $honorCount div $allHonorCount * 100
            order by $percentHonor descending
            return $c
          
        for $a at $pos in $charactersSortedByCount
        let $honorCount := $avatar//speech[matches(.,'[Hh]on[ou]r')][@speaker ! normalize-space()=$a] => count()
        let $percentHonor := $honorCount div $allHonorCount * 100
        let $percentHonorLabel := format-number($percentHonor, '#.##')
        (:format-number() is an XPath function to set a number of decimal places. We can use that as a label:)
        where $percentHonor > 5
        (: The where statement limits the return to six characters with over 5% of the honor speech count. 
        We can use these values to hand-draw a stacked SVG bar graph. Add all the percent values and substact from 100 to calculate the size of the remaining portion. :)
        return concat($pos,".) ",$a,": ",$percentHonorLabel, '%')