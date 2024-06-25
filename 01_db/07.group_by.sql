-- group by절
-- 메뉴가 존재하는 카테고리 그룹 조회
-- 그룹 함수(sum, avg, count, max, min)를 적용하기 위한 설정
SELECT
		 category_code
	FROM tbl_menu
	GROUP BY category_code;
	
-- count 함수 활용
-- 행 조회는 *사용
SELECT
		 COUNT(*)
		 , a.category_code
	FROM tbl_menu a
	GROUP BY a.category_code;
	
SELECT
		 COUNT(*)
		 ,CONCAT (a.category_code, '번 카테고리') AS '카테고리 번호'
		 ,a.menu_name 메뉴이름
	FROM tbl_menu a
	GROUP BY a.category_code;
	
-- count 함수
-- count(컬럼명 또는 *)
-- count(컬럼명) 해당 컬럼에 null이 아닌 행의 개수
-- count(*) 모든 행의 개수
SELECT
		 COUNT(*) AS '모든 카테고리 행'
		,COUNT(ref_category_code) AS '상위 카테고리가 존재하는 카테고리'
		FROM tbl_category;	
		
-- sum 함수 활용
SELECT
		 category_code
		,SUM(menu_price)
	FROM tbl_menu
	GROUP BY category_code;
		
-- avg 함수 활용
SELECT
		 category_code
		,AVG(menu_price)
	FROM tbl_menu
	GROUP BY category_code;	
-- avg 소수점없이 정수로만 표현
SELECT
		 category_code
		,FLOOR(AVG(menu_price))
	FROM tbl_menu
	GROUP BY category_code;	

-- having 절
SELECT
		 SUM(menu_price)
		,category_code
	FROM tbl_menu
	GROUP BY category_code
-- haVING category_code BETWEEN 5 AND 9
	HAVING SUM(menu_price) >= 20000;
	
SELECT
	floor(avg(menu_price))
		,category_code
	FROM tbl_menu
	GROUP BY category_code
-- haVING category_code BETWEEN 5 AND 9
	HAVING avg(menu_price) > 12000
	ORDER BY 1 DESC;

-- ------------------------------------------------------------
-- rollup
-- group을 묶을 때 하나의 기준(하나의 컬럼)으로 그룹화하여 rollup 하면 총 합계 개념이 나온다
SELECT
	sum(menu_price)
	,category_code
	FROM tbl_menu
	GROUP BY category_code
	WITH ROLLUP;
	
-- group을 묶을 때 여러개의 기준 (여러개의 컬럼)으로 그룹화하여 rollup
SELECT
		 SUM(menu_price)
		,menu_price
		,category_code
	FROM tbl_menu
	GROUP BY menu_price, category_code
	WITH ROLLUP;
