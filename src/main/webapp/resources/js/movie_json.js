$(function() {
	init();

	$("#detailShow").click(function() {
		let url = "	http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=";
		url += $("#txtYear").val() + $("#selMon").val() + $("#selDay").val();
		console.log(url);

		$.getJSON({
			url:url,
			success: function(data) {
				console.log(data);

				if ($(data.boxOfficeResult.dailyBoxOfficeList)=="") {
					alert("데이터가 없습니다.");
				} else {
					let resData = "";
					$(data.boxOfficeResult.dailyBoxOfficeList).each(function(idx,item) {
						resData += +item.rank+"위";
						//증감표시를 위해 변수 선언후 if문
						let rankInten = item.rankInten;
						// + - 0 증감표시를 위한 if문
						if (rankInten > 0) resData += "( △ ";
						else if (rankInten < 0) resData += "( ▼ ";
						else resData += "( ";
						resData += rankInten  + " )";
						//영화코드
						let movieCd = item.movieCd;
						
						//영화이름
						let movieNm = item.movieNm;
						
						resData += "<a href='#' onclick='javascript:show("+movieCd+")'>"+movieNm+"</a><br>";
					})
						$("#msg").html(resData); //불러온 데이터들을 표시해주는 곳
				}//else end
			} //success end
		}) // $get end
	})// button click function end
})//$function()) end

function show(movieCd){
	let url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=f5eef3421c602c6cb7ea224104795888&movieCd=";
	url+=movieCd;
	console.log(url);
	
	$.getJSON({
		
		url:url,
		success:function(data){
			console.log(data);
			let movieNm = data.movieInfoResult.movieInfo.movieNm;
			let movieNmEn = data.movieInfoResult.movieInfo.movieNmEn;
			let showTm = data.movieInfoResult.movieInfo.showTm;
			let directorNm = data.movieInfoResult.movieInfo.directors[0].peopleNmEn;
			/*let directorNm = $(data).find("director").find("peopleNmEn").text();*/
			let peopleNm = "";
			let length = data.movieInfoResult.movieInfo.actors.length;
			$(data.movieInfoResult.movieInfo.actors).each(function(idx,item){
					if(idx==length - 1){
					peopleNm += item.peopleNm;
					}else{
					peopleNm += item.peopleNm+" , ";
						
					}
			})
			
			let resData = "<ul>";
			resData += "<li>영화제목(국문) :"+movieNm+"</li>";
			resData += "<li>영화제목(영문) :"+movieNmEn+"</li>";
			resData += "<li>상영시간 :"+showTm+"분</li>";
			resData += "<li>감독 :"+directorNm+"</li>";
			resData += "<li>배우 :"+peopleNm+"</li></ul>";
			
			$(".box3").html(resData);
			
		}
		
		
	})
	
	
	
	
	
}//show() end
function init() {
	let newDate = new Date();
	let year = newDate.getFullYear();
	let month = newDate.getMonth() + 1;
	let day = newDate.getDate() - 1;

	$("#txtYear").val(year);

	if (month < 10) {
		month = "0" + month;
	}
	if (day < 10) {
		day = "0" + day;
	}
	$("#selMon").val(month);
	$("#selDay").val(day);
}