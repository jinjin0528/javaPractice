-- join

-- alias(별칭)
-- 컬럼에 별칭을 다는 것 외에도 from절에 작성되는 것들에 별칭도 추가가능
-- 테이블 또는 from  절에 별칭을 추가할 때는 ('')없이 별칭을 작성
-- as는 생략 가능
SELECT
		a.category_code
		, a.menu_name
	FROM tbl_menu AS 'a'
	ORDER BY a.category_code, a.menu_name;
	
-- (inner) join : inner 생략해도 inner join임
-- 1) on을 활용
SELECT
		 menu_name
		,category_name
	FROM tbl_menu
	INNER JOIN tbl_category ON tbl_menu.category_code = tbl_category.category_code;
-- (alias로 간단하게)
SELECT
		 a.menu_name			-- tbl_menu
		,b.category_name		-- tbl_category
		,a.category_code		-- tbl_menu
		,b.category_code		-- tbl_category
	FROM tbl_menu a
	JOIN tbl_category b ON a.category_code = b.category_code;
-- *로 전체 조회
SELECT
		 a.*
		,b.*
	FROM tbl_menu a
	INNER JOIN tbl_category b ON a.category_code = b.category_code;
	
-- 2) using을 활용
-- 동일한 테이블들의 매핑 컬럼명들이 동일한 경우에만 사용 가능
SELECT
		 a.menu_name			-- tbl_menu
		,b.category_name		-- tbl_category
		, a.category_code		-- tbl_menu
		, b.category_code		-- tbl_category
	FROM tbl_menu a
	JOIN tbl_category b USING (category_code);
	
-- outer join	
-- ex) FROM tbl_menu a JOIN tbl_category b USING (category_code);
-- 1) left join
SELECT
		a.category_name
		,b.menu_name
	FROM tbl_category a
	LEFT JOIN tbl_menu b ON (a.category_code = b.category_code);
	
-- 2) right join 
SELECT
		a.menu_name
		,b.category_name
	FROM tbl_menu a
	RIGHT JOIN tbl_category b ON (a.category_code = b.category_code);
	
-- 3) cross join
-- cross join은 on사용xx
SELECT
		a.menu_name
		, b.category_name
	FROM tbl_menu a
	CROSS JOIN tbl_category b;
	
-- 4) self join(자기 참조)
-- a에 해당하는 것은 하위 카테고리, b에 해당하는 것은 상위 카테고리 //똑같이 복사해서 두개
SELECT
		 a.category_name
		 ,b.category_name
	FROM tbl_category a 
	JOIN tbl_category b ON (a.ref_category_code = b.category_code);