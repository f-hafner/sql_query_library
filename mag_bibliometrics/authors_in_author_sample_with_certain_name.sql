select * from author_sample 
inner join (
    select authorid, normalizedname
    from authors
) using(authorid) 
where normalizedname = "NAME_HERE"
limit 10;
