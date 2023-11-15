<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
	<head>
	
		<!-- 링크 + 라이브러리 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	    <meta charset="UTF-8">
	
		<title>늴리리</title>
		
		<style>
	
	        .wrap{
	            background-color: white;
	            color: black;
	            width: 1920px;
	            /* height: 1000px; */
	            margin: auto;
	        }
	
	        .wrap{
	            width: 1920px;
	        }
	        .wrap > div{
	            width: 100%;
	        }
	        #header{
	            /* border: 1px solid black; */
	            height: 165px;
	        }
	
	        #line{
	            height: 35px;
	            background-color: black;
	        }
	        #logo{
	            /* border:1px solid black; */
	            width: 155px;
	            height: 70px;
	            padding-top:30px ;
	            margin-left:882.5px
	            
	        }
	        #footer{
	        margin-top: 60px;
	        color: gray;
	     
	        }
	
	        #f_text{
	            padding-top: 40px;
	
	        }
	
	        .list-area{
	            border-top: 3px solid #313131;
	            text-align: center;
	            margin-bottom: 50px;
	            /* font-family: 'Nanum Gothic', sans-serif; */
	            font-family: 'Noto sans KR', sans-serif;
	            font-weight: 400;
	            color: black;
	            
	        }
			
			.list-area>tbody tr:hover{
				background-color:#DADEE8;
				cursor : pointer;
				
			}
	
	        td{
	            border-bottom: 1px solid #DDDDDD;
	            height: 46px;
	        }
	
	        th{
	            height: 54px;
	            text-align: center;
	        }
	
	
	        #title1{
	            width:150px;
	            height:100px;
	            /* border:1px solid green; */
	            float:left;
	            /* font-family: 'Nanum Gothic', sans-serif; */
	            font-family: 'Noto sans KR', sans-serif;
	            font-size: 12px;
	            color: #A12B2B;
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            margin-left: 750px;
	            margin-top: 30px;
	            padding-top: 10px;
	            font-weight: 700;
	            
	
	        }
	
	        #title2{
	            width:240px;
	            height:100px;
	            /* border:1px solid red; */
	            float:left;
	            font-size: 34px;
	            /* font-family: 'Nanum Gothic', sans-serif; */
	            font-family: 'Noto sans KR', sans-serif;
	            font-weight: 800;
	            display: flex;
	            justify-content: center;
	            align-items: center;
	            margin-top: 30px;
	        }
	
	        div{
	            /* font-family: 'Nanum Gothic', sans-serif; */
	            font-family: 'Noto sans KR', sans-serif;
	            font-weight: 400;
	        }
	
	        #write{
	            padding-left: 850px;
	        }
	
	        table{
	            width: 1000px;
	            margin-top: 150px;
	        }
	        
	        #insertBo{
	        	width: 110px; 
	        	height: 40px
	        }
	        
	        .borderNone{
        	
        	border-bottom: 0px solid #DDDDDD;
        	}
	        
	        .search-area{
        	width: 1000px;
        
        	}
        
       		.btntd{
        	width: 120px;
        	border-bottom: 0px solid #DDDDDD;
        	}
        
        
      		#searchButton{
        	width: 120px;
        	height: 39px;
        	border: 1px solid #CED4DA;
        	       
        	}
	        
	        
	        
	        
	    </style>
	</head>
	
	<body>
	
		<div class="wrap">
	        <!-- 헤더영역 -->
	        <%@ include file="/views/common/headerBar.jsp"%>
			<br>
			
			<!--top10 로고 1-->
	        <div id="title1">서울 여행 정보 공유 사이트</div>
	        
	        <!--top10 로고 2-->
	        <div id="title2">늴리리 TOP10</div>
	        
	        <!-- 게시판 검색 테이블-->
	        <div class="container" align="center">
				<div>
						<table class="search-area">
							<tr id=search>
								<td align="center" class="borderNone">
									<select class="form-control" name="searchField" id="searchField">
										<option value="title">제목</option>
										<option value="id">작성자</option>
										<option value="category">카테고리</option>
									</select>
								</td>
								<td class="borderNone">
									<input type="text" class="form-control"placeholder="검색어 입력" name="searchText" id="searchText" maxlength="100">
								</td>
								<td class="btntd">
									<button class="btn" name="searchButton" id="searchButton">검색</button>
								</td>
							</tr>
						</table>
				</div>
			</div>
			
			<!-- 게시판 리스트 테이블 -->
			<table class="list-area" id="list-area" align="center" style= "margin-top: 50px">
				<thead>
					<tr>
						<th width="50">번호</th>
						<th width="100">카테고리</th>
						<th width="400">제목</th>
						<th width="100">작성자</th>
						<th width="150">등록일</th>
						<th width="50">조회수</th>
					</tr>
				</thead>
				<tbody>
				<!-- 리스트가 비어있는 경우 -->
	                <c:choose>
	                	<c:when test="${empty list}">
						<tr>
							<td colspan='6'>게시글이 없습니다.</td>
						</tr>
						</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="b">
									<tr>
										<td>${b.boardNo}</td>
										<td>${b.boardCategory}</td>
										<td>${b.boardTitle}</td>
										<td>${b.memberId}</td>
										<td>${b.regiDate}</td>
										<td>${b.count}</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
	            </tbody>
			</table>
			
			<!-- 글작성 버튼은 로그인한 회원만 볼수 있도록 작업 -->
	        <c:if test="${not empty loginMember}">
				<div align="center" id="write">
					<a id="insertBo" class="btn btn-dark" href="${contextPath }/insert.bo">글작성</a>
				</div>
	        </c:if>
			
			
	        <!-- 페이징바 -->
	        <div align="center" class="paging-area">
				
				<!-- 이전/다음 버튼 만들기 (1페이지에서는 이전버튼 비활성화)
					마지막 페이지에서는 다음버튼 비활성화 -->
					
				<!-- 이전 -->
				<c:choose>
					<c:when test="${pi.currentPage eq 1}">
						<button disabled>이전</button>
					</c:when>
					<c:otherwise>
						<button onclick="location.href='list.bo?currentPage=${pi.currentPage-1}'">이전</button>
					</c:otherwise>
				</c:choose>
				
				<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage }">
					
					<button onclick="location.href='list.bo?currentPage=${i}'">${i}</button>
				
				</c:forEach>
				
				<!-- 다음 -->
				<c:choose>
					<c:when test="${pi.currentPage eq pi.maxPage}">
						<button disabled>다음</button>
					</c:when>
					<c:otherwise>
						<button onclick="location.href='list.bo?currentPage=${pi.currentPage+1}'">다음</button>
					</c:otherwise>
				</c:choose>
			
			</div>
			
			<!-- 푸터영역 -->
	        <div id="footer" align="center">
	            <hr>
	            <span id="f_text">
	                고객문의  |  이용약관  | 개인정보취급방침  |  사이트맵
	                <br><br>
	                서울시 영등포구 선유동 2로 57 이레빌딩 20층 E강의장  TEL 1544-9970
	                <br>
	                COPYRIGHT ⓒ  1988-2023 KH IEI ALL Right Reserved
	            </span>
	        </div>
	        </div>
	
	
	
			<!----------------------------- SCRIPT 구문 ----------------------------->
	        <script>
		        $(document).on('click', '.list-area>tbody>tr', function() {
		            // $(this).children().eq(0).text() : 글번호 추출
		            location.href = "detail.bo?bno=" + $(this).children().eq(0).text();
		        });
	
				$(document).ready(function() {
				    $("#searchButton").click(function() {
				        // 검색 조건과 검색어 값을 가져옴
				        var searchField = $("#searchField").val();
				        var searchText = $("#searchText").val();
				       
				        // AJAX 요청을 보냄
				        $.ajax({
				            type: "POST", // 또는 "GET" 요청 선택
				            url: "search.bo", // 요청을 처리할 서블릿 URL
				            data: {
				                searchField: searchField,
				                searchText: searchText
				            },
				            success: function(data) {
				            	console.log(data);
				            	if (data.length > 0) {
				            	    // 검색 결과가 있는 경우
				            	    $("#list-area tbody").empty(); // 기존 목록 비우기
				            	    // 검색 결과를 반복하면서 행을 추가
				            	    for (var i = 0; i < data.length; i++) {
				            	        var row = data[i];
				            	        var newRow = "<tr>" +
				            	            "<td>" + row.boardNo + "</td>" +
				            	            "<td>" + row.boardCategory + "</td>" +
				            	            "<td>" + row.boardTitle + "</td>" +
				            	            "<td>" + row.memberId + "</td>" +
				            	            "<td>" + row.regiDate + "</td>" +
				            	            "<td>" + row.count + "</td>" +
				            	            "</tr>";
				            	        $("#list-area tbody").append(newRow);
				            	    }
				            	} else {
				            	    alert("검색된 게시글이 없습니다.");
				            	}
				            },
				            error: function(xhr, status, error) {
				                // 에러 처리를 원하는 대로 여기에 추가
				            }
				        });
				    });
				});
			</script>
	        
	        <script>
	        	//글 클릭했을때 글번호를 detail.bo 로 전달하며 페이지 요청하기
	        	$(function(){
	        		
	        		//테이블에 tbody -> tr이 클릭되었을때 해당 글번호를 추출하여 detail.bo?bno=글번호
	        		$(".list-area>tbody>tr").click(function(){
	        			//$(this).children().eq(0).text() : 글번호 추출
	        			location.href="detail.bo?bno="+ $(this).children().eq(0).text();
	        			
	        		});
	        		
	        		
	        	});
	        </script>
	        
	</body>
</html>

