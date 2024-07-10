select
        a.item_id
        ,a.item_name
        from item_info a
        where a.item_id in (select b.item_id
                            from item_tree b
                            where b.parent_item_id is null);