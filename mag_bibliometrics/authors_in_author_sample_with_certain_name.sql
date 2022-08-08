select * from authors 
inner join (
    select authorid 
    from author_sample
) using(authorid) 
where normalizedname = "NAME_HERE"
limit 10;