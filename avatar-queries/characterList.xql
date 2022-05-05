xquery version "3.1";
let $avatar := collection('/db/avatar/TransformedScripts')
let $character := $avatar//speech/@speaker ! normalize-space() => distinct-values() => sort()
return $character => string-join("&#10;") 