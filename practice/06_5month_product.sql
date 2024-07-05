SELECT  
        b.product_id
        ,a.product_name
        ,sum(b.amount)*a.price as total_sales
    from food_product a join food_order b on a.product_id = b.product_id
    where DATE_FORMAT(b.PRODUCE_DATE,"%Y-%m") = "2022-05"
    group by a.product_id
    order by total_sales desc, a.product_id;
