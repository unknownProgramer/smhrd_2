select * from palettes limit 5;

select * from inputtext limit 5;

select *,jaro_winkler_similarity('lavender',txt_content) as jws from inputtext order by jws desc limit 15

select * from inputtext order by rand() limit 15

select * from inputtext order by jaro_winkler_similarity('lavender',txt_content) desc limit 15

-- 메인 페이지 랜덤 팔레트 16개 가져오기 --
select p.palette_seq, t.txt_seq, p.palette_color1, p.palette_color2, p.palette_color3, p.palette_color4, p.palette_color5, p.regdit_date, p.user_seq from inputtext t, palettes p where t.txt_seq = p.txt_seq order by rand() limit 16

