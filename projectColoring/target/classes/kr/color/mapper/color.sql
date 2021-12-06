select * from palettes limit 5;

select * from inputtext limit 5;

select *,jaro_winkler_similarity('lavender',txt_content) as jws from inputtext order by jws desc limit 15

select * from inputtext order by rand() limit 15