SELECT
        a.animal_id
        ,a.name
        from animal_outs b join animal_ins a on a.animal_id = b.animal_id
        where b.datetime < a.datetime
        order by a.datetime;