-- order by(정렬)
-- 오름차순(Ascending, ASC)
SELECT
		 menu_code -- 1
		,menu_name -- 2
		,menu_price -- 3
	FROM tbl_menu
--	ORDER BY menu_price ASC,  menu_name DESC;
-- 정렬을 우선순위를 나누어 정렬할 수도 있다
	ORDER BY 3 ASC, 2 DESC; 		-- select 절의 컬럼 순번으로 정렬 가능 
--	ORDER BY 3, 2 DESC;				-- asc는 생략 가능 asc는 디폴트
-- 별칭을 이용한 정렬
SELECT
		 menu_code AS '메뉴코드'
		,menu_name AS  'mn'
		,menu_price AS 'mp'
	FROM tbl_menu
	ORDER BY 메뉴코드 DESC;			--  싱글쿼테이션 생략 불가(별칭에 특수기호x)
	
-- mariadb는 field함수를 활용해서 정렬이 가능하다
SELECT FIELD ('a','b','a','d');

SELECT
		 ORDERable_status
		,FIELD(orderable_status, 'N','Y')  -- 수치화 가능
	FROM tbl_menu;

-- field를 활용한 order by
-- 주문 가능한 것부터 보이게 정렬하기
SELECT
		 menu_name
		,orderable_status
	FROM tbl_menu;
	ORDER BY FIELD(orderable_status, 'N','Y')DESC;
	
SELECT * FROM tbl_category;
-- -------------------------------------------------------------------------------
-- null 값 (비어있는 컬럼값)에 대한 정렬
-- 1) 오름차순 시 null값이 먼저 온다
SELECT
		 *
	FROM tbl_category
	ORDER BY ref_category_code ASC;

-- 2) 내림차순 시 null 값이 나중에 나옴
SELECT
		 *
	FROM tbl_category
	ORDER BY ref_category_code DESC;
	
-- 3) 오름차순에서 null이 나중에 나오도록 바꿈
SELECT
		*
	FROM tbl_category
	ORDER BY -ref_category_code DESC;	-- -가 붙으면서 null값 제외 반대가 나옴 => null만 아래에 있고 나머지는 오름차순으로 나옴
	