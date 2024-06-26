<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	 #boardList *{ 
 		vertical-align: middle;
    } 

    #boardList th{
        background-color: rgb(48, 76, 121);
        color: white;
    }

    #boardList td{
        padding-left: 20px;
    }
	
	hr{
      width: 1000px;
    }
	
</style>
</head>
<body>
   <jsp:include page="../common/header_with_sidebar.jsp"/>
   <div class="content">
   	<div class="innerOuter">
 
   		<div class="tuitionBtn" align="center";>
   		<a class="btn btn-primary btn-lg"  href="takeOffSelect.do" roll="button" style="background-color:rgb(48, 76, 121)">휴학 내역</a>
   		   <span style="margin-left: 40px; margin-right: 40px;"></span>
   		<a class="btn btn-primary btn-lg"  href="returnSchoolSelect.do" roll="button" style="background-color:rgb(48, 76, 121)">복학 내역</a>  
    	</div>
      <br><br><br>
   	
   		<h2 style="margin-left: 290px; font-weight:900; color: rgb(75,75,75);">휴학 신청 조회</h2>
   		<hr><br>
   		
   		<form action="takeOffSelect.do">
   		<input type="hidden" name="absId" value="${ loginStudent.studentId }">
   		<table id="boardList" class="selectTuition table" style="width: 900px; margin: auto;">
   			<thead>
	   		  <tr align="center">
	   		  	<th>신청일자</th>
	   		  	<th>구분</th>
	   		  	<th>시작학기</th>
	   		  	<th>종료학기</th>
	   		  	<th>상태</th>
	   		  </tr>
	   		</thead>
	   		
	   		<tbody align="center">
	   		  <c:forEach var="ab" items="${a}">
		   		  <tr>
		   		  	<td>
		   		  		 <fmt:parseDate var="parsedDate" value="${ab.absInsert}" pattern="yyyy-MM-dd HH:mm:ss" />
	                     <fmt:formatDate value="${parsedDate}" pattern="yyyy-MM-dd" />
		   		  	</td>
		   		  	<td>
		   		  		<c:choose>
                            <c:when test="${ab.absSort eq 'a1'}">일반</c:when>
                            <c:when test="${ab.absSort eq 'a2'}">질병</c:when>
                            <c:when test="${ab.absSort eq 'a3'}">출산·육아</c:when>
                            <c:when test="${ab.absSort eq 'a4'}">군입대</c:when>
                            <c:otherwise>기타</c:otherwise>
	                    </c:choose>
		   		  	</td>
		   		  	<td>2024년도 1학기</td>
		   		  	<td>${ ab.absSemester }년도 ${ ab.absEnd }학기</td>
		   		  	<td>
		   		  		 <c:choose>
                            <c:when test="${ab.tbStatus eq 'I'}">처리중</c:when>
                            <c:when test="${ab.tbStatus eq 'Y'}">승인</c:when>
                            <c:when test="${ab.tbStatus eq 'N'}">반려</c:when>
                            <c:otherwise>오류</c:otherwise>
                        </c:choose>
		   		  	</td>
		   		  </tr>
		    </c:forEach> 
	   		</tbody>
   		  </table>
   		</form>
   		  <br>
   	</div>
      
   </div>
   <jsp:include page="../common/footer.jsp"/>
</body>
</html>