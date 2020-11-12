<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../include/header.jsp"/>
<section class="sub">
    <div class="category-nav">
        <div class="category-nav-inner">
            <p>HOME > 자유게시판</p>
        </div>
    </div>
    <div class="contents-wrap">
        <div class="customer">
            <h3 class="coTitle">자유게시판</h3>
            <div class="customer-top-menu">
                <ul>
                    <li><a href="../sub2/free_board.jsp" class=""><em>자유게시판</em></a></li>
                    <li><a href="../sub2/book_apl.jsp" class=""><em>도서신청</em></a></li>
                </ul>
            </div>
            <div class="customer-contents">
                <div class="customer-inner">
                    <table summary="공지사항" class="customer-table notice">
                        <caption>자유게시판</caption>
                        <colgroup>
                            <col width="75%">
                            <col width="10%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="col" abbr="제목">제목</th>
                                <th scope="col" abbr="등록일">작성자</th>
                                <th scope="col" abbr="등록일">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><a href="notice_view.jsp">장르/만화 정액권 판매 종료 예정 안내</a></td>
                                <td>master</td>
                                <td>2020/10/27</td>
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