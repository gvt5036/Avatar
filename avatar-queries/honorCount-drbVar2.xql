xquery version "3.1";
let $avatar := collection('/db/avatar/TransformedScripts')
let $countFiles := $avatar => count()
for $a in $avatar
       let $aTitle := $a//metadata/title ! string()
       let $honor := $a//speech[matches(.,'[Hh]on[ou]r')]
       where $honor => count() > 0
       return 
<tr>
   <td>{$aTitle}</td>
   <td><ol>{for $h in $honor
            let $speaker := $h/@speaker ! string()
            return
           <li>{$speaker}: {$h/text() ! normalize-space()}</li>
         }</ol></td> 
</tr>
      
      