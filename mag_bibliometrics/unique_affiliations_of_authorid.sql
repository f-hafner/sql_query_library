select distinct affiliationid, affiliationname
from (
    select * 
    from paperauthoraffiliations
    where authorid = AUTHORID_HERE
)
inner join (
    select affiliationid, normalizedname as affiliationname
    from affiliations
) using(affiliationid)