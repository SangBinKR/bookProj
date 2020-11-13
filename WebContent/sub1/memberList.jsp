<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp"/>
<section class="sub">
    <div class="category-nav">
        <div class="category-nav-inner">
            <p>HOME > 고객관리</p>
        </div>
    </div>
    <div class="contents-wrap">
        <div class="customer">
            <h3 class="coTitle">고객관리</h3>
<!--             <div class="customer-top-menu"> -->
<!--                 <ul> -->
<!--                     <li><a href="../sub5/faq.jsp" class=""><em>FAQ</em></a></li> -->
<!--                     <li><a href="../sub5/notice.jsp" class=""><em>공지사항</em></a></li> -->
<!--                     <li><a href="../sub5/service.jsp" class=""><em>서비스 안내</em></a></li> -->
<!--                     <li><a href="../sub5/one.jsp" class=""><em>1:1문의</em></a></li> -->
<!--                 </ul> -->
<!--             </div> -->
            <div class="customer-contents">
                <div class="customer-inner">
                    <table summary="공지사항" class="customer-table notice">
                        <caption>공지사항</caption>
                        <colgroup>
<!--                             <col width="85%"> -->
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" abbr="아이디">아이디</th>
                                <th scope="col" abbr="비밀번호">비밀번호</th>
                                <th scope="col" abbr="이름">이름</th>
                                <th scope="col" abbr="이메일">이메일</th>
                                <th scope="col" abbr="주민등록번호">주민등록번호</th>
                                <th scope="col" abbr="가입일">가입일</th>
                                <th scope="col" abbr="주소">주소</th>
                                <th scope="col" abbr="선호장르">선호장르</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="col" abbr="아이디">momo7777</th>
                                <th scope="col" abbr="비밀번호">7777</th>
                                <th scope="col" abbr="이름">모모</th>
                                <th scope="col" abbr="이메일">momo@puddle.com</th>
                                <th scope="col" abbr="생년월일">160823</th>
                                <th scope="col" abbr="가입일">201225</th>
                                <th scope="col" abbr="주소">가가가가가가가가가가가가</th>
                                <th scope="col" abbr="선호장르">문학</th>
                            </tr>
                            <!-- 				<tr> -->
                            <!-- 					<td><a href="/customer.asp?page=notice&num=112679&page2=view&pageNum=1">&lt;메리 미 (Marry Me)&gt; 적립금 지급 안내</a></td> -->
                            <!-- 					<td>2020/10/27</td> -->
                            <!-- 				</tr> -->
                        </tbody>
                    </table>
                    <div class="paging">
                        <a href="/customer.asp?page=notice&pageNum=1" class="arr" data-page-num="1"><img src="../images/p-first.png"><span class="hide">처음페이지</span></a>
                        <a href="/customer.asp?page=notice&pageNum=1" class="arr prev" data-page-num="1"><img src="../images/p-prev.png"><span class="hide">이전페이지</span></a>
                        <a href="/customer.asp?page=notice&pageNum=1" class="on fir" data-page-num="1">1</a>
                        <!-- 	<a href="/customer.asp?page=notice&pageNum=2" class="" data-page-num="2">2</a><a href="/customer.asp?page=notice&pageNum=3" class="" data-page-num="3">3</a><a href="/customer.asp?page=notice&pageNum=4" class="" data-page-num="4">4</a><a href="/customer.asp?page=notice&pageNum=5" class="" data-page-num="5">5</a><a href="/customer.asp?page=notice&pageNum=6" class="" data-page-num="6">6</a><a href="/customer.asp?page=notice&pageNum=7" class="" data-page-num="7">7</a><a href="/customer.asp?page=notice&pageNum=8" class="" data-page-num="8">8</a><a href="/customer.asp?page=notice&pageNum=9" class="" data-page-num="9">9</a><a href="/customer.asp?page=notice&pageNum=10" class="" data-page-num="10">10</a> -->
                        <a href="/customer.asp?page=notice&pageNum=11" class="arr next" data-page-num="11">
                            <img src="../images/p-next.png"><span class="hide">다음페이지</span></a>
                        <a href="/customer.asp?page=notice&pageNum=27" class="arr" data-page-num="27"><img src="../images/p-last.png"><span class="hide">마지막페이지</span></a>
                    </div>
                </div>
            </div>

        </div>
    </div>

</section>
<jsp:include page="../include/footer.jsp"/>