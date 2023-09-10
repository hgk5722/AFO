<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>webtoonPoster</title>


<!-- 웹툰 포스터 크기 조절 css -->
<link rel="stylesheet" type="text/css" href="fix/WebtoonCSS.css">

<!-- 텍스트 데코레이션 css -->
<link rel="stylesheet" type="text/css" href="fix/text_decoration.css">

<!-- 슬릭 css -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<!-- 슬릭 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- 슬릭 js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<!-- 폰트 어썸 cdn -->
<script src="https://kit.fontawesome.com/f727c89db8.js" crossorigin="anonymous"></script>



<script> 
	$(function()	{
		$('.mainSlide').slick({
			slidesToShow: 7,
			slidesToScroll: 7,
			arrows: true,
			prevArrow: "<i class='white prev_arrow fa-solid fa-circle-chevron-left' ></i>",
			nextArrow: "<i class='white next_arrow fa-solid fa-circle-chevron-right' ></i>",
		//	nextArrow: "<i class='next_arrow bi bi-arrow-right-circle' style='color: #9932CC'></i>",
			
		});
	}); 
</script>

</head>
<body>
	
	<h4> <b> 네이버 웹툰 top 10 </b> </h4>
	
	<div class="mainSlide model1">
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/758037/thumbnail/thumbnail_IMAG21_15cb2611-34c0-4f02-a689-41d0b1016579.jpg"> <b> 1. 참교육 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/783053/thumbnail/thumbnail_IMAG21_d7732f14-26da-4e35-8762-660cc87b53f1.jpg"> <b> 2. 김부장 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/783769/thumbnail/thumbnail_IMAG21_fc14e4e2-e62f-4d77-8f46-9fb05cffa77a.jpeg"> <b> 3. 내 남편과 결혼해줘 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/800770/thumbnail/thumbnail_IMAG21_d2e1e7ee-fc83-4030-a1e7-200378bc088f.jpg"> <b> 4. 재벌집 막내아들 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/641253/thumbnail/thumbnail_IMAG21_01672165-03c8-44b1-ba0e-ef82c9cfcd10.jpg"> <b> 5. 외모 지상주의 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/792651/thumbnail/thumbnail_IMAG21_218f18ef-7f68-4d6a-972c-686a3e9f6138.jpg"> <b> 6. 99강화 나무몽둥이 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/710751/thumbnail/thumbnail_IMAG21_53aefc06-6bdf-40fb-93ac-fab7242146c6.jpg"> <b> 7. 약한영웅 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/648419/thumbnail/thumbnail_IMAG21_d9398229-cbfd-47dc-9208-0a6fb936f3a7.jpg"> <b> 8. 뷰티풀 군바리 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/790713/thumbnail/thumbnail_IMAG21_3919364435331003700.jpg"> <b> 9. 대학원 탈출일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/747269/thumbnail/thumbnail_IMAG21_3546074950629798755.jpg"> <b> 10. 전지적 독자시점 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802293/thumbnail/thumbnail_IMAG21_6cc3de68-f527-461a-af8f-7edfaf08da91.jpg"> <b> 11. 앞집나리 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/790713/thumbnail/thumbnail_IMAG21_3919364435331003700.jpg"> <b> 12. 대학원 탈출일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/650305/thumbnail/thumbnail_IMAG21_3631086797392995425.jpg"> <b> 13. 호랑이 형님 </b></div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/736277/thumbnail/thumbnail_IMAG21_bbbe3f76-021e-4dbc-830a-4358c1abec0c.jpg"> <b>14. 싸움독학</b> </div>
	  
	</div> <br><br>
	
	<h4> <b> 카카오 웹툰 top 10 </b> </h4>
	
	<div class="mainSlide model1">
	
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=b1CpZv/hzR1XBXR9T/eWpzRh5rpDALaFvFbZxj8k&filename=th3"> <b> 1. 마왕의 아이로 살아남는법 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=ebozDf/hzHNAwSqdT/2HAxbAwM0Iw0BUBzPG0rK0&filename=th3"> <b> 2. SSS급 랭커 회귀하다 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bTImA9/hyoXCAmkXD/suWmnR6VHMQEd9DfPzM0Z0&filename=th3"> <b> 3. 시그리드 </b> </div>
	  <div> <img src="https://dn-img-page.kakao.com/download/resource?kid=cu5bvo/hzHNAXhYwy/TKOdofVqKShuPy0jIojTF1&filename=th3"> <b> 4. 레벨업 못하는 플레이어 </b> </div>
	  <div> <img src="https://dn-img-page.kakao.com/download/resource?kid=7c05H/hzHNFEilWI/Bs03FBTYKvUCc535kcfeI1&filename=th3"> <b> 5. 화산전생 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=TjuEz/hyZIeJUt8T/HW0fLO5KIo7TP8EbiBKO6k&filename=th3"> <b> 6. 만년만에 귀환한 플레이어 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bP1HWh/hzCtgcJWhL/gpES6MXljHbdeBlLngHkzK&filename=th3"> <b> 7. 도굴왕 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bD1LGs/hzCs7UpBcn/HSZHER816gq1L6JzwAlskK&filename=th3"> <b> 8. 갓 오브 블랙필드 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=cbo33w/hzCs9Ltbjw/9tdJV8YSdJAy9ckwJflzh0&filename=th3"> <b> 9. 검술명가 막내아들  </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=xdxFA/hzMUbZHhzD/61B2AtUMkqBLw8yFsNKDdK&filename=th3"> <b> 10. 샤크 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=coW1YE/hzHNAbUPkI/8aYVBE3GBJ0zC29wjG5Y21&filename=th3"> <b> 11. 템빨 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bSMe8i/hynaymdPoy/xSDAKKm1ZwLleZADMU9570&filename=th3"> <b> 12. 주인공 옆에 붙어만 있겠습니다 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=5z9Rj/hzCtaKnsiO/E8RIR8oaCc5VgGHNUz96s0&filename=th3"> <b> 13. 이번 생은 가주가 되겠습니다 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bw6ltF/hyZIdripN5/xPN1ZxEiNlZg9KdZpC3q2K&filename=th3"> <b> 14. 마이 페어 메이드 </b> </div>
	  
	</div> <br><br>
	

	<h4> <b> 네이버 최신 완결 </b> </h4>
	
	<div class="mainSlide model1">
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/803515/thumbnail/thumbnail_IMAG10_f87a8131-da3d-4f70-a15b-bf4e076e3ce2.jpg"> <b> 1. 전여친 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/748105/thumbnail/thumbnail_IMAG10_becd3e24-cc09-4243-a1c9-646270f4a8db.jpg"> <b> 2. 독립일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/785812/thumbnail/thumbnail_IMAG10_40dd9eb6-2d73-4ddc-aa1a-67c6d42647e6.jpg"> <b> 3. 구해줘, 호구 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/783526/thumbnail/thumbnail_IMAG10_c53a98d6-163e-4dca-8675-7266f47efac8.jpg"> <b> 4. 혁명 뒤 공주는 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/769987/thumbnail/thumbnail_IMAG10_434658ce-7ea8-496c-a421-4c02cdb37ab6.jpg"> <b> 5. 하in세인 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/803216/thumbnail/thumbnail_IMAG10_40590c34-015f-4ef0-8f75-c998ab76122d.jpg"> <b> 6. 리트라이 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/767979/thumbnail/thumbnail_IMAG10_9825a874-1e45-4d0c-8637-e9c1345085dd.jpg"> <b> 7. 그림자신부 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/648419/thumbnail/thumbnail_IMAG21_d9398229-cbfd-47dc-9208-0a6fb936f3a7.jpg"> <b> 8. 뷰티풀 군바리 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/790713/thumbnail/thumbnail_IMAG21_3919364435331003700.jpg"> <b> 9. 대학원 탈출일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/747269/thumbnail/thumbnail_IMAG21_3546074950629798755.jpg"> <b> 10. 전지적 독자시점 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802293/thumbnail/thumbnail_IMAG21_6cc3de68-f527-461a-af8f-7edfaf08da91.jpg"> <b> 11. 앞집나리 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/790713/thumbnail/thumbnail_IMAG21_3919364435331003700.jpg"> <b> 12. 대학원 탈출일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/650305/thumbnail/thumbnail_IMAG21_3631086797392995425.jpg"> <b> 13. 호랑이 형님 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/736277/thumbnail/thumbnail_IMAG21_bbbe3f76-021e-4dbc-830a-4358c1abec0c.jpg"> <b> 14. 싸움독학 </b> </div> 
	</div> <br><br>
	
	
	<h4> <b> 카카오 최신 완결 </b> </h4>
	
	<div class="mainSlide model1">
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bP3T2e/hzCs69eYia/6Rtmte95TbO4KCT0rMEtY1&filename=th3"> <b> 1. 	경이로운 소문 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bxmViM/hzMT6xF4Bk/pzoOsx4JuUW4M7Acy9DWwK&filename=th3"> <b> 2. 지금은 37.2도  </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bSZtcK/hzHNwHlXSK/k2Nqkc2zBTz9FVHiHnUaIK&filename=th3"> <b> 3. 그녀가 공작저로 가야 했던 사정 </b></div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=b19Uvf/hzHNDT0T8A/VHl3rn7KItXubpC66w665k&filename=th3"> <B> 4. 마검왕 </B></div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bHlfDw/hzHNuW4wQa/YUAp7HasWJJg2JY3b3Bmlk&filename=th3"> <b> 5. 사내맞선 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bvBF3g/hzCtfkNwAA/1Hn4L2Cgkp1bGIzhkLrpNk&filename=th3"> <B> 6. 신이라 불리운 사나이 </B> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=dIVGvU/hyoXxsle1G/91yp9OmmL8ais776SHsgh1&filename=th3"> <b> 7. 장강삼협 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=OAKlS/hzHNzqxLm2/44cLcCSYaTUBq7nY5qepTK&filename=th3"> <b> 8. 이미테이션 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=6O67E/hzR1SUEOCU/pj3HRU16EKK0XxPsKfVKFK&filename=th3"> <b> 9. 태극마선 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=732xr/hzHNFEu7wV/EzNrNBYpD7jlBNVm3zlE81&filename=th3"> <b> 10. 사랑스러운 복희씨 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bRwGWJ/hzHNEyPzkH/Kh3Z9g0CvrKI8zawzwxAKK&filename=th3"> <b> 11. 신들의 연애사정 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=SH3NP/hzCtap3A5R/dQV1TrKEChQRrb7x5R1dEK&filename=th3"> <b> 12. 블랙윈터 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=6xXGt/hzHND7KCTn/jLIrPAMbwDUZG7Nor8aNGK&filename=th3"> <b> 13. 애신록 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=bG3LQk/hzCtgqghGe/2kqlfYsEx1MbMs28O0GKfK&filename=th3"> <b> 14. 괴 </b> </div>
	  <div><img src="https://dn-img-page.kakao.com/download/resource?kid=gNz9x/hzCs8MyZtl/ZzYNc4N126sGhH1M1C4cU0&filename=th3"> <b> 15. 괴물 공작가의 계약 공 </b> </div>
	</div> <br><br>
	
	<h4> <b> #로맨스 top 10 </b> </h4>
	
	<div class="mainSlide model1">
	
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/796867/thumbnail/thumbnail_IMAG06_9f5034ff-87f2-4a04-8b50-211ea583ca25.jpg"> <b> 1. 버림받은 왕녀의 은밀한 침실 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802854/thumbnail/thumbnail_IMAG06_33a73d3e-0ab8-4700-8b75-7df4a71ce7ce.jpg"> <b> 2. 주작연애 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/772725/thumbnail/thumbnail_IMAG06_edbdd32d-63ad-41c8-90c4-99144eab4d28.jpg"> <b> 3. 물어보는사이 </b> </div>
	  <div> <img src="https://shared-comic.pstatic.net/thumb/webtoon/785253/thumbnail/thumbnail_IMAG06_1adf3d49-c3b7-4eec-8c89-88ae2cf6d022.jpg"> <b> 4. 이별 후 사내결혼 </b> </div>
	  <div> <img src="https://shared-comic.pstatic.net/thumb/webtoon/794421/thumbnail/thumbnail_IMAG06_bfc5292e-28d4-4853-afb5-9855faaaab1f.jpg"> <b> 5. 북부 공작님을 유혹하겠습니다 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/774040/thumbnail/thumbnail_IMAG06_84f0d820-4cb7-4bf4-9599-3cbc3d4f901c.jpg"> <b> 6. 또 다시, 계약부부 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/761461/thumbnail/thumbnail_IMAG06_6f90f5a2-6302-4bdd-a11a-963d6409c909.jpg"> <b> 7. 순정말고 순종 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/758671/thumbnail/thumbnail_IMAG06_4b6f1c63-d757-4923-96ac-11671c52fe0b.jpg"> <b> 8. 황제와의 하룻밤 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/780414/thumbnail/thumbnail_IMAG06_dbb7983b-9c90-439a-a23e-2e2b0beae46b.jpg"> <b> 9. 오빠집이 비어서  </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802551/thumbnail/thumbnail_IMAG06_3b3f6143-9c39-4f1d-9690-0abfc02af299.jpg"> <b> 10. 너를 돌려차는 방법 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/793274/thumbnail/thumbnail_IMAG06_4ec5c6a8-9aab-44f1-96fb-61d2906b019e.jpg"> <b> 11. 다시쓰는 연애사 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/803123/thumbnail/thumbnail_IMAG06_f7703515-e614-4ef6-8bc6-4991fd3ff6c0.jpg"> <b> 12. 연애 연기대상 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/780881/thumbnail/thumbnail_IMAG06_cdb438ed-80b9-42da-a76c-508ebcc23367.jpg"> <b> 13. 이제야 연애 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/774703/thumbnail/thumbnail_IMAG06_75212403-29f9-4557-9ba6-d184ca661f0f.jpg"> <b> 14. 아, 쫌 참으세요 영주님! </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802033/thumbnail/thumbnail_IMAG06_9d2fc492-e9ef-40ef-8331-600c6ce2e242.jpg"> <b> 15. 집사, 주세요! </b> </div>
	  
	</div> <br><br>

	
	<h4> <b> #판타지 top 10 </b> </h4>
	<div class="mainSlide model1">
	
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/792651/thumbnail/thumbnail_IMAG06_b1124af5-136c-4e18-92f6-5eaab276413e.jpg"> <b> 1. 99강화 나무몽둥이 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/747269/thumbnail/thumbnail_IMAG06_baed4a4a-c499-419e-a48e-26d360b07b31.jpg"> <b> 2. 전지적 독자 시점 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/650305/thumbnail/thumbnail_IMAG06_edfcb1ac-e979-4c45-8341-ef1dd37140d1.jpg"> <b> 3. 호랑이형님 </b> </div>
	  <div> <img src="https://shared-comic.pstatic.net/thumb/webtoon/773797/thumbnail/thumbnail_IMAG06_db977436-48b9-4abb-aa97-9cda3fb92a2b.jpg"> <b> 4. 나 혼자 만렙 뉴비 </b> </div>
	  <div> <img src="https://shared-comic.pstatic.net/thumb/webtoon/784248/thumbnail/thumbnail_IMAG06_6436849f-a76f-40c0-a2b3-10cec58d320b.jpg"> <b> 5. 내가 키운 S급들 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/727188/thumbnail/thumbnail_IMAG06_4a4c50d8-3bc0-4cb8-93bd-a05fb1ef1b3c.jpg"> <b> 6. 취사병 전설이 되다 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/777767/thumbnail/thumbnail_IMAG06_43be643d-73fc-49a0-a06d-7c184340fc7a.jpg"> <b> 7. 역대급 영지 설계사 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/739115/thumbnail/thumbnail_IMAG06_7b590828-5c9b-4b6e-879d-508c4149a636.jpg"> <b> 8. 앵무살수 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/783056/thumbnail/thumbnail_IMAG06_ed609c02-ee2b-4b35-9d91-8ca8aa1cafc9.jpg"> <b> 9. 여고생 드래곤  </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/753478/thumbnail/thumbnail_IMAG06_875fed07-1422-4f84-9ac4-02a5ec346b99.jpg"> <b> 10. 데드퀸 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/789979/thumbnail/thumbnail_IMAG06_885a1736-26cf-4db2-b3b0-d4e7d525aeed.jpg"> <b> 11. 멸망 이후의 세계 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/775141/thumbnail/thumbnail_IMAG06_b5577133-5d02-4a11-a2bc-3614a8582662.jpg"> <b> 12. 66666년만에 환생한 흑마술사 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/795297/thumbnail/thumbnail_IMAG06_9d37dbef-c5fb-4589-b81f-450d8b47143b.jpg"> <b> 13. 신화급 귀속 아이템을 속에 넣었다 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/768536/thumbnail/thumbnail_IMAG06_765766ec-c5b9-4f41-a415-1b849189df86.jpg"> <b> 14. 잔불의 기사 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/796827/thumbnail/thumbnail_IMAG06_711d76ed-5847-4f91-815d-96f2537762e0.jpg"> <b> 15. 회귀한 천재 헌터의 슬기로운 청소생활 </b> </div>
	  
	</div> <br><br>
	
	<h4> <b> #코미디 top 10 </b> </h4>
	
	<div class="mainSlide model1">
	
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/796152/thumbnail/thumbnail_IMAG06_bbcc406c-1158-4a57-b4bf-8aee5dec9bab.jpg"> <b> 1. 마루는 강쥐 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/801589/thumbnail/thumbnail_IMAG06_000dc2bf-65c0-4697-99f3-15f8feff7ace.jpg"> <b> 2. 놓치마 정신줄 시즌3 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/800312/thumbnail/thumbnail_IMAG06_5933fe2f-8bbf-4d43-80e6-5d7c6e45780d.jpg"> <b> 3. 이십팔세기 광팬 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/769658/thumbnail/thumbnail_IMAG06_ad637698-f207-44a6-a024-d77e02713f91.jpg"> <b> 4. 경자 전성시대 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/671421/thumbnail/thumbnail_IMAG06_721a56be-3949-459c-bb82-1c0efd7bdd90.jpg"> <b> 5. 언덕 위의 제임스 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/734574/thumbnail/thumbnail_IMAG06_97808e35-2268-427a-8bac-3672b95c8375.jpg"> <b> 6. 영앤리치가 아니야! </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/800291/thumbnail/thumbnail_IMAG06_3e4da62d-f4e0-47e0-a060-81da57b72328.jpg"> <b> 7. 여자를 사귀고 싶다 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/732036/thumbnail/thumbnail_IMAG06_96842149-9b75-42ee-b755-1e8759c6f0e2.jpg"> <b> 8. 후덜덜덜 남극전자 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/103759/thumbnail/title_thumbnail_20091130121313_t125x101.jpg"> <b> 9. 이말년씨리즈  </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/798100/thumbnail/thumbnail_IMAG06_5af3abc0-ebd1-406f-af06-762eb2503b8d.jpg
	  "> <b> 10. 쿠쿠쿠쿠 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/728015/thumbnail/thumbnail_IMAG06_e8645b88-7acd-45d4-923d-a295a8752c35.jpg"> <b> 11. 묘조의 일기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/776656/thumbnail/thumbnail_IMAG06_ad47830f-86fc-464f-bbae-fdcbb0ec422a.jpg"> <b> 12. 최면학교 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/743031/thumbnail/thumbnail_IMAG06_447552b5-2d9b-4eb8-ab5a-27de4660157d.jpg"> <b> 13. 사장님을 잠금해제 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/20853/thumbnail/thumbnail_IMAG06_89061d8c-e491-42f1-8c15-40932e5eb939.jpg"> <b> 14. 마음의 소리 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/697680/thumbnail/thumbnail_IMAG06_f1bf8957-012d-424a-9149-1fd09e98e237.jpg"> <b> 15. 선천적 얼간이들 </b> </div>
	  
	</div> <br><br>
	
	<h4> <b> #스릴러 top 10 </b> </h4>
	
	<div class="mainSlide model1">
	
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/795262/thumbnail/thumbnail_IMAG06_138297d3-8309-461d-9875-b5ce4fc0625e.jpg"> <b> 1. 사형소년 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/774866/thumbnail/thumbnail_IMAG06_49567633-6b6b-49c2-a341-df6766601be9.jpg"> <b> 2. 똑 닮은 딸 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/801035/thumbnail/thumbnail_IMAG06_82abd934-71f5-4bd1-ab9c-f4f0515d07b9.jpg"> <b> 3. 퍼니게임 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/802389/thumbnail/thumbnail_IMAG06_3ff7caef-2602-4938-a611-b1d155d4041b.jpg"> <b> 4. 궤짝 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/793283/thumbnail/thumbnail_IMAG06_3086b438-8d78-471a-9a05-eefe43ccf2af.jpg"> <b> 5. 악몽의 형상 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/725829/thumbnail/thumbnail_IMAG06_e610b788-2850-4497-9d99-4d1b8e303461.jpg"> <b> 6. 아도나이 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/742105/thumbnail/thumbnail_IMAG06_b35bce4e-5fe4-457e-badc-1393b04b3fbb.jpg"> <b> 7. 미래의 골동품 가게 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/804783/thumbnail/thumbnail_IMAG06_810c4f4f-9f7f-4911-9510-ffde07408df2.jpg"> <b> 8. 사변괴담 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/804055/thumbnail/thumbnail_IMAG06_e951c53c-7279-44c6-ac9e-db65a5f11bca.jpg"> <b> 9. 아포크리파  </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/698918/thumbnail/thumbnail_IMAG06_1638d308-afb2-496c-ae15-161472551ed9.jpg"> <b> 10. 원주민 공포만화 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/789434/thumbnail/thumbnail_IMAG06_1dba03ba-8e1e-4536-a38c-f2e2116ef070.jpg"> <b> 11. 베스트 프렌드 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/801555/thumbnail/thumbnail_IMAG06_4ad54b95-e747-407f-9cb7-be0761be53ba.jpg"> <b> 12. 언다잉 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/758666/thumbnail/thumbnail_IMAG06_5a0ffbf7-e215-401f-8e26-06f4af9b49ab.jpg"> <b> 13. 꼬리잡기 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/804145/thumbnail/thumbnail_IMAG06_5c992eba-f774-4e10-90de-5174a3158cc7.jpg"> <b> 14. 에브리띵 이즈 마인 </b> </div>
	  <div><img src="https://shared-comic.pstatic.net/thumb/webtoon/801324/thumbnail/thumbnail_IMAG06_6d986569-f4de-4ef2-8fb0-cabd76be5eb0.jpg"> <b> 15. 민간인 통제구역 - 일급기밀 </b> </div>
	  
	</div> <br><br>
	
</body>
</html>