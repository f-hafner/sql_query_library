select * 
from authoraffiliation
inner join (
    select affiliationid, normalizedname 
    from affiliations
) using(affiliationid)
where authorid = AUTHORID_HERE
order by year