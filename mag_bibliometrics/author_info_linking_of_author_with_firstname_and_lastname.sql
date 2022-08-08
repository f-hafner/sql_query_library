select *
from author_sample
inner join (
    select authorid, normalizedname
    from authors
) using (Authorid) 
inner join (
    select AuthorId, us_institutions_year, us_institutions_career 
    from author_info_linking
) using(Authorid)
where normalizedname like "START_FIRSTNAME%" 
    and normalizedname like "%END_LASTNAME"
