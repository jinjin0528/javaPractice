SELECT
        b.ingredient_type
        ,sum(a.total_order) as TOTAL_ORDER
    from first_half a join icecream_info b on a.flavor = b.flavor
    group by b.ingredient_type
    order by total_order ;