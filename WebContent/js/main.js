
$(document).ready(function(){



    $('.realtime-hot-list ul > li ').removeClass("open");
    $('.realtime-hot-list ul > li ').hover(function() {
        $(this).toggleClass("open");
    });

    // $('.today-hot .slider ul').slick({
      
    //     slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
    //     infinite : true, 	//무한 반복 옵션	 
    //     slidesToShow : 10,		// 한 화면에 보여질 컨텐츠 개수
    //     slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
    //     speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
    //     arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
    //     autoplay : true,			// 자동 스크롤 사용 여부
    //     autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
    //     pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
    //     draggable : true, 	//드래그 가능 여부 
        
    //     responsive: [ // 반응형 웹 구현 옵션
    //         {  
    //             breakpoint: 960, //화면 사이즈 960px
    //             settings: {
    //                 //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
    //                 slidesToShow:3 
    //             } 
    //         },
    //         { 
    //             breakpoint: 768, //화면 사이즈 768px
    //             settings: {	
    //                 //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
    //                 slidesToShow:2 
    //             } 
    //         }
    //     ]

    // });


    $('.slider-event').slick({
        slide: 'li',		//슬라이드 되어야 할 태그 ex) div, li 
        infinite : true, 	//무한 반복 옵션	 
        slidesToShow : 3,		// 한 화면에 보여질 컨텐츠 개수
        slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
        speed : 100,	 // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
        arrows : true, 		// 옆으로 이동하는 화살표 표시 여부
        autoplay : true,			// 자동 스크롤 사용 여부
        autoplaySpeed : 10000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
        pauseOnHover : true,		// 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
        draggable : true, 	//드래그 가능 여부 
        
        responsive: [ // 반응형 웹 구현 옵션
            {  
                breakpoint: 960, //화면 사이즈 960px
                settings: {
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:3 
                } 
            },
            { 
                breakpoint: 768, //화면 사이즈 768px
                settings: {	
                    //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
                    slidesToShow:2 
                } 
            }
        ]

    });
});