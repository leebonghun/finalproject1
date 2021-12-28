<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/noticeList.css" />
<div class="container">
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/notice1.jpg" style="height: 60px;" /> 공지사항
		</h2>            
	</div>	
  	<div id="content" >        
       	<div class="sub_tit ">     		
         		
       		<p> ※ 영화관 내에서 발생하는 전반적인 공지사항에 대해 제공해 드립니다.</p>
     	
    		<!-- content title : e-->
    		<div id="txt">
				<ul class="tab_menu">
					<li style="width: 28.5%;"><a href="/movie/index" class="on" 
					       onclick="scEventListener.fnList('');return false;">전체</a></li>
					<li style="width: 28.5%;"><a href="/movie/index"  
					        onclick="scEventListener.fnList('001');return false;">BBM 공지</a></li>
					<li style="width: 28.5%;"><a href="/movie/index"  
					        onclick="scEventListener.fnList('002');return false;">코로나 19</a></li>
		  		</ul>
			</div>
		</div>	
	</div>
</div>
<form id="frm" name="frm" action="/news/notice/noticeList.do" method="post">
	<input type="hidden" name="pageIndex" id="pageIndex" value="1" />
    <input id="searchDivCd" name="searchDivCd" type="hidden" value=""/>
    <input id="bbs_id" name="bbs_id" type="hidden" value="9"/>
	<div class="board_search">
    	<fieldset>
            <span class="search">
            	<label for="searchField" class="hide">검색조건 선택</label>
            	<select id="searchField" name="searchField" class="sch_sel">
            		<option value="3">전체</option>
            		<option value="1">제목</option>
            		<option value="2">내용</option>
            	</select>
            	<span class="sch_tbox">
            		<label for="searchText" class="hide">검색어 입력</label>
                	<input id="searchText" name="searchText" class="sch_txt" title="검색어입력" onkeypress="pressSchTxt(event)" type="text" value=""/>
                </span>
                <button type="button" class="btn sch" onclick="fnSelectInfs('1')">검색</button>
        	</span>
    	</fieldset>
	</div>
	<div class="board_info">
		<div class="board_number">
        	<p>총 게시글 : <span class="red bold">8,936</span>건</p>
        </div>
	</div>
	<table class="tbl type_1 b_list">
		<caption>공지사항 게시판 입니다. 번호, 제목, 첨부파일, 등록일로 나누어져 있습니다.</caption>
		<colgroup>
        	<col style="width:64px">
	        <col style="width:auto">
	        <col style="width:155px">
	        <col style="width:96px">
	        <col style="width:96px">
	        <col style="width:70px">
    	</colgroup>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">제목</th>
				<th scope="col">첨부파일</th>
				<th scope="col">등록일</th>
			</tr>
		</thead>
	<tbody>
		<tr>
 			<td>8936</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201454" class="b_tit" onclick="scEventListener.fnView('20211201454');return false;">
				[코로나 19]
				코로나19관련 안전보건교육 조치사항[7판]
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">		
			</td>
			<td>2021.12.24</td>
		</tr>
		<tr>
			<td>8935</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201410" class="b_tit" onclick="scEventListener.fnView('20211201410');return false;">
				[BBM 공지]
				'22년 노동단체 및 노사관계 비영리법인 지원사업 공고
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.23</td>
		</tr>
		<tr>
			<td>8934</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201380" class="b_tit" onclick="scEventListener.fnView('20211201380');return false;">
				[코로나 19]
				단계적 일상회복 사회적 거리두기 지침 변경 안내
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.22</td>
		</tr>
		<tr>
			<td>8933</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201368" class="b_tit" onclick="scEventListener.fnView('20211201368');return false;">
				[BBM 공지]
				2022년 워라밸일자리 장려금 개편사항 안내
			</a></td>
			<td>
			</td>
			<td>2021.12.22</td>
		</tr>
		<tr>
			<td>8932</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201335" class="b_tit" onclick="scEventListener.fnView('20211201335');return false;">
				[BBM 공지]
				신규화학물질의 명칭 등의 공표
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.22</td>
		</tr>
		<tr>
			<td>8931</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201299" class="b_tit" onclick="scEventListener.fnView('20211201299');return false;">
				[BBM 공지]
				2022년 장애인 신규고용장려금 사업 공고
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.21</td>
		</tr>
		<tr>
			<td>8930</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201294" class="b_tit" onclick="scEventListener.fnView('20211201294');return false;">
				[BBM 공지]
				고용보험심사관 결정서 공시송달
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.21</td>
		</tr>
		<tr>
			<td>8929</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201286" class="b_tit" onclick="scEventListener.fnView('20211201286');return false;">
				[BBM 공지]
				2022년 청년친화강소기업 선정 결과
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.21</td>
		</tr>
		<tr>
			<td>8928</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201269" class="b_tit" onclick="scEventListener.fnView('20211201269');return false;">
				[BBM 공지]
				고용보험심사위원회 전문위원 대체인력(기간제 근로자) 채용 최종합격자 공고
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.20</td>
		</tr>
		<tr>
			<td>8927</td>
			<td><a href="/news/notice/noticeView.do?bbs_seq=20211201247" class="b_tit" onclick="scEventListener.fnView('20211201247');return false;">
				[BBM 공지]
				민간자격 등록폐지 
			</a></td>
			<td>
				<img src="/resources/images/btn_disk.gif" alt="첨부파일 있음">
			</td>
			<td>2021.12.20</td>
		</tr>
	</tbody>
</table>
<div class="page">    
	<span class="p_first"><a href="?pageIndex=1" onclick="fnSelectInfs(1);return false; " ></a></span>&#160;<span class="p_prev"><a href="?pageIndex=1" onclick="fnSelectInfs(1);return false; " ><img src="/resources/images/btn_prev_bg.gif" alt="이전으로"></a></span>&#160;<strong>1</strong>&#160;<a href="?pageIndex=2" onclick="fnSelectInfs(2);return false; ">2</a>&#160;<a href="?pageIndex=3" onclick="fnSelectInfs(3);return false; ">3</a>&#160;<a href="?pageIndex=4" onclick="fnSelectInfs(4);return false; ">4</a>&#160;<a href="?pageIndex=5" onclick="fnSelectInfs(5);return false; ">5</a>&#160;<a href="?pageIndex=6" onclick="fnSelectInfs(6);return false; ">6</a>&#160;<a href="?pageIndex=7" onclick="fnSelectInfs(7);return false; ">7</a>&#160;<a href="?pageIndex=8" onclick="fnSelectInfs(8);return false; ">8</a>&#160;<a href="?pageIndex=9" onclick="fnSelectInfs(9);return false; ">9</a>&#160;<a href="?pageIndex=10" onclick="fnSelectInfs(10);return false; ">10</a>&#160;<span class="p_next"><a href="?pageIndex=11" onclick="fnSelectInfs(11);return false; " ><img src="/resources/images/btn_next_bg.gif" alt="다음으로"></a></span>&#160;<span class="p_end"><a href="?pageIndex=894" onclick="fnSelectInfs(894);return false; " ></a></span>	
</div>
</form>
<ul class="contactus">
	<li>문의안내</li>
    <li>*&nbsp;게시물에&nbsp;대한&nbsp;문의는&nbsp;페이지&nbsp;상단의&nbsp;담당자&nbsp;및&nbsp;전화번호&nbsp;내용을&nbsp;참고하세요.
	<br/>*&nbsp;고객상담센터&nbsp;국번없이&nbsp;1350(전화연결장애문의:012-345-6789)&nbsp; </li>
</ul>
<%@include file="../includes/footer.jsp"%>