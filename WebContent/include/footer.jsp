<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<footer>
	<div class="footer-top">
		<div class="notice-wrap">
			<div class="notice-inner">
				<p><a href="/customer.asp?page=notice">공지사항</a></p>
				<div class="swiper-container notice">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<a href="/customer.asp?page=notice&num=112688&page2=view&pageNum=1">장르/만화 정액권 판매 종료 예정 안내<span>2020-10-27</span></a>
						</div>
						<div class="swiper-slide">
							<a href="/customer.asp?page=notice&num=112679&page2=view&pageNum=1">메리 미 (Marry Me)〉 적립금 지급 안내<span>2020-10-27</span></a>
						</div>						
					</div>
				</div>
				<div class="notice-control">
					<div class="notice-prev"></div>
					<div class="notice-next"></div>
				</div>
			</div>
		</div>
		<div class="cs-wrap">
			<div class="cs">
				<h4>고객센터</h4>
				<div>
					<p><span>대표번호</span>1588-1925</p>
					<p><span>운영시간</span>월~금 09:00 - 18:00 (점심시간 12:00 - 13:00) / 주말 및 공휴일 휴무</p>
				</div>
			</div>
			<div class="service">
				<h4>서비스</h4>
				<div>
					<p><a href="/b2b.asp">전자도서관</a></p>
					<p><a href="/customer.asp?page=viewer">앱 다운로드</a></p>
				</div>
			</div>
			<div class="short-cut">
				<h4>바로가기</h4>
				<div>
					<p><a href="/coupon.asp">쿠폰등록</a></p>
					<p><a href="https://www.898.tv/bookcube">원격 연결</a></p>
					<p><a href="/order/bookcash.asp">북캐시 충전</a></p>
					<p><a href="/mypage.asp?list=_main">마이페이지</a></p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer-inner">
		<ul class="f-lnb">
			<li><a href="http://www.bookcubenetworks.co.kr">회사소개</a></li>
			<li><a href="/customer.asp?page=notice&num=24007&page2=view&pageNum=15">이용약관</a></li>
			<li><a href="/customer.asp?page=notice&num=24264&page2=view&pageNum=15">개인정보보호정책</a></li>
			<li><a href="/customer.asp?page=notice&num=104583&page2=view&pageNum=1">청소년보호정책</a></li>
			<li><a href="javascript:;" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=1138624199', 'bizCommPop', 'scrollbars=yes, width=750,height=700;')">사업자정보확인</a></li>
			<li><a href="/partner.asp">제휴문의</a></li>
			<li><a href="http://scm.bookcubenetworks.com">작가/출판사 전용메뉴</a></li>
		</ul>
		<div class="f-banner">
			<ul>
				<li><a href="https://play.google.com/store/apps/details?id=com.bookcube.bookplayer">구글플레이</a></li>
				<li><a href="https://itunes.apple.com/kr/app/bugkyubeu-naeseojae/id576288015?mt=8">앱스토어</a></li>
				<li><a href="javascript:;" onclick="pop.open('#so')">도서.공연비 소득공제 사업자</a></li>
				<li><a href="mailto:webmaster@bookcube.com"><span></span>이메일문의</a></li>
			</ul>
			<div class="so-pop blind" id="so">
				<div class="login-bg"></div>
				<div class="so">
					<img src="../images/so-img.png" alt="도서.공연비 소득공제 사업자 관련 이미지">
					<p>소득공제 대상 사업자 인증번호<br><span>312018060044</span></p>
					<button onclick="pop.close('#so')">닫기</button>
				</div>
			</div>
		</div>
		<address>
			<ul>
				<li>상호 : 주식회사 북큐브네트웍스</li>
				<li>대표이사 : 유철종</li>
				<li>주소 : 우)80380 서울 구로구 디지털로 33길 27, 삼성IT밸리 514호</li>
				<li>사업자 등록번호 : 113-86-24199</li>
				<li>통신판매업 신고번호 : 제 2008-서울구로-0747호</li>
				<li>개인정보 관리 책임자 : 남지원</li>
				<li>도서비 소득공제 대상 사업자 인증번호 : 312018060044</li>
				<li>E-mail : <a href="mailto:webmaster@bookcube.com">webmaster@bookcube.com</a></li>
				<li>전화 1588-1925</li>
			</ul>
		</address>
		<div class="copy-text">
			<p>Copyright © BOOKCUBENETWORKS Co.,Ltd. All Rights Reserved.</p>
			<img src="../images/site.png" alt='클린사이트' usemap="#cleanSite" />
			<map name="cleanSite">
				<area shape="RECT" coords="1,1,47,43" href="https://www.copyrightok.kr/" target="_blank" />
			</map>
		</div>
	</div>
</footer>
<div class="topBtn">
	<a href="javascript:;">TOP</a>
</div>
<script type="text/javascript">


// $(function () {
// 	for (var l = 0, e =( $(window).outerWidth(), $(".slider ul li").width()), i = $(".slider ul li").length, s = $(".slider ul li").width() * i, t = 0, r = "", f = i / 2, n = 0, a = 0, d = $(".hot-inner").offset().left, c = 0; c < i; c++) {
// 		var o = $(".slider ul li").eq(c).index();
// 		if (i % 2 == 1) {
// 			var u;
// 			o < (u = Math.ceil(f))
// 				? (n += e, $(".slider ul li").eq(o).css("left", n + (s / 2 - e / 2) - e))
// 				: o >= u && (a += e, $(".slider ul li").eq(o).css("left", a - e))
// 		} else 
// 			o < f
// 				? (n += e, $(".slider ul li").eq(o).css("left", n + s / 2 - e))
// 				: (a += e, $(".slider ul li").eq(o).css("left", a - e))
		
// 	}
// 	i % 2 == 1
// 		? $(".slider ul").css({
// 			width: s,
// 			left: - s / 2 + e / 2 + d
// 		})
// 		: $(".slider ul").css({
// 			width: s,
// 			left: - s / 2 + d
// 		});
// 	for (c = 1; c <= i; c++) 
// 		r += "<a href='javascript:;'>" + c + "</a>",
// 		$(".paging").html(r);
	
// 	var h = $(".paging a").length;
// 	$(".paging a:first").addClass("on"),
// 	$(".next").on("click", function (i) {
// 		Math.abs(t - $.now()) > 300 && (t = $.now(), l ++, $(".slider ul li").each(function () {
// 			var l = $(this).css("left");
// 			l <= "0px"
// 				? $(this).stop().animate({
// 					left: s - e
// 				}, 0)
// 				: $(this).stop().animate({
// 					left: "-=" + e + "px"
// 				}, 300)
// 		}), l > h - 1 && (l = 0))
// 	}),
// 	$(".prev").on("click", function (i) {
// 		Math.abs(t - $.now()) > 300 && (t = $.now(), l --, $(".slider ul li").each(function () {
// 			var l = $(this).css("left");
// 			l == s - e + "px"
// 				? $(this).stop().animate({
// 					left: 0
// 				}, 0)
// 				: $(this).stop().animate({
// 					left: "+=" + e + "px"
// 				}, 300)
// 		}), l < 0 && (l = h - 1))
// 	}),
// 	$(window).resize(function () {
// 		for (var l = $(".hot-inner").offset().left, t = 0, r = 0, n = 0; n < i; n++) {
// 			var a = $(".slider ul li").eq(n).index();
// 			if (i % 2 == 1) {
// 				var d;
// 				a < (d = Math.ceil(f))
// 					? (t += e, $(".slider ul li").eq(a).css("left", t + (s / 2 - e / 2) - e))
// 					: a >= d && (r += e, $(".slider ul li").eq(a).css("left", r - e))
// 			} else 
// 				a < f
// 					? (t += e, $(".slider ul li").eq(a).css("left", t + s / 2 - e))
// 					: (r += e, $(".slider ul li").eq(a).css("left", r - e))
			
// 		}
// 		i % 2 == 1
// 			? $(".slider ul").css({
// 				width: s,
// 				left: - s / 2 + e / 2 + l
// 			})
// 			: $(".slider ul").css({
// 				width: s,
// 				left: - s / 2 + l
// 			})
// 	})
// });
</script>
<script>
$(function(){
//탑버튼
	var top_left = $(".footer-inner").offset().left + $(".footer-inner").width();
	$(".topBtn").css({
		"left" : top_left + 20
	});
	$(".topBtn").on("click",function(){
		$("html,body").animate({
			scrollTop : 0
		},100); 
	});	
	var noticeSwiper = new Swiper('.notice',{
		direction: 'vertical',
		autoplay: {
			delay: 3000,
			disableOnInteraction: false
		},
		navigation: {
			nextEl: '.notice-next',
			prevEl: '.notice-prev'
		}
	});
});
//팝업
var $pop = null;
var pop = {
	open : function(item){
		$pop = $(item);
		$pop.removeClass("blind");
	},
	close :function(item){
		$pop = $(item);
		$pop.addClass("blind");
	}
}
</script>
		<script>
			$(function(){
				var page = $(".wrap").data("page");
				var web_class = $(".wrap").data("web-class");

				$.post('/data/_teaser_banner.asp', {page : page, site : 'book'}, function(data){

					var item = '';
					
					if(data && $.cookie("ts"+ data.teaser_num) != "done"){
						item = '<div class="head_banner">'+
							'<div class="h_banner_inner">'+
								'<img src="https://up.bookcube.com/bookcube/upload/event/'+ data.teaser_num + '/' + data.banner_file_name +'" usemap="#teaser_'+ data.teaser_num +'" />'+
								'<img src="../images/bannerClose.png" alt="배너닫기" class="bannerClose" />'+
							'</div>'+
							'<map name="teaser_'+ data.teaser_num +'"><area shape="rect" coords="0,0,450,80" href="'+ data.left_url +'" /><area shape="rect" coords="450,0,900,80" href="'+ data.right_url +'" /></map>'+
						'</div>';

						$('.header').prepend(item);

						$('.head_banner').css('background-color', '#'+data.background_color);

						$('.h_banner_inner .bannerClose').on('click', function(){
							$.cookie('ts'+data.teaser_num, 'done', { path : '/', expires : 1});
							$(".head_banner").slideUp(200);
							$('.head_banner').remove();
						});
					}
				}, "json");
				
				
			// 	//메인 이벤트
			// 	$.post("/main/_main_event.asp", {main_yn : "Y", under_yn : "0", web_class : web_class, page : page}, function(data){					
			// 		$(".main_event").html(data);
			// 		$(".main_event .mds-banner").css({
			// 			"height":"153px","overflow":"hidden"
			// 		});
			// 		$(".main_event .mds-banner").slick({slidesToShow: 3,slidesToScroll: 1,infinite: true});
			// 		$(".main_event .mds-banner").css({
			// 			"height":"auto","overflow":"visible"
			// 		});
			// 	}, "html");	

			// 	$.post("/main/_main_real_time.asp", {product : "book", page : page}, function(data){					
			// 		$(".main_real_time").html(data);
			// 	}, "html");

			// 	$.post("/main/_ct_best.asp", {page : page}, function(data){					
			// 		$(".main_ct_best").html(data);
			// 	}, "html");				

			// 	//전자책 Best5
			// 	$.post("/main/_best_book.asp", {page : page}, function(data){					
			// 		$(".main_best_book").html(data);					
			// 	}, "html");	
			// 	//신간 전자책
			// 	$.post("/main/_new_book.asp", {page : page}, function(data){					
			// 		$(".main_new_book").html(data);					
			// 	}, "html");	
			// 	//매인 배너
			// 	$.post("/main/_main_event.asp", {main_yn : "Y", under_yn : "1", web_class : web_class, page : page}, function(data){								
			// 		$(".main_banner").html(data);
			// 		$(".main_banner .mds-banner").css({
			// 			"height":"153px","overflow":"hidden"
			// 		});
			// 		$(".main_banner .mds-banner").slick({slidesToShow: 3,slidesToScroll: 1,infinite: true});
			// 		$(".main_banner .mds-banner").css({
			// 			"height":"auto","overflow":"visible"
			// 		});				
			// 	}, "html");	
			// 	//추천 전자책
			// 	$.post("/main/_recommend_book.asp", {page : page}, function(data){					
			// 		$(".main_recommend_book").html(data);
			// 		$(".main_recommend_book").find(".mds").each(function(){
			// 			$(this).slick({slidesToShow: 5,slidesToScroll: 1,	infinite: true});
			// 		});
			// 	}, "html");	
				
			// 	//무료 전자책
			// 	$.post("/main/_free_book.asp", {page : page}, function(data){					
			// 		$(".main_free_book").html(data);						
			// 	}, "html");			

			// 	//웹소설 베스트
			// 	$.post("/main/_best_novel.asp", {page : page}, function(data){					
			// 		$(".main_best_novel").html(data);						
			// 	}, "html");	

			// 	//웹소설 기다무
			// 	$.post("/main/_gidamu_novel.asp", {page : page}, function(data){					
			// 		$(".main_gidamu_novel").html(data);						
			// 	}, "html");

			// 	//웹소설 시즌제
			// 	$.post("/main/_season_novel.asp", {page : page}, function(data){					
			// 		$(".main_season_novel").html(data);						
			// 	}, "html");

			// 	//웹툰 베스트50
			// 	$.post("/main/_best_toon.asp", {page : page}, function(data){					
			// 		$(".main_best_toon").html(data);						
			// 	}, "html");							
			// });

		</script>

		
	</div>	
</body>
</html>