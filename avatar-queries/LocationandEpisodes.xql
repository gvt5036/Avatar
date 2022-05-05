xquery version "3.1";
declare namespace output = "http://www.w3.org/1999/xhtml";
declare option output:method "html";
declare option output:media-type "text/html";
declare option output:doctype "doctype-public";
declare option output:indent  "yes";
    let $avatar := collection('/db/avatar/AvatarScripts')
let $location := $avatar//metadata/location ! normalize-space() => distinct-values()
for $l in $location
let $lTitle := $avatar//metadata[.//location ! normalize-space() = $l]//title ! normalize-space()
  let $thisFileContent :=     
            <html>
    <head><title>Disney Songs</title></head>
    <body>
        <h1>The Song and its Origin</h1>
<table>
    <tr><th>Location</th><th>Episode(s)</th></tr>
            <tr>
                <td>{$l}</td>
                <td><ul>{
                    
                    for $j in $lTitle
                        return
                            <li>{$j}</li>}
                
                </ul>
                </td>
                </tr>

</table>
</body>
</html>
    let $filename := replace($l,'[ '']', "") ! concat(.,".html")
    let $doc-db-uri := xmldb:store("/db/avatar-queries/Map", $filename, $thisFileContent, "text/html")
    return $doc-db-uri