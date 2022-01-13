<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<script src="/resources/css/movieList.css"></script>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
        line-height: 1.6;
}
[class|="sect"][class*="chart"] .box-image {
    position: relative;
    width: 197px;
    min-height: 272px;
    margin-bottom: 10px;
}


div {
    display: block;
}
.like {
    display: inline-block;
    margin-right: 3px;
}
li {
    text-align: -webkit-match-parent;
}
body {
    line-height: 1.42857143;
    color: black;
}
input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}
ol, ul {
    list-style: none;
}
ol {
    list-style-type: decimal;
}

input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}
 .rank {
    display: block;
    height: 28px;
    margin-bottom: 4px;
    /* border: 6px solid #000000; */
    background: #333333;
    color: #ffffff;
    font-size: 19px;
    text-align: center;
    line-height: 28px;
}
h4 {
    display: block;
    margin-block-start: 1.33em;
    margin-block-end: 1.33em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
div[class^="sect-"]:after {
    content: '';
    clear: both;
    display: block;
}
.tit-heading-wrap > h3 {
    display: inline-block;
    position: relative;
    height: inherit;
    margin: 0;
    background-image: none;
    color: #222;
    font-weight: 500;
    font-size: 36px;
    text-align: left;
    vertical-align: middle;
}
div{
   display: block;
}
img {
    vertical-align: middle;
}
img {
    border: 0;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, font, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td {
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    word-break: break-all;
}
* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
h1, h2, h3, h4, h5, h6, a {
    font-family: 'Roboto Condensed', sans-serif;
    margin: 0;
}
h1, h2, h3, h4, h5, h6, a {
    font-family: 'Roboto Condensed', sans-serif;
    margin: 0;
}
h1, h2, h3, h4, h5, h6, a {
    color: red;
    font-family: 'Roboto Condensed', sans-serif;
    margin: 0;
}
a {
    color: #337ab7;
    text-decoration: none;
}
user agent stylesheet
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
}
#live{
   font-weight: bold;   
   color:#fb4357;
}
p, ul li, ol li {
    margin: 0;
    font-size: 14px;
}
ul li, ol li {
    font-size: 14px;
}
ul li, ol li {
    font-size: 14px;
}
ul li, ol li {
    font-size: 14px;
}
li {
    text-align: -webkit-match-parent;
}
user agent stylesheet
li {
    text-align: -webkit-match-parent;
}
ol, ul {
    list-style: none;
}
user agent stylesheet
ul {
    list-style-type: disc;
}
html, body {
    font-size: 100%;
    font-family: 'Roboto Condensed', sans-serif;
    background: #ffffff;
    margin: 0;
}
html, body {
    font-size: 100%;
    font-family: 'Roboto Condensed', sans-serif;
}
html, body {
    font-size: 100%;
    font-family: 'Roboto Condensed', sans-serif;
    background: #ffffff;
}
html, body {
    font-size: 100%;
    font-family: 'Roboto Condensed', sans-serif;
    background: #ffffff;
}
jsp, body {
    font-size: 100%;
    background: black;
}
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
    background-color: #fff;
}
input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.2;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}

input, textarea, select, button, table {
    font-size: 13px;
    line-height: 1.5;
    color: #666;
    font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
    font-weight: 400;
}

h6{
   text-align: center;
}
html {
    font-size: 10px;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
html {
    font-family: sans-serif;
    -webkit-text-size-adjust: 100%;
    -ms-text-size-adjust: 100%;
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
*:before, *:after {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
/*  img{
   width: 200px;
   height: 200px;

   
}  */

[class|="sect"][class*="chart"] > h3:first-child + ol .rank, [class|="sect"][class*="chart"] > h4:first-child + ol .rank, [class|="sect"][class*="chart"] > .spec + ol .rank {
    background: #fb4357;
}

#contaniner {
    overflow: hidden;
    position: relative;
    width: 100%;
    z-index: 7;
}
#contents {
    clear: both;
    padding-bottom: 50px;
    position: relative;
    width: 980px;
    margin: 0 auto;
}


.rank{
   display:block;
   height: 28px;
   margin-bottom: 4px;
   color: #ffffff;
   font-size: 19px;
   text-align: center;
   line-height: 28px;
   
}
.sect-sorting {
    position: relative;
    margin-top: 20px;
    text-align: right;
}
strong{
   font-weight: 500;
   
}


.clearfix  div:nth-child(-n+4) strong {
   background-color: #fb4357;
   
   border-radius: 10px;
}
.rank{
   background-color: gray;
   border-radius: 10px;
}
.tit-heading-wrap {
    position: relative;
    height: 60px;
    margin-top: 30px;
    border-bottom: 5px solid #241d1e;

    width:900px;

    width: 900px;

}
#reservation{
   border-color: #ffffff;
   font-weight: bold;
   color:white;
   background-color: red;
   
}
#detailShow{
   border-color: #ffffff;
   font-weight: bold;
   color: white;
   background-color: black;
}

</style>
</head>
<body>

<div class="bg-bricks" id="container">
   <div class="" id="contents">
      <div class="wrap-movie-chart">
         <div class="tit-heading-wrap">
            <div class="sect-sorting">
               <div class="nowshow"></div>
            </div>
            <h3 id="live">실시간 영화 순위</h3>

         </div>
         <div class="general">
            <h4 class="latest-text w3_latest_text"></h4>
            <div class="container">
               <div class="bs-example bs-example-tabs" role="tabpanel"
                  data-example-id="togglable-tabs">
                  <!-- <ul id="myTab" class="nav nav-tabs" role="tablist">
               <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"></a></li>
            </ul> -->
                  <div id="myTabContent" class="tab-content">
                     <div role="tabpanel" class="tab-pane fade active in" id="home"
                        aria-labelledby="home-tab">
                        <div class="w3_agile_featured_movies">
                           <div class="clearfix">
                              <c:forEach var="list" items="${list}">
                                 <div class="col-md-2 w3l-movie-gride-agile-list movieListBody">
                                    <strong class="rank">${list.rank}</strong>
                                    
                                    <a href="movieRead?movieCD=${list.movieCD}"
                                       class="hvr-shutter-out-horizontal"><img
                                       src="/resources/images/${list.poster}" title="album-name"
                                       class="img-responsive" alt=" " />
                                       <div class="w3l-action-icon">
                                          <i class="fa fa-play-circle" aria-hidden="true"></i>
                                       </div> </a>
                                    <div class="mid-1 agileits_w3layouts_mid_1_home">
                                       <div class="w3l-movie-text">
                                          <h6>
                                             <a href="movieRead?movieCD=${list.movieCD}">${list.movieNM}</a>
                                          </h6>
                                       </div>
                                       <div class="mid-2 agile_mid_2_home">
                                          <button type="submit" id="detailShow"
                                             onclick="location.href='movieRead?movieCD=${list.movieCD}'">상세보기</button>
                                          <button type="submit" id="reservation">예매하기</button>

                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                 </div>

                              </c:forEach>
                           </div>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   </div>
   <script>
let result = '${result}';

   






</script>
   
</body>
</html>
   <%@include file="../includes/footer.jsp"%>