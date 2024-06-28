SELECT
        book_id
        ,DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
    from book
    where year(published_date) = 2021
    and category like '%인문%'
    order by published_date;