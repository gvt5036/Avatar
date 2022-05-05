xquery version "3.1";
(: I want to display every episode that mentions cabbages. :)
let $avatar := collection('/db/avatar')
let $title := $avatar//metadata/title ! normalize-space() => distinct-values() => sort()
let $cabbage := $avatar[.//speech[matches(.,'[Cc]abbage[s]')]]//metadata/title ! normalize-space() => sort()
    return $cabbage
(: Once the rest of the collection is added, we can see if the cabbage kart man has any significance towards important episodes. Or maybe  :)
(: he only appears during the lighthearted episodes :)
(: -Julian :)