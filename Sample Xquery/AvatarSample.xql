xquery version "3.1";
declare variable $avatarEpisodes := collection('/db/avatar/AvatarScripts');
declare variable $nationFile := doc('/db/avatar/charactersNations.xml');

let $nations := $nationFile//nation
for $n in $nations
    let $filename := concat($n/@what ! normalize-space(), '.txt')
    let $chars := $n/person
    let $nationSpeeches:= for $c in $chars
                     let $cSpeech := $avatarEpisodes//speech[@speaker ! normalize-space() = $c/@who ! normalize-space()]/text()
                     return $cSpeech ! normalize-space()
    let $thisFileContent := string-join($nationSpeeches, ' ')
    let $doc-db-uri := xmldb:store("/db/avatar-queries/nationSpeeches", $filename, $thisFileContent, "text/plain")
    return $doc-db-uri

(:   :return concat($n/@what ! normalize-space(), string-join($chars, ', ')):)
 

(: Adapt this script from Star Wars project:
 : let $filename := $s/base-uri() ! tokenize(., '/')[last()] ! substring-before(., '.xml') ! concat(., '-stagedirs.txt')
let $thisFileContent := 
        let $stages := $s//sd ! normalize-space()
        return string-join($stages, "&#10;")
         (: We're using our newline character here to put a hard return between each stage direction's text :)
        
let $doc-db-uri := xmldb:store("/db/starwars-queries/textBlobs", $filename, $thisFileContent, "text/plain")
return $doc-db-uri 

 :  :)