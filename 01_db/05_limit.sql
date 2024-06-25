-- limit
-- 전체 행조회
-- limit이 포함된 order by랑 단순 order by는 정렬 기준 컬럼의 값이 같으면
-- 약간의 순서 차이가 있을 수 있다. (추가적인 정렬 기준으로 조정 가능)

SELECT
		 menu_code
		,menu_name
		,menu_price
	FROM tbl_menu
	ORDER BY menu_price DESC; 
	
SELECT
		 menu_code
		,menu_name
		,menu_price
	FROM tbl_menu
	ORDER BY menu_price DESC, menu_code DESC
	LIMIT  4, 3 ;	-- 행 기준 첫 행은 0부터 시작한다(4행부터 3개)
	
	SELECT
		 menu_code
		,menu_name
		,menu_price
	FROM tbl_menu
	ORDER BY menu_price DESC, menu_code DESC
	LIMIT  5;
	-- 첫행은 굳이 0값 안 넣어줘도 자동으로 지정 개수만큼 나옴
	

	
