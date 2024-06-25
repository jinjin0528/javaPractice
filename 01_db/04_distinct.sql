-- distinct ( 중복 값 한번만 표기함)
SELECT
		 category_code
	FROM tbl_menu
	ORDER BY category_code;
	
SELECT
		distinct category_code
	FROM tbl_menu
	ORDER BY category_code;	-- 메뉴가 할당된 카테고리의 종류

-- 상위 카테고리 조회하기
-- 1) where절 활용
SELECT
		 *
	FROM tbl_category
	WHERE ref_category_code IS NULL; -- ref_category_code 컬럼에서 널값만 가진 행들만 조회
	
-- 2) 아래 코드를 통해 카테고리의 상위 카테고리 번호를 알 수 있다.

SELECT
		distinct ref_category_code
--		,category_name AS '카테고리명'
	FROM tbl_category
	WHERE ref_category_code IS NOT NULL;
	
-- 추후 배울 예정이며 서브 쿼리를 활용하면 하나의 쿼리로 작성가능
SELECT
		 *
	FROM tbl_category
	WHERE category_code IN (SELECT DISTINCT ref_category_code
											FROM tbl_category
											WHERE ref_category_code IS NOT NULL);
											
-- 다중열을 distinct

SELECT
		category_code
		,orderable_status
	FROM tbl_menu;
	
SELECT
		DISTINCT
		category_code
		,orderable_status
	FROM tbl_menu;
		
