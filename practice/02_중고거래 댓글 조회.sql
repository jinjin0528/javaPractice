SELECT
        a.title
        ,a.board_id
        ,b.reply_id
        ,a.writer_id
        ,b.contents
        ,count(distinct b.CREATED_DATE)
    from used_goods_board a
    join used_goods_reply b on a.board_id = b.board_id
    where year(b.CREATED_DATE) = 2022
    and mmonth(b.CREATED_DATE) = 10
    order by b.created_date, a.title asc;