SELECT  
    concat("/home/grep/src/",a.board_id,'/',a.file_id,a.file_name,a.file_ext) as file_path
    from used_goods_file a
    where a.board_id = (select b.board_id
                       from used_goods_board b
                       order by b.views desc
                       limit 1)
order by a.file_id desc;